## 2024-05-18 - Avoid `keys.includes?` on Hashes
**Learning:** Using `Hash#keys.includes?(key)` creates an intermediate array and performs an O(N) lookup.
**Action:** Always prefer `Hash#has_key?(key)` which is O(1) and avoids allocation.
