## 2023-10-27 - [Missing Security Headers]
**Vulnerability:** Amber applications were lacking basic security headers like X-Frame-Options, X-XSS-Protection, and X-Content-Type-Options by default.
**Learning:** Default configurations in frameworks often prioritize ease of use over strict security, requiring explicit opt-in for security headers.
**Prevention:** Introduce a middleware (pipe) to enforce basic security headers out-of-the-box for newly generated applications.
