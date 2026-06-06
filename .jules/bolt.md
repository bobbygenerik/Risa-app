## 2026-06-06 - XML Entity Decoding Fast-Path
**Learning:** Chaining multiple .replaceAll() operations on strings allocates unnecessary intermediate strings and slows down parsing loops significantly when the target characters do not exist.
**Action:** Add a fast-path pre-flight check (e.g., if (!input.contains('&')) return input;) to avoid unnecessary processing.
