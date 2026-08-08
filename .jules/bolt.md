## 2026-08-08 - Optimize Enum Serialization/Deserialization
**Learning:** Using `enum.toString().split('.').last` for serialization and repeated list generation inside loops causes unnecessary string allocations and significant GC overhead.
**Action:** Use `enum.name` for serialization, and use `.firstWhere((e) => e.name == value)` for deserialization to dramatically improve execution time and reduce memory pressure.
