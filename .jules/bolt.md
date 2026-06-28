## 2026-06-28 - Avoid array allocation in `includes?` queries
**Learning:** Checking for keys using `Hash#keys.includes?` and checking mapped properties using `Array#map(&...).includes?` allocates an intermediate array, which affects heap memory.
**Action:** Use `Hash#has_key?` which is an O(1) hash check. For arrays, use `Array#any? { ... }` to halt early and avoid unnecessary memory allocation.