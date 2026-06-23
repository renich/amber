## 2024-05-14 - Optimize array allocations
**Learning:** Crystal's Enumerable methods like `.map(&.something).includes?(val)`, `.keys.includes?(key)`, and `.map{...}.join(sep)` create intermediate Arrays in memory before performing the check/join. This can be a noticeable performance penalty (both CPU and memory/GC overhead) when used on hot paths like router lookups.
**Action:** Use memory-efficient alternatives: `.any? { |x| x.something == val }`, `.has_key?(key)`, and `.join(sep) { |x| ... }`.
