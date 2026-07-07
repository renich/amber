## $(date +%Y-%m-%d) - Prevent IndexError DoS on malformed payloads
**Vulnerability:** Denial of Service (DoS) via `IndexError` unhandled exceptions when processing short arrays or strings lacking expected delimiters.
**Learning:** Crystal's `Array#[]` and tuple unpacking (e.g., `data, digest = string.split("--")`) will throw an `IndexError` instead of gracefully returning `nil` when accessed out of bounds or when the array is shorter than the unpacked variables.
**Prevention:** Always check bounds (e.g., `size >= minimum`) and array lengths (e.g., `string.includes?(delimiter)`) before slicing or unpacking variable lengths, or explicitly rescue `IndexError`.
