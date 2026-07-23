## 2025-02-12 - Prevent List Allocations During URL Normalization
**Learning:** Using `.split('?').first` to strip query parameters from a URL is a common Dart anti-pattern that allocates an unnecessary List of strings and parses the entire remainder of the string.
**Action:** Replace `.split('?').first` with `indexOf('?')` and `substring()` for stripping query parameters. This pattern avoids list allocations entirely and completes faster since string scanning stops at the first question mark.
