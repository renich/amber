require "crypto/subtle"

puts Crypto::Subtle.constant_time_compare("abc", "abc")
puts Crypto::Subtle.constant_time_compare("abc", "def")
puts Crypto::Subtle.constant_time_compare("", "")
