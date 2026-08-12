## 2026-08-12 - [Optimize chained replaceAll in hot paths]
**Learning:** Chaining multiple `.replaceAll()` operations creates significant memory overhead and impacts performance. Pre-compiling a regex and using `.replaceAllMapped()` with a fast-path `if (!input.contains('&')) return input;` drastically improves throughput by reducing unnecessary processing.
**Action:** Use `RegExp.replaceAllMapped` with a fast-path check for performance-critical string manipulations involving multiple possible replacements.
