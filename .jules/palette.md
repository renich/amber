## 2024-06-19 - Explicit form labels in auth templates
**Learning:** Amber's auth scaffolding templates (ECR and Slang) for sign-in and sign-up generate forms with inputs lacking associated labels. While placeholder text is present, this causes accessibility issues for screen reader users who rely on explicit `<label>` elements to navigate and understand forms.
**Action:** When updating form templates or scaffolding, always ensure `<label for="...">` elements match the corresponding input `id`s, leveraging standard `form-label` utility classes from Bootstrap 5.
