## 2026-07-08 - Prevent CSRF Timing Attack Bypass
**Vulnerability:** CSRF token verification bypass using empty requests.
**Learning:** In Crystal, `Crypto::Subtle.constant_time_compare` evaluates to `true` when comparing two empty strings or zero-length byte slices. Unmasking an empty token resulted in an empty slice being compared against an empty session token slice.
**Prevention:** Explicitly assert that secrets/tokens have a `size > 0` before comparing them using `constant_time_compare`.
