## 2026-07-02 - Avoid intermediate array allocations in hot paths
**Learning:** In Crystal, patterns like `map(&...).includes?(...)` and `keys.includes?(...)` generate intermediate array allocations, adding memory pressure. This is especially impactful in hot paths like `Router#match_by_request` or WebSocket message dispatching.
**Action:** Always prefer `any?` over `map.includes?` and `has_key?` over `keys.includes?` to optimize memory and CPU time, converting O(N) lookup overhead (plus allocation) to O(1) in the case of Hashes.
