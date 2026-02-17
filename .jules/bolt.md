## 2024-05-22 - Memory Optimization in Image Lists
**Learning:** `ResizeImage` or `memCacheWidth` must be explicitly used and *returned* to be effective. In `LogoImageCache`, the code created a `ResizeImage` provider but returned the original full-res provider, negating the memory benefit on the first load. Also, failing to pass `memCacheWidth` to `CachedNetworkImage` in list items leads to full-resolution decoding, causing massive memory usage.
**Action:** Always verify that `ResizeImage` wrappers are the ones actually being consumed by the widget tree. For lists displaying thumbnails, always enforce a memory cache size cap (e.g., 2-3x the display size).

## 2025-05-24 - Async Persistence Debouncing
**Learning:** High-frequency synchronous serialization (like `json.encode` on every cache set) blocks the UI thread. Using `Isolate.run` combined with a debouncing `Timer` effectively batches these operations and moves them off the main thread without complex architecture changes.
**Action:** When implementing local file caching for frequently updated services, always wrap the persistence logic in a debouncer and use `Isolate.run` for the serialization/write step.

## 2025-10-27 - Channel Logo Lazy Validation
**Learning:** Proactively validating image URLs with `http.head` (via `ImageValidationService`) in widgets used in lists (like `ChannelLogoWidget`) causes N+1 network requests, severely impacting scroll performance and server load.
**Action:** Rely on the `Image` widget's built-in error handling (`errorBuilder`) to detect broken images. Only mark the URL as invalid *after* the `Image` widget fails to load it. This removes the overhead for all valid images (the happy path).
