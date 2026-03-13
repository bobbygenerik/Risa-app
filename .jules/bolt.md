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
## 2026-03-12 - [Avoid Chained Iterable Operations in Hot Paths]
**Learning:** Chained operations like `.where(...).toList()` on results of `.split()` inside tight loops (like extracting keywords from channel names) generate multiple intermediate lists, iterators, and strings, increasing CPU overhead and GC pressure. Converting these to direct sequential operations (`for` loop and `if (string.length > 2)`) avoids all intermediate allocations.
**Action:** In frequently executed parsing or processing loops, favor manual `for` loops and direct conditional checks over elegant but costly functional iterable chains.

## 2026-03-24 - [Avoid Chained Iterable Operations in Dialogs]
**Learning:** In the `ChannelSelectionDialog`, `channelProvider.channels` was filtered using two separate `.where(...).toList()` blocks in sequence. The first creates an intermediate list of channels matching the category, and the second filters that intermediate list by a search query to create a final list. This pattern scales poorly as channels grow to 10k+, creating short-lived arrays and nested iterators per keystroke.
**Action:** Used a single O(n) manual loop to evaluate both conditions (`category` and `searchQuery`) simultaneously. `toLowerCase()` is computed once for the search query before the loop instead of being applied per channel, avoiding massive string allocations.
