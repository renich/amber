## 2024-05-15 - Prevent Timing Attack in CSRF Token Verification
**Vulnerability:** The CSRF token validation in `RefreshableToken` used `==` for comparison, which performs an early-exit on mismatch, exposing the system to a timing attack where an attacker could deduce the CSRF token character by character.
**Learning:** Security tokens, including CSRF tokens and HMAC signatures, must be verified in constant time to prevent leaking information through response times.
**Prevention:** Always use `Crypto::Subtle.constant_time_compare` for comparing secrets, hashes, or security tokens to ensure comparisons take a constant amount of time regardless of how much of the string matches.
