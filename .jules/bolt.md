## 2026-08-31 - Optimize EPG Title Normalization
**Learning:** Chaining multiple RegExp.replaceAll() operations on strings allocates excessive intermediate memory and incurs major regex engine overhead. Native string replace optimizations are bypassed by heavy regex chaining.
**Action:** Group regex patterns by their replacement output (e.g., ' ' vs '') and combine them using the OR (|) operator. Use a zero-allocation .codeUnitAt() loop for a fast-path preflight check to skip regex evaluations entirely on clean strings.
