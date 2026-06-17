## 2026-06-17 - Prevent unnecessary array allocations in lookups
**Learning:** Crystal's enumerable chaining like `.keys.includes?` or `.map(&.[:path]).includes?` allocates intermediate arrays on the heap. This causes GC pressure and turns fast O(1) hash lookups into O(N) array scans.
**Action:** Replace `.keys.includes?` with `#has_key?` and `.map(&.x).includes?` with `#any? { |e| e.x == ... }` to short-circuit and avoid unnecessary allocations.
