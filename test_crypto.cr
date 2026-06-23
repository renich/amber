require "crypto/subtle"

req = "foo"
sess = "bar"

if req.is_a?(String) && sess.is_a?(String) && !req.empty? && !sess.empty?
  puts Crypto::Subtle.constant_time_compare(req, sess)
end

puts Crypto::Subtle.constant_time_compare("foo", "foo")
