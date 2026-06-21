require "crypto/subtle"

class Session
  def initialize
    @data = {"csrf.token" => "sometoken"}
  end
  def delete(key)
    @data.delete(key)
    true
  end
end

class Context
  property params = {} of String => String
  property session = Session.new
  def request
    Req.new
  end
end

class Req
  def headers
    {} of String => String
  end
end

module RefreshableToken
  extend self

  def request_token(context)
    context.params["_csrf"]? || context.request.headers["X-CSRF-TOKEN"]?
  end

  def token(context) : String
    "sometoken"
  end

  def valid_token_old?(context)
    (request_token(context) == token(context)) && context.session.delete("csrf.token")
  end

  def valid_token_new?(context)
    req_token = request_token(context)
    return false unless req_token.is_a?(String) && !req_token.empty?

    ses_token = token(context)
    return false if ses_token.empty?

    Crypto::Subtle.constant_time_compare(req_token, ses_token) && context.session.delete("csrf.token")
  end
end

ctx = Context.new
ctx.params["_csrf"] = "sometoken"
puts RefreshableToken.valid_token_new?(ctx)

ctx = Context.new
puts RefreshableToken.valid_token_new?(ctx)

ctx = Context.new
ctx.params["_csrf"] = "wrong"
puts RefreshableToken.valid_token_new?(ctx)
