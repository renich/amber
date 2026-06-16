## 2024-06-12 - Avoid Hash#keys.includes? and Array#map.includes? for checking existence
**Learning:** Checking for existence using `.keys.includes?` on a Hash or `.map.includes?` on an Array creates unnecessary intermediate arrays, adding overhead to garbage collection and reducing performance, especially in hot paths like request routing.
**Action:** Use `.has_key?` for hashes to achieve O(1) lookup without allocation, and use `.any?` for arrays to allow short-circuiting and avoid intermediate array allocation.
