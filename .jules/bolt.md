## 2026-06-29 - Pre-flight Check for Chained replaceAll
**Learning:** Chained String.replaceAll() operations allocate significant memory even when the search target isn't present.
**Action:** Always add a fast-path pre-flight check (e.g. contains('&')) before chained string replacements on hot paths.
