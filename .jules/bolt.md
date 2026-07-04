## 2024-05-24 - Hash lookup optimizations

**Learning:** `Hash#keys.includes?(key)` allocations an array of all keys and does O(N) lookup.
**Action:** Always prefer `Hash#has_key?(key)` in Crystal to achieve O(1) time complexity with no allocation overhead.
