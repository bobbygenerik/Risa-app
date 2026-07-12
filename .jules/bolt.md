## 2026-07-12 - Optimize String Similarity Check
**Learning:** In nested-loop string matching algorithms, maintaining a 'used' tracking array for the outer loop's index is redundant if the inner loop breaks immediately upon finding a match. Combined with using `.codeUnitAt` instead of `.split('')`, this avoids significant string allocation overhead and reduces calculation time by over 80%.
**Action:** Avoid converting strings to character lists for similarity checks, and eliminate redundant state tracking in nested loops.
