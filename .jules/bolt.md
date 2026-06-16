## 2026-06-16 - Optimize SVG URL detection
**Learning:** For extension checking in URLs, chaining `toLowerCase()` string methods creates redundant string allocations.
**Action:** Replace chained string methods with a single, pre-compiled `RegExp(r'\.svg(\?|$)', caseSensitive: false)` to avoid allocations in frequently called methods like widget builders.
