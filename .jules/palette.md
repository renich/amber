## 2026-07-03 - Added Labels to Scaffold Text and Text Area Elements
**Learning:** Default scaffold templates in Crystal's Amber framework lacked labels for basic text inputs and text areas out-of-the-box, breaking label-to-input association in forms for screen reader accessibility.
**Action:** When working on scaffolded templates in MVC frameworks, make sure explicit labels are generated and correctly associated via `label` form helpers (e.g., `label(:field_name)` or `<label for="...">`).
