import 'dart:convert';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:path_provider/path_provider.dart';

/// Local backup service for exporting/importing app data as JSON files.
class LocalBackupService {
  /// Export `combinedData` to a JSON file in the app documents directory.
  /// Returns the full path to the created file.
  static Future<String> exportBackup(Map<String, dynamic> combinedData) async {
    final dir = await getApplicationDocumentsDirectory();
    final timestamp = DateTime.now().toIso8601String().replaceAll(':', '-');
    final filename = 'risa-backup-$timestamp.json';
    final file = File('${dir.path}/$filename');
    await file.create(recursive: true);
    await file.writeAsString(jsonEncode(combinedData));
    return file.path;
  }

  /// Prompt the user to pick a JSON backup file and return its parsed contents.
  /// Returns null if the user cancels or the file is invalid.
  static Future<Map<String, dynamic>?> importBackup() async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['json'],
        allowMultiple: false,
        // IMPORTANT: prevent the native plugin from returning the entire file
        // bytes over the MethodChannel which can cause large memory spikes.
        withData: false,
      );

      if (result == null || result.files.isEmpty) return null;
      final path = result.files.single.path;
      if (path == null) return null;

      final file = File(path);

      // Defensive check: avoid loading extremely large files into memory.
      final fileStat = await file.stat();
      const maxSize = 50 * 1024 * 1024; // 50 MB
      if (fileStat.size > maxSize) {
        // Caller can decide how to surface this; we return null to indicate
        // the import didn't complete due to size.
        return null;
      }

      final content = await file.readAsString();
      final decoded = jsonDecode(content) as Map<String, dynamic>;
      return decoded;
    } catch (e) {
      // Swallow plugin / I/O exceptions and return null so callers can handle
      // failures without crashing the settings UI.
      return null;
    }
  }

  // No additional helpers required for now.
}
