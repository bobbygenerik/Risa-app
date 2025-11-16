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
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['json'],
    );
    if (result == null || result.files.isEmpty) return null;
    final path = result.files.single.path;
    if (path == null) return null;
    final file = File(path);
    final content = await file.readAsString();
    final decoded = jsonDecode(content) as Map<String, dynamic>;
    return decoded;
  }

  // No additional helpers required for now.
}
