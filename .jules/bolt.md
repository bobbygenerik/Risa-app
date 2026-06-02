## 2026-06-02 - Enum Name Property Optimization
**Learning:** Avoid using enum.toString().split('.').last for serializing and deserializing enums, as it causes unnecessary string allocations and list generation.
**Action:** Use the built-in enum.name property, which evaluates at compile time or is highly optimized, eliminating runtime string manipulation overhead.
