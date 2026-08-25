## 2026-08-25 - Pre-compiled Regexes for Substring Searches
**Learning:** When checking a string against many possible substrings or extensions (like URL paths or file extensions), chaining `.contains()`, `.endsWith()`, or `.any()` creates significant overhead inside loops.
**Action:** Combine these mutually exclusive string checks into a single, pre-compiled `RegExp` with OR (`|`) operators. This evaluates strings in a single pass and avoids repeated method call overhead and intermediate string allocations.
