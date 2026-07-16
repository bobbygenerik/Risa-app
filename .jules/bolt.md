## 2026-07-16 - [Optimize String Similarity]
**Learning:** Using `.split('')` to iterate characters allocates unnecessary lists and strings. Additionally, in nested loop matching algorithms that break early, maintaining an outer loop 'used' array is redundant because the outer index naturally advances.
**Action:** Use `.codeUnitAt(index)` and `.length` for zero-allocation character comparisons, and eliminate redundant state arrays in early-break loops.
