## 2024-06-19 - Avoid intermediate array allocations in Hash and Enumerable lookups
**Learning:** Checking for key existence with `Hash#keys.includes?(key)` or array element existence with `Array#map(&.field).includes?(value)` introduces an unnecessary intermediate memory allocation for the temporary array and leads to O(N) lookup.
**Action:** Always prefer `Hash#has_key?(key)` for O(1) non-allocating key lookups. For array member checks against object properties, prefer `Enumerable#any? { |item| item.field == value }` to avoid intermediate array allocations.
