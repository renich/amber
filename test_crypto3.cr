require "crypto/subtle"

b1 = Bytes[1, 2, 3]
b2 = Bytes[1, 2, 3]

puts Crypto::Subtle.constant_time_compare(b1.to_s, b2.to_s)
puts Crypto::Subtle.constant_time_compare(b1, b2)
