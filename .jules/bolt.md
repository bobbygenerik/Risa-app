## 2026-07-11 - Optimize SVG URL validation
**Learning:** Chained string methods (`toLowerCase().endsWith()` and `contains()`) for URL extension validation cause redundant string allocations and increase GC pressure during frequent widget build cycles.
**Action:** Replace chained string operations with a single pre-compiled `RegExp` (e.g., `RegExp(r'\.svg(\?|$)', caseSensitive: false)`) to eliminate per-call allocation overhead when checking URL patterns in UI components.
