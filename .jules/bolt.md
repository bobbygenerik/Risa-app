## 2026-08-16 - [Enum Serialization Overhead]
**Learning:** Using `enum.toString().split('.').last` for serialization/deserialization creates unnecessary string allocations and list generation, causing ~20x overhead.
**Action:** Always use the built-in `enum.name` for serialization and `enum.name` for deserialization matching.
