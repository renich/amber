## 2024-05-18 - Fix CSRF Refreshable Token Timing Attack
**Vulnerability:** The CSRF RefreshableToken compared the request token to the session token using `==`, which is susceptible to timing attacks.
**Learning:** String equality (`==`) short-circuits in Crystal, allowing an attacker to theoretically determine the expected CSRF token character-by-character based on the time it takes the comparison to return false.
**Prevention:** Always use `Crypto::Subtle.constant_time_compare` when comparing secure tokens like CSRF tokens, secrets, or password hashes to ensure the comparison time is independent of the input contents.
