## 2026-06-05 - String Allocation Optimization
**Learning:** Chaining multiple RegExp.replaceAll operations inside a normalization function allocates unnecessary intermediate strings and increases GC pressure.
**Action:** Combine mutually exclusive regex replacement patterns into a single pre-compiled RegExp using the OR (|) operator to significantly improve throughput during batch text processing.
