## 2026-07-20 - Fast Path String Replacement
**Learning:** In Dart, calling `.replaceAll` always incurs allocation overhead even if no replacements are made. Additionally, inline `RegExp` compiling inside loops creates significant GC pressure.
**Action:** Pre-compile `RegExp` as static finals, and always use a fast path (`hasMatch`) to skip string replacements entirely when the target characters do not exist.
