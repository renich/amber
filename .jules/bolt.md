## 2026-06-26 - Prevented Array Allocations in Route Lookups
**Learning:** Ruby-style `map(...).includes(...)` or `keys.includes(...)` in Crystal allocates an entire array only to perform a boolean check, which can be inefficient on hot paths.
**Action:** Use `.any?` or `.has_key?` directly on collections (like arrays or hashes) to transform an O(N) operation with memory allocation into a memory-efficient and potentially faster operation.
