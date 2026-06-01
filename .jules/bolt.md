
## 2026-06-01 - Optimize Query String Stripping
**Learning:** When extracting a prefix or truncating a string at a specific character (e.g., stripping query parameters with `?`), prefer using `indexOf` combined with `substring` rather than `.split(?).first`. This prevents scanning the entire remainder of the string and allocating an unnecessary array of substrings.
**Action:** Use `indexOf` and `substring` when stripping query params or truncating strings in hot paths.
