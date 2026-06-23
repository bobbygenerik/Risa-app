## 2026-06-23 - Optimize RegExp Object Allocation
**Learning:** RegExp object creation in Dart is expensive when done inside frequent or tight loops.
**Action:** Always cache compiled RegExp objects (e.g., using a static Map, class constants, or top-level final variables) to avoid parsing and compiling overhead on frequently executed code paths.
