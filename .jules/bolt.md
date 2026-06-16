## $(date +%Y-%m-%d) - Array Allocation Optimization
**Learning:** In Crystal, calling `.map { ... }.join(separator)` creates an intermediate Array in memory before iterating over it to build the string. Passing the block directly to `.join(separator) { ... }` avoids this intermediate array allocation entirely.
**Action:** Always prefer `.join(separator) { |item| ... }` over `.map { |item| ... }.join(separator)` when generating strings from collections.
