## $(date +%Y-%m-%d) - [Dart RegExp Fast-Path Anti-Pattern]
**Learning:** Dart's `String.replaceAll(RegExp)` natively optimizes for the non-matching case by skipping allocation and returning the original string. Guarding `.replaceAll()` with a `.hasMatch()` check is an anti-pattern that degrades performance because it forces the regex engine to evaluate the string twice when a match is present.
**Action:** When extracting `RegExp` to `static final` fields for performance, just call `.replaceAll()` directly on the string without pre-flight `.hasMatch()` checks.
