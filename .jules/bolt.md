## 2024-06-09 - [Optimize enum serialization via asNameMap]
**Learning:** Using `enum.toString().split(.).last` for enum serialization/deserialization creates unnecessary string allocations and list generation, increasing GC pressure.
**Action:** Replace `enum.toString().split(.).last` with `enum.name` for serialization and `Enum.values.asNameMap()[value]` for O(1) deserialization to eliminate runtime string manipulation overhead and O(n) traversals.
