## 2026-07-24 - Optimize XML Entity Decoding
**Learning:** Chaining multiple `.replaceAll()` operations for string replacement creates significant overhead and GC pressure in hot paths (like XML parsing).
**Action:** Use a single pre-compiled `RegExp.replaceAllMapped` or pre-compiled Regex with OR statements, and always include a fast-path pre-flight check (e.g., `if (!input.contains('&')) return input;`) to bypass unnecessary processing.
