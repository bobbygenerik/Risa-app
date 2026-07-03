## 2026-07-03 - RegExp String Allocation Optimization
**Learning:** Using `toLowerCase().contains(query)` inside a tight filtering loop over large datasets (like `allChannels`) creates unnecessary O(N) string allocations per keystroke, generating significant garbage collection pressure on the UI thread.
**Action:** When filtering large lists based on dynamic user input (e.g., search queries), compile a `RegExp(RegExp.escape(query), caseSensitive: false)` outside the iteration loop instead of calling `.toLowerCase().contains(query)` on each item to prevent repeated string allocations.
