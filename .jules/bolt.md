## 2026-07-17 - String Similarity Loop Optimization
**Learning:** In nested-loop string matching algorithms, converting strings to character lists via .split('') adds significant allocation overhead and breaks surrogate pairs. Additionally, tracking the outer loop's index usage with an array is redundant if the inner loop breaks immediately upon finding a match.
**Action:** Use .codeUnitAt() for zero-allocation character iteration, and eliminate redundant outer loop tracking arrays to improve execution time and reduce GC pressure.
