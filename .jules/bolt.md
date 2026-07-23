## 2026-06-12 - [Enum Serialization Overhead]
**Learning:** Using `enum.toString().split('.').last` for serialization and deserialization causes significant unnecessary string allocations and list generation overhead. Dart benchmark shows `.name` and `.firstWhere((e) => e.name == ...)` is ~10x faster.
**Action:** Use `enum.name` for serialization and `Enum.values.firstWhere((e) => e.name == jsonValue)` for deserialization to eliminate O(n) runtime string manipulation overhead.
