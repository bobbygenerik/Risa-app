## 2024-05-24 - [M3UParser Object Allocation Optimization]
**Learning:** Instantiating classes like `_SimpleMatch` inside frequently executed loops (such as M3U parsing) and eagerly allocating substrings for object properties adds unnecessary overhead to parsing logic.
**Action:** When implementing custom matching objects to replace regular expressions on hot paths, delay object creation or lazy-evaluate string slicing (e.g. `_match ??= input.substring(start, end)`) to avoid wasteful GC and string allocations, especially when the resulting string is only sometimes used.
