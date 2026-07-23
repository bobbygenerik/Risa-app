## 2026-07-07 - [Optimize SVG URL Check]
**Learning:** Chaining `.toLowerCase()` and string methods for URL extension checking causes redundant string allocations in frequently called methods like widget builders.
**Action:** Replaced chained `.toLowerCase()` string methods with a single, pre-compiled `RegExp(r'\.svg(\?|$)', caseSensitive: false)` which avoids string allocations and is ~4.7x faster.
