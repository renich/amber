## 2026-07-04 - Crystal's constant_time_compare evaluates empty string combinations as true
**Vulnerability:** CSRF timing attack vulnerability and token bypass potential
**Learning:** `Crypto::Subtle.constant_time_compare("", "")` in Crystal returns `true`, and implicit typecasting/truthiness might evaluate `nil == nil` to `true` causing token validations to pass when they shouldn't. Also `String#[]` or `Bytes#[]` throws `IndexError` causing unhandled DoS rather than quietly failing.
**Prevention:** Always check `.size > 0` before doing constant time comparison for cryptographic tokens, and explicitly validate input byte slice lengths prior to unpacking or calculating start indices to prevent out of bounds crashes.
