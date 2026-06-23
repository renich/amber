## 2024-05-24 - Missing Explicit Labels in Auth Form Scaffolds
**Learning:** Default Amber authentication templates generated forms (like sign-in and sign-up) without explicit `<label for="...">` to `<input id="...">` associations. This caused screen readers to fail to announce the purpose of form fields correctly.
**Action:** Always ensure that when creating or modifying form templates (especially scaffolded ones in ECR/Slang), explicit `<label for="...">` associations matching the input `id` attributes are added to maintain accessibility.
