## 2024-06-26 - Explicit Label-to-Input Associations in Auth Scaffolds
**Learning:** Amber's default authentication template scaffolds (ECR/Slang) generated forms without explicit label-to-input associations (`for`/`id` attributes). This causes screen readers to have difficulty interpreting form fields, particularly on registration and login screens.
**Action:** When modifying default generated templates or related scaffolding, explicitly add `<label for="...">` tags matching `<input id="...">` attributes to ensure screen reader accessibility.
