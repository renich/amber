require "crypto/subtle"

class Session < Hash(String, String | Int32)
end

class Context
  property session = Session.new
  property params = Hash(String, String).new
  property request = Request.new
end

class Request
  property headers = Hash(String, String).new
end

module Token
  HEADER_KEY    = "X-CSRF-TOKEN"
  PARAM_KEY     = "_csrf"
  CSRF_KEY      = "csrf.token"
  TOKEN_LENGTH  = 32

  def request_token(context)
    context.params[PARAM_KEY]? || context.request.headers[HEADER_KEY]?
  end

  def token(context)
    "some_token"
  end

  def valid_token?(context)
    (request_token(context) == token(context)) && context.session.delete(CSRF_KEY)
  end
end

puts "Works"
