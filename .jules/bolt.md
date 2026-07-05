## 2024-05-24 - Avoid unnecessary array allocations for lookups
**Learning:** The codebase contains patterns like `Hash#keys.includes?(key)` and `Array#map(&.field).includes?(val)` which create unnecessary intermediate arrays and degrade lookup complexity from O(1) to O(N) (for hashes) or increase memory usage significantly.
**Action:** Always prefer `Hash#has_key?(key)` and `Array#any? { |x| x.field == val }` to avoid intermediate array allocations and maintain better time complexity.
