## 2024-05-18 - Missing Length Verification with `constant_time_compare`
**Vulnerability:** Found uses of `Crypto::Subtle.constant_time_compare` comparing byte slices or strings without length verification in `CSRF` token matching and `MessageEncryptor` signatures.
**Learning:** `Crypto::Subtle.constant_time_compare` in Crystal returns `true` when given two empty strings or empty byte slices. If user input or manipulation of data results in empty byte strings, this check evaluates to `true` causing an authentication or authorization bypass.
**Prevention:** Before using `constant_time_compare` on two byte sequences, verify that both sequences have a size greater than 0, e.g. `a.size > 0 && b.size > 0 && Crypto::Subtle.constant_time_compare(a, b)`.
