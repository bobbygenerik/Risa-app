
## 2026-08-06 - Pre-compile Regex for Extension Checking
**Learning:** In hot paths like widget build methods, chained `.toLowerCase()` validations for URL extensions (e.g., `.toLowerCase().endsWith('.svg')`) create unnecessary garbage collection overhead through redundant string allocations.
**Action:** Use a single, pre-compiled `RegExp(r'\.ext(\?|$)', caseSensitive: false)` evaluated with `.hasMatch()` to avoid unnecessary object allocations and improve list scrolling performance.
