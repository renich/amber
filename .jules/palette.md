## 2024-06-29 - Improve Form Accessibility in Scaffolding
**Learning:** Amber's default authentication template scaffolds (ECR/Slang) generate forms without explicit label-to-input associations, causing screen reader accessibility issues.
**Action:** When modifying scaffolding or generated templates, explicitly add `<label for="...">` tags matching `<input id="...">` attributes to ensure screen reader accessibility.
