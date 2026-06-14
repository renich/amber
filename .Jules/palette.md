## 2024-06-14 - Scaffolding Needs Accessibility
**Learning:** The scaffold templates (ECR and Slang) that generate auth views (registration, sign in, and profile edit) lack proper `<label>` elements for their inputs, which degrades accessibility since screen readers rely on labels rather than placeholder text to give context.
**Action:** Always ensure that generated templates and form scaffolding contain explicit labels associated via the `for`/`id` pattern for maximum accessibility out-of-the-box.
