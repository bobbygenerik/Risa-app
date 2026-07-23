## 2026-07-05 - Zero-allocation string iteration
**Learning:** In string processing, calling `.split('')` allocates unnecessary arrays and increases GC pressure. Using `.codeUnitAt(index)` allows zero-allocation integer comparisons, halving execution time in benchmarks.
**Action:** Prefer `.codeUnitAt(index)` over `.split('')` for character iteration.
