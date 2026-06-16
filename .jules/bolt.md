## 2024-05-18 - Route Matching Allocation

**Learning:** Route registration and matching in Amber converts HTTP verbs (`verb.to_s.downcase`) to lower case using `String#downcase`. This allocates a new string on each match for every incoming HTTP request because HTTP requests use uppercase verbs (like "GET").

**Action:** Upcasing the HTTP verb in the radix tree (to match the incoming HTTP request naturally without allocation) doesn't solve string interpolation allocation (`"#{verb.upcase}..."`). The `HTTP::Request#method` is usually an upcase string. Changing `route.verb` downcasing to upcasing in `Amber::Route#trail` and `Amber::Router#build_node` results in slightly better string interpolation performance since it avoids `downcase` on already uppercase strings.
