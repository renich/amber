## 2026-06-23 - Prevent CSRF Timing Attacks

**Vulnerability:** The CSRF token validation logic in `RefreshableToken.valid_token?` used standard string equality `==` to compare tokens. This opens up the application to timing attacks, allowing an attacker to determine the valid CSRF token character by character.
**Learning:** Crystal's default string equality uses early exit, which causes the check to take longer if the initial characters match. This is dangerous for comparing security tokens.
**Prevention:** Always use `Crypto::Subtle.constant_time_compare` for comparing secrets, hashes, or CSRF tokens. Ensure inputs are non-empty strings before comparison, as `.to_s` on a `nil` object becomes an empty string, which causes `constant_time_compare("", "")` to evaluate to `true` leading to auth bypasses.
