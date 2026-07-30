## 2026-07-30 - Zero-Allocation Set Operations
**Learning:** In Dart, calling `.intersection()` and `.union()` on Sets allocates entirely new Set objects, causing heavy GC pressure and slowdowns (5-6x slower) in hot paths like fuzzy matching loops.
**Action:** For simple size/ratio calculations, manually count intersection overlap by iterating over the smaller Set and check for existence in the larger Set, then use inclusion-exclusion logic (`|A| + |B| - |A ∩ B|`) to calculate union size without any new allocations.
