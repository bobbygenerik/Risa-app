## 2026-08-13 - Optimize Enum Serialization
**Learning:** Using `enum.toString().split('.').last` for serializing and deserializing enums causes unnecessary string allocations and list generation, degrading performance in high-throughput data processing paths.
**Action:** Always use the natively supported `enum.name` property for O(1) string representation of enums.
