## 2026-08-24 - [Lazy Match Slicing]
**Learning:** When implementing custom pattern matching (like `_SimpleMatch`), eagerly passing `string.substring(...)` in the constructor allocates intermediate strings even if the match group isn't immediately used.
**Action:** Lazily evaluate the string slice only when `group()` is accessed to save allocations and reduce GC overhead.
