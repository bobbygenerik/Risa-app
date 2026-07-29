## 2026-07-29 - EPG XML Entity Decoding Fast-path
**Learning:** Chaining multiple `.replaceAll` operations on long strings (like XML chunk processing) forces multiple passes and intermediate allocations. Additionally, recursive replacing (e.g., `&amp;lt;` -> `&lt;` -> `<`) is functionally incorrect for XML, although it worked by accident here.
**Action:** Use a single pre-compiled `RegExp` and `replaceAllMapped` combined with a fast-path check (`if (!input.contains('&')) return input;`) to speed up text parsing and fix implicit recursive replacement bugs.
