## 2026-06-15 - [Cache RegExp in LiveTvFormatters]
**Learning:** Dynamic RegExp creation inside utility methods frequently called during filtering or formatting (like LiveTvFormatters) creates unnecessary allocation overhead.
**Action:** Extract RegExp definitions into static final variables to cache the compiled patterns and avoid recompilation on every call.
