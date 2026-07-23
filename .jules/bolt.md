## 2026-06-17 - [Avoid Chained String Replacements]
**Learning:** Chaining multiple `replaceAll` calls on strings (e.g., XML entity decoding) allocates new strings and causes massive overhead even when the target pattern does not exist in the string.
**Action:** Always add a fast-path pre-flight check (e.g., `if (!input.contains("&")) return input;`) before chained replacements in hot paths like parsers.
