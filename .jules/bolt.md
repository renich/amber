## 2026-07-03 - Optimize CORS Request Header Validation
**Learning:** `String#downcase` combined with `split(',')` allocates new intermediate strings and arrays for every iteration loop. In hot paths like CORS middleware `valid_headers?`, this leads to unnecessary Garbage Collection (GC) overhead.
**Action:** Lift static conversions out of iteration loops and replace `.downcase` allocations with `compare(..., case_insensitive: true) == 0` for zero-allocation case-insensitive string checks.
