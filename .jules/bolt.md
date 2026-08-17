## 2026-08-17 - Optimize Enum Serialization
**Learning:** In Dart, using `enum.toString().split('.').last` for serialization and deserialization causes unnecessary string allocations and list generation, leading to performance degradation in high-volume serialization operations.
**Action:** Always use the native `enum.name` property instead, which is significantly faster and avoids intermediate string allocations.
