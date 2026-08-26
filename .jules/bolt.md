## 2026-08-26 - [Avoid Set.intersection in Hot Paths]
**Learning:** In Dart, `Set.intersection()` and `Set.union()` allocate completely new `Set` objects, causing heavy garbage collection overhead in hot paths (like nested loops during fuzzy matching). The manual intersection counting approach dropped execution time by over 90% in benchmarks.
**Action:** Manually count intersection overlap without new allocations by iterating over the smaller Set, and compute union mathematically via inclusion-exclusion.
