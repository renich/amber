require "crypto/subtle"

def check(req, ses)
  req.is_a?(String) && !req.empty? &&
  ses.is_a?(String) && !ses.empty? &&
  Crypto::Subtle.constant_time_compare(req, ses)
end

puts check("abc", "abc")
puts check("", "")
puts check(nil, "abc")
