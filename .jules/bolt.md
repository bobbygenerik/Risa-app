## 2026-06-19 - Optimize array slicing
**Learning:** In Dart, chaining `.skip().take().toList()` creates lazy iterables that allocate unnecessary objects when evaluated, making it noticeably slower (e.g., ~5x slower in benchmarks) than direct array operations.
**Action:** Always prefer `List.sublist(start, end)` over iterable chains for array slicing, especially in loops processing multiple elements.
