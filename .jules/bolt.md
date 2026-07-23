## 2026-06-18 - Enum Serialization Optimization
**Learning:** Using `enum.toString().split('.').last` for serializing/deserializing enums causes unnecessary string allocations and list generation, taking ~123ms/1M ops versus ~5ms for `enum.name`.
**Action:** Use `enum.name` for enum serialization and deserialization instead of `enum.toString().split('.').last` to prevent unnecessary allocations and improve performance.
