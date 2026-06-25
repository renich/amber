## 2026-06-25 - Authentication Scaffold Missing Labels
**Learning:** Amber's default authentication template scaffolds (ECR/Slang) generated forms without explicit label-to-input associations, creating a recurring accessibility barrier.
**Action:** Always add explicit `<label for="...">` tags matching `<input id="...">` attributes when modifying or creating forms to ensure screen reader accessibility.
