
## 2026-08-29 - [String Similarity Matching Optimization]
**Learning:** In nested-loop string matching algorithms, maintaining a 'used' tracking array for the outer loop's index (e.g., `aUsed[i] = true`) is redundant if the inner loop breaks immediately upon finding a match. The outer loop inherently advances. Additionally, using `split('')` allocates arrays of string characters, while `codeUnitAt()` avoids allocation entirely.
**Action:** When implementing custom string matching, iterate over `codeUnitAt()` directly and eliminate outer loop 'used' tracking arrays if an inner `break` is present.
