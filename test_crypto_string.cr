require "crypto/subtle"

def check(req_token, sess_token)
  if req_token.is_a?(String) && sess_token.is_a?(String) && !req_token.empty? && !sess_token.empty?
    Crypto::Subtle.constant_time_compare(req_token, sess_token)
  else
    false
  end
end

puts check("foo", "foo")
puts check("", "")
puts check(nil, "foo")
