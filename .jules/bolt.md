## 2024-03-24 - Avoid Intermediate Collection Allocations in Lookups
**Learning:** In Crystal, methods like `Hash#keys.includes?(key)` and `Array#map(&...).includes?(...)` allocate intermediate arrays before performing the lookup, causing unnecessary heap allocations and decreasing performance. `Hash#keys.includes?` does O(N) lookup instead of O(1).
**Action:** Use `Hash#has_key?(key)` to perform an O(1) key check without allocation, and `Array#any? { |item| ... }` to iterate and check conditions lazily without intermediate array allocations.
