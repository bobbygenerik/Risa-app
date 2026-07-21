## 2026-07-21 - Pre-compile regex for chained string replacements

**Learning:** When cleaning strings by replacing multiple targets (like XML entities), chaining multiple `.replaceAll()` calls allocates a new intermediate string for each call, causing high GC pressure in hot paths. Even if no entities are present, `.replaceAll` creates allocation overhead.
**Action:** Always combine mutually exclusive targets into a single pre-compiled `RegExp` with capturing groups and use `replaceAllMapped`. Furthermore, always insert a fast-path pre-flight check (e.g. `if (!input.contains('&')) return input;`) before regex operations to entirely skip execution on clean strings, yielding massive performance gains for common cases.
