## 2024-06-18 - Improve Auth Scaffold Form Accessibility
**Learning:** The default authentication scaffolds for ECR and Slang in Amber generate login and registration forms using raw HTML/Slang `<input>` tags inside standard Bootstrap `<div class="form-group">` wrappers, but they completely lack `<label>` associations. This makes the generated boilerplate severely unfriendly to screen readers.
**Action:** When working on Amber scaffolds, explicitly add `<label class="form-label" for="...">` tags and matching `id="..."` attributes to form elements, adhering to Bootstrap 5 standards.
