## 2026-07-19 - Pre-compiled RegExp for SVG URL matching
**Learning:** Chained string operations like `.toLowerCase().endsWith()` or `.toLowerCase().contains()` create redundant string allocations and slow down hot paths like image widget builders.
**Action:** Use pre-compiled case-insensitive regexes instead of chained string operations for extension matching in frequently called UI code.
