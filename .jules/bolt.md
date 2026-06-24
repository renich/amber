## 2026-06-24 - O(N) Hash Keys Array Allocation
**Learning:** Checking if a hash has a key by calling `keys.includes?` creates a completely new array of keys and does an O(N) lookup. In Crystal, use `has_key?` which is an O(1) direct lookup without array allocations.
**Action:** Always prefer `Hash#has_key?(key)` over `Hash#keys.includes?(key)`.
