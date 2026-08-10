## 2026-08-10 - Enum Serialization Optimization
**Learning:** Using `enum.toString().split('.').last` causes unnecessary string allocations and list generation, which degrades performance, especially in loops.
**Action:** Always use `enum.name` for O(1) string access and zero-allocation serialization, and `.firstWhere((e) => e.name == value)` for deserialization.
