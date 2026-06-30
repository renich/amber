## 2024-05-23 - Avoid intermediate allocations for hash and array checks
**Learning:** Checking existence in a Hash using `.keys.includes?(key)` or an Array of Hashes/Tuples using `.map(&.[:key]).includes?(val)` causes unnecessary O(N) intermediate array allocations and degrades time complexity from O(1) to O(N) for Hash lookups.
**Action:** Always prefer `Hash#has_key?(key)` for Hash lookups and `Array#any? { |item| item[:key] == val }` for Array existence checks.
