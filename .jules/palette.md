## 2024-05-18 - [Add Form Labels to Generated Templates]
**Learning:** Generated forms (both auth and scaffold templates) often lacked `<label>` attributes for inputs, relying solely on placeholders. This creates accessibility issues as screen readers need explicit labels to announce inputs properly, and clicking a label doesn't focus the input.
**Action:** Always ensure that generated view templates output valid, accessible HTML forms by explicitly linking `<label for="id">` to `<input id="id">` or using the framework's label helpers.
