## 2026-07-28 - Pre-compile SVG RegExp to avoid redundant string allocations
**Learning:** Using chained `.toLowerCase().endsWith('.svg')` and `.contains('.svg?')` creates unnecessary string allocations in hot widget build paths. Replacing it with a pre-compiled, case-insensitive `RegExp` avoids these allocations.
**Action:** Use pre-compiled regex with `(\?|$)` to correctly match extension and query params efficiently.
