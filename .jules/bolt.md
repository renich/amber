## 2026-06-20 - Avoid unnecessary array allocations in collection lookups
**Learning:** In Crystal, `Hash#keys.includes?` creates an intermediate array and performs an O(N) lookup. Similarly, `Array#map(&...).includes?` allocates an array just to perform a lookup.
**Action:** Always prefer `Hash#has_key?` for O(1) lookups on hashes and `Array#any? { ... }` for collections to avoid allocations and enable short-circuiting.
