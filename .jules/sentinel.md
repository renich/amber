## 2024-05-24 - [Missing Default Security Headers]
**Vulnerability:** Newly generated Amber framework apps omit foundational HTTP security headers (e.g., XSS Protection, Content-Type Options).
**Learning:** The pipeline configuration in `routes.cr.ecr` lacked a dedicated middleware pipe to enforce baseline security headers for web routes.
**Prevention:** Always include a SecureHeaders middleware in the default web pipeline to ensure a defense-in-depth posture out of the box.
