## 2024-06-16 - Add SameSite=Lax default to all cookies
**Vulnerability:** Cookies lacked the `SameSite` attribute by default
**Learning:** `SameSite=Lax` is the modern default for mitigating CSRF, but older frameworks and languages might not set it by default, leaving apps vulnerable in older browsers or if browsers change behavior back.
**Prevention:** Always ensure cookie stores default to `SameSite=Lax` or `Strict` and explicitly set it during initialization rather than relying on browser defaults.
