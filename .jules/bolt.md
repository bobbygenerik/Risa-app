## 2026-08-23 - Optimize String Similarity
**Learning:** In nested-loop string matching algorithms, converting strings to lists via `.split('')` causes heavy GC pressure. Furthermore, maintaining a 'used' tracking array for the outer loop's index is redundant if the inner loop `break`s immediately upon finding a match.
**Action:** Use `.codeUnitAt(index)` to iterate characters without allocating a list, and eliminate the outer tracking array in single-match nested loops to save memory and execution time.
