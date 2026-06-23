require "crypto/subtle"

def valid_token?(req_token, sess_token)
  valid = if req_token.is_a?(String) && sess_token.is_a?(String) && !req_token.empty? && !sess_token.empty?
            Crypto::Subtle.constant_time_compare(req_token, sess_token)
          else
            false
          end
  valid
end

puts valid_token?("foo", "foo")
puts valid_token?("foo", "bar")
puts valid_token?(nil, "bar")
puts valid_token?("", "")
