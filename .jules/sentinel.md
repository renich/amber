## 2026-06-29 - Fixed CSRF timing attack and MessageVerifier unhandled exception
**Vulnerability:** CSRF token verification used standard `==` which is vulnerable to timing attacks. MessageVerifier didn't handle missing delimiters in `split("--")` causing Unhandled `IndexError` exception.
**Learning:** Crystal's standard string equality is vulnerable to timing attacks; array unpacking throws exception when too few elements instead of assigning nil.
**Prevention:** Always use `Crypto::Subtle.constant_time_compare` with non-empty string checks for tokens, and check array length before assigning unpacked elements.
