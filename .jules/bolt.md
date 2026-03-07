## 2025-05-22 - [RegExp Recompilation in Hot Loops]
**Learning:** Recreating `RegExp` objects inside frequently called functions (like channel ID generation for thousands of items) significantly impacts performance.
**Action:** Always define `RegExp` as `static final` top-level variables or class constants when used in loops or hot paths. Moving `RegExp(r'\s+')` out of `stableChannelId` resulted in a ~40% speedup.

## 2023-11-20 - [RegExp Allocation Overhead]
**Learning:** `RegExp` object creation in Dart is surprisingly expensive when done inside frequent or tight loops. `ProgramClassifier._containsKeywords` was instantiating identical `RegExp` objects per keyword string for every program evaluated, causing severe UI blocking when handling large datasets.
**Action:** Always cache compiled `RegExp` objects, especially in stateless utility classes, to avoid parsing and compiling overhead on frequently executed code paths.

## 2025-01-22 - Avoid .reduce() with function references or closures in hot paths
**Learning:** In Dart, using `.reduce()` with standard functions like `math.max` or simple closures like `(a, b) => a + b` incurs a surprising amount of overhead compared to traditional `for` loops. In benchmarking, a manual loop for finding a maximum value or calculating a sum was found to be 2-5x faster and avoids allocations and function call overhead.
**Action:** When computing aggregates (like max, min, sum) over collections in performance-sensitive areas (such as isolate-based computer vision routines or frequent property accesses), prefer using a standard `for` loop over `.reduce()`.
