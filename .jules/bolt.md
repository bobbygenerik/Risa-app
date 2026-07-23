## 2026-07-23 - [Enum Serialization Performance]
**Learning:** Using `enum.toString().split('.').last` for serialization/deserialization creates unnecessary string allocations and list generation, causing performance overhead. We should use `enum.name` instead which is much faster and avoids memory pressure.
**Action:** Always use `.name` for enums instead of `.toString().split('.').last`.
