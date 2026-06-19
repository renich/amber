## 2026-06-19 - Avoid Array Allocations on Inclusion Checks
**Learning:** Checking for inclusion in an object structure (like hashes and arrays) can accidentally trigger expensive intermediate array allocations if methods like `.keys.includes?` or `.map(...).includes?` are used in Crystal.
**Action:** Use `.has_key?` directly on Hashes to achieve O(1) checks without allocation, and use `.any? { |x| ... }` on Arrays to traverse them without mapping an intermediate array.
