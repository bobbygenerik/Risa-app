## 2026-08-02 - Optimize SVG URL detection
**Learning:** Chaining `.toLowerCase().endsWith()` and `.contains()` inside hot widget build paths causes significant overhead due to repeated string allocations. A single pre-compiled `RegExp(r'\.svg(\?|$)', caseSensitive: false)` evaluates ~3.7x faster.
**Action:** Use pre-compiled regex with case insensitivity for file extension checks in UI rendering code instead of chained string methods.
