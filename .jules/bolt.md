## 2026-05-30 - Pre-compile RegExp in Hot Paths
**Learning:** RegExp object creation in Dart is expensive when done inline inside frequent or tight loops (e.g., UI formatting). A benchmark showed inline RegExp took 233ms vs 138ms for pre-compiled RegExp.
**Action:** Always cache compiled RegExp objects (e.g., using static final variables) to avoid parsing and compiling overhead on frequently executed code paths.
