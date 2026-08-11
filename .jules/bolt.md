
## 2026-08-11 - Lazy Substring Allocation in custom matcher
**Learning:** Eagerly allocating matched substrings during custom pattern matching object instantiation (like `_SimpleMatch`) creates unnecessary overhead.
**Action:** Store the input string and start/end indices, and lazily slice the string only when the match group is accessed to reduce allocations.
