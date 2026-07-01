## 2026-07-01 - Avoid intermediate array allocations in hot paths with `.map.includes?`
**Learning:** Checking for presence in a collection by mapping it to a new array and checking `includes?` (e.g., `@socket_routes.map(&.[:path]).includes?(request.path)`) allocates a new array on every call, which creates memory pressure and O(N) allocations in hot paths like request routing.
**Action:** Use `.any?` with a block (e.g., `@socket_routes.any? { |r| r[:path] == request.path }`) to achieve the same O(N) time complexity lookup with O(1) memory and zero allocations.
