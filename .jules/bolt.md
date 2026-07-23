
## 2024-05-18 - Optimized Enum Serialization in Models
**Learning:** Legacy string splitting on enums (`enum.toString().split('.').last`) is O(n) during deserialization (due to `values.firstWhere`) and allocates unnecessary strings during serialization.
**Action:** Always use Dart 2.15+ built-ins: `enum.name` for O(1) serialization without string manipulation, and `Enum.values.asNameMap()[string]` for O(1) deserialization. This significantly reduces garbage collection pressure when parsing large JSON datasets (like cross-playlist mappings or provider configs).
