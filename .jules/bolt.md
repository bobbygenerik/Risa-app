## 2026-07-15 - Lazy String Allocation in Custom Matchers
**Learning:** When creating custom pattern matching classes (like `_SimpleMatch`), eagerly allocating matched substrings during object instantiation creates unnecessary GC pressure and CPU overhead.
**Action:** Store the input string and the start/end indices, and lazily slice the string only when the match group is accessed to reduce allocations.
