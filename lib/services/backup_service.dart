import 'dart:convert';
import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path_provider/path_provider.dart';

class BackupService {
  static const String _backupVersion = '1.0';

  static Future<Map<String, dynamic>> _collectAppData() async {
    final prefs = await SharedPreferences.getInstance();
    final keys = prefs.getKeys();

    final Map<String, dynamic> data = {};

    for (String key in keys) {
      final value = prefs.get(key);
      if (value != null) {
        data[key] = value;
      }
    }

    return {
      'version': _backupVersion,
      'timestamp': DateTime.now().toIso8601String(),
      'preferences': data,
    };
  }

  static Future<String?> exportBackup() async {
    try {
      final data = await _collectAppData();
      final jsonString = const JsonEncoder.withIndent('  ').convert(data);

      final directory = await getApplicationDocumentsDirectory();
      final timestamp = DateTime.now().toIso8601String().replaceAll(':', '-');
      final fileName = 'risa_backup_$timestamp.json';
      final file = File('${directory.path}/$fileName');

      await file.writeAsString(jsonString);
      return file.path;
    } catch (e) {
      return null;
    }
  }

  static Future<bool> importBackup() async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['json'],
        dialogTitle: 'Select Backup File',
      );

      if (result == null || result.files.isEmpty) return false;

      final file = File(result.files.first.path!);
      final jsonString = await file.readAsString();
      final data = jsonDecode(jsonString) as Map<String, dynamic>;

      if (!data.containsKey('preferences')) return false;

      final prefs = await SharedPreferences.getInstance();
      final preferences = data['preferences'] as Map<String, dynamic>;

      // Clear existing preferences
      await prefs.clear();

      // Restore preferences
      for (final entry in preferences.entries) {
        final key = entry.key;
        final value = entry.value;

        if (value is String) {
          await prefs.setString(key, value);
        } else if (value is int) {
          await prefs.setInt(key, value);
        } else if (value is double) {
          await prefs.setDouble(key, value);
        } else if (value is bool) {
          await prefs.setBool(key, value);
        } else if (value is List<String>) {
          await prefs.setStringList(key, value);
        }
      }

      return true;
    } catch (e) {
      return false;
    }
  }
}
