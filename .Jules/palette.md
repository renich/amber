## 2026-06-17 - Added explicit form labels to auth scaffolding
**Learning:** By default, Amber's authentication template scaffolds generate HTML forms for sign in/sign up/profile edit without explicitly associating form fields with labels. This prevents screen readers from correctly announcing form inputs to users.
**Action:** When working on form scaffolding in this framework, explicitly add standard `<label class="form-label" for="...">` tags and match their `for` attributes with the corresponding `<input id="...">` attributes to ensure screen reader compatibility.
