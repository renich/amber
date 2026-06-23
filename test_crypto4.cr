require "crypto/subtle"

def valid_refreshable(req, sess)
  if req.is_a?(String) && sess.is_a?(String) && !req.empty? && !sess.empty?
    Crypto::Subtle.constant_time_compare(req, sess)
  else
    false
  end
end

puts valid_refreshable("token", "token")
puts valid_refreshable("token", "diff")
puts valid_refreshable(nil, "token")
