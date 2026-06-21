require "crypto/subtle"

module RefreshableToken
  def valid_token?(request_token, session_token)
    request_token == session_token
  end
end

puts RefreshableToken.valid_token?("", "")
