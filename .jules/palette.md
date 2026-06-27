## 2024-06-12 - Explicit Form Labels for Accessibility in Scaffolds
**Learning:** Default authentication template scaffolds (ECR/Slang) previously generated forms without explicit label-to-input associations, making them inaccessible to screen readers.
**Action:** Always verify and explicitly add `<label for="...">` tags matching `<input id="...">` attributes when modifying forms or related scaffolding to ensure screen reader accessibility.
