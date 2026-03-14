## 2025-05-22 - [RegExp Recompilation in Hot Loops]
**Learning:** Recreating `RegExp` objects inside frequently called functions (like channel ID generation for thousands of items) significantly impacts performance.
**Action:** Always define `RegExp` as `static final` top-level variables or class constants when used in loops or hot paths. Moving `RegExp(r'\s+')` out of `stableChannelId` resulted in a ~40% speedup.

## 2023-11-20 - [RegExp Allocation Overhead]
**Learning:** `RegExp` object creation in Dart is surprisingly expensive when done inside frequent or tight loops. `ProgramClassifier._containsKeywords` was instantiating identical `RegExp` objects per keyword string for every program evaluated, causing severe UI blocking when handling large datasets.
**Action:** Always cache compiled `RegExp` objects, especially in stateless utility classes, to avoid parsing and compiling overhead on frequently executed code paths.

## 2025-01-22 - Avoid .reduce() with function references or closures in hot paths
**Learning:** In Dart, using `.reduce()` with standard functions like `math.max` or simple closures like `(a, b) => a + b` incurs a surprising amount of overhead compared to traditional `for` loops. In benchmarking, a manual loop for finding a maximum value or calculating a sum was found to be 2-5x faster and avoids allocations and function call overhead.
**Action:** When computing aggregates (like max, min, sum) over collections in performance-sensitive areas (such as isolate-based computer vision routines or frequent property accesses), prefer using a standard `for` loop over `.reduce()`.

## 2025-10-24 - Avoid chained iterable operations in hot paths
**Learning:** Chained operations like `<String?>[...].where(...).map(...).join(' ')` inside tight loops (like checking 10k channels) generate multiple intermediate lists, iterators, and strings, drastically increasing CPU overhead and GC pressure. Converting these to direct sequential operations (`if (channel.name != null) ...`) with manual `for` loops avoids all allocations and was measured to be ~40% faster.
**Action:** In frequently executed classification or parsing loops, favor manual index-based loops and sequential null-checks over elegant but costly functional iterable chains (`map`, `where`, `join`).

## 2025-05-23 - [Intermediate Iterable Allocations in Hot Paths]
**Learning:** Chained operations like `.where(...).map(...).toList()`, `.where(...).length`, or uses of `.fold(...)` create multiple intermediate `Iterable` instances, closures, and invoke function calls repeatedly. In frequent UI paths (like filtering EPG mappings) or utility metrics (like cache sizing), this induces measurable overhead and GC pressure.
**Action:** Replace functional array methods (`where`, `map`, `fold`) with manual `for` loops in hot, frequently-rebuilt UI paths and loops. A manual `for` loop with local variables avoids intermediate instantiations and function closure overhead entirely.
