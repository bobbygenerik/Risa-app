## 2026-08-21 - [EPG Entity Decoding Optimization]
**Learning:** String replacing chained calls on huge blocks of text when 90% of strings have no matching entities is hugely computationally intensive on the main thread for XML parsing. Fast path returns skipping all string allocation checks improve string decode time dramatically on text where entities are rarely present.
**Action:** Add fast path checks before multiple chained string replaces on large data inputs.
