## 2026-06-18 - Avoid `.keys.includes?` for Hash Lookups
**Learning:** Checking for key existence with `.keys.includes?(key)` allocates an array of keys and incurs $O(N)$ lookup time in Crystal.
**Action:** Always prefer `.has_key?(key)` which runs in $O(1)$ and skips intermediate allocations.
