// Placeholder/stub types for any downstream code expecting extra symbols.
// Add minimal helpers here if more APIs are needed by the app.

/// Non-functional stub for `PlatformFile` used by some apps.
class PlatformFile {
  final String? name;
  final String? path;
  final int? size;

  PlatformFile({this.name, this.path, this.size});
}
