
## 2026-07-10 - Redundant Tracking Arrays in Nested Loops
**Learning:** In string matching algorithms that compare character by character, maintaining a boolean tracking array for the outer loop's string (e.g., `aUsed[i] = true`) is logically redundant if the inner loop immediately `break`s after finding a match. The `i` index advances automatically, so that position can never be evaluated again anyway.
**Action:** Always verify the necessity of array tracking in nested loops. If a single match triggers a `break`, one of the tracking arrays is likely unnecessary and can be removed to save memory allocations.
