
## 2024-05-18 - Prevent Timing Attacks in CSRF RefreshableToken
**Vulnerability:** CSRF token verification in `RefreshableToken#valid_token?` was vulnerable to timing attacks due to the use of a standard equality operator (`==`) when comparing tokens.
**Learning:** Comparing sensitive tokens (like CSRF) using `==` operators is a security risk as the execution time depends on how many characters match, leaking the string's length and character variations to an attacker.
**Prevention:** Always use `Crypto::Subtle.constant_time_compare(req_token.to_s, token.to_s)` instead of standard equality operators to compare security tokens, hashes, and secrets to prevent timing attacks.
