## 2024-05-24 - Accessibility in Scaffolding Templates
**Learning:** Amber's default scaffolding templates for authentication and models generated inputs without explicit label-to-input associations.
**Action:** Always explicitly add `<label for="...">` tags matching `<input id="...">` attributes in view templates, or use framework helpers like `label(:field)` to ensure proper accessibility in generated code.
