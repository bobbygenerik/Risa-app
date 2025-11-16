// Minimal repo-local `file_picker` implementation to avoid v1 embedding Java compile errors.
// This is intentionally a Dart-only shim that provides the small API surface used
// by the app (`FilePicker.platform.getDirectoryPath()`). It does not include
// native Android/iOS code — runtime file picking will be a no-op, but the
// project will compile successfully.

class FilePicker {
  FilePicker._();

  static final FilePickerPlatform platform = FilePickerPlatform();
}

class FilePickerPlatform {
  /// Returns a picked directory path or `null` if the user canceled.
  ///
  /// This local shim returns `null` because it has no native implementation.
  Future<String?> getDirectoryPath() async => null;
}
