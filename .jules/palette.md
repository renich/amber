## 2024-05-18 - Missing label-to-input association in Auth templates
**Learning:** Default authentication template scaffolds (ECR/Slang) generate forms without explicit label-to-input associations. This makes inputs inaccessible to screen readers because they cannot announce the input's purpose.
**Action:** When modifying them or related scaffolding, explicitly add `<label for="...">` tags matching `<input id="...">` attributes to ensure screen reader accessibility.
