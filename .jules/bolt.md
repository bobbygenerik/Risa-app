## 2026-06-10 - [Replace Chained Iterables with sublist]
**Learning:** Using chained lazy iterables like `.skip().take().toList()` for list slicing creates unnecessary allocation overhead in Dart. For simple array slice operations, prefer the native `List.sublist(start, end)` for O(1) underlying array slicing.
**Action:** Use `List.sublist` whenever directly paginating or segmenting pre-allocated Dart lists to reduce execution time and GC pressure.
