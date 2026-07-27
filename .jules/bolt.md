## 2026-07-27 - Combine regex string replacements
**Learning:** Chaining multiple `.replaceAll()` with different Regular Expressions creates significant overhead. In hot paths (like EPG parsing/normalization), combine mutually exclusive or similar regex patterns into a single `RegExp` using the OR (`|`) operator to evaluate strings in fewer passes.
**Action:** Always combine regexes for sequential string replacements where applicable to minimize allocations and string scanning overhead.
