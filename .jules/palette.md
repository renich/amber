## 2026-07-07 - Add Labels to Form Generator Templates
**Learning:** Framework generators often generate bare inputs without associated `<label>` tags, creating a widespread accessibility issue for all newly generated applications.
**Action:** When updating template generators, explicitly associate `<label>` tags with inputs using `for` and `id` attributes, or utilize the framework's label helpers (`label(:field)`) to ensure all generated UI is accessible by default.
