## 2024-05-15 - Missing token string validation for constant_time_compare
**Vulnerability:** Empty tokens could evaluate to `true` when using `Crypto::Subtle.constant_time_compare("", "")`.
**Learning:** `Crypto::Subtle.constant_time_compare` considers empty arrays/strings identical and returns `true`, which can bypass authentication checks if `.to_s` on nil values evaluates to `""`.
**Prevention:** Ensure tokens are strictly non-empty strings and validate types before performing constant time comparisons.
