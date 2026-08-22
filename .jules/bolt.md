## 2026-08-22 - [String Matching Overhead]
**Learning:** Converting strings to character lists via `.split('')` and maintaining parallel tracking arrays in nested loops causes significant GC overhead in hot paths. Also, an outer-loop tracking array is completely redundant if the inner loop breaks immediately on match.
**Action:** Replace `.split('')` with `.codeUnitAt(index)` for zero-allocation integer comparisons, and eliminate the outer tracking array.
