## 2026-07-31 - Optimize string replacements in Dart
**Learning:** Chaining multiple .replaceAll() calls for string processing (like XML entity decoding) creates significant memory allocation overhead. Using RegExp.replaceAllMapped with a fast-path check avoids unnecessary string allocations and is much faster in hot loops.
**Action:** Combine mutually exclusive replacement patterns into a single RegExp and always include a fast-path check (e.g. input.contains('&')) before executing replacements.
