
## 2026-08-20 - Pre-compiled RegExp for SVG Checking
**Learning:** Checking file extensions or URL structures inside Flutter `build` methods using chained string operations like `.toLowerCase().endsWith('.svg')` is an anti-pattern. `toLowerCase()` allocates a new string in memory on every call. In list views (like channel guides), this causes significant redundant garbage collection, leading to frame drops.
**Action:** Always replace chained string checks in hot paths (like `build` methods) with a single, pre-compiled `static final RegExp` (e.g., `RegExp(r'\.svg(\?|$)', caseSensitive: false)`).
