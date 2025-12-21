import 'dart:io';
import 'package:path_provider/path_provider.dart';

class FileLogger {
  static final FileLogger _instance = FileLogger._internal();
  factory FileLogger() => _instance;
  FileLogger._internal();

  File? _logFile;
  final _logBuffer = <String>[];
  bool _isInitialized = false;

  Future<void> init() async {
    if (_isInitialized) return;

    try {
      final directory = await getTemporaryDirectory();
      _logFile = File('${directory.path}/app_logs.txt');
      // Clear old logs
      if (await _logFile!.exists()) {
        await _logFile!.writeAsString('');
      }
      _isInitialized = true;
      // Write any buffered logs
      if (_logBuffer.isNotEmpty) {
        await _logFile!.writeAsString(_logBuffer.join('\n'), mode: FileMode.append);
        _logBuffer.clear();
      }
    } catch (e) {
      // Cannot log to file, maybe permissions issue.
      // For now, we'll just lose the logs.
    }
  }

  void log(String message) {
    final timestampedMessage = '[${DateTime.now().toIso8601String()}] $message';
    if (_isInitialized && _logFile != null) {
      _logFile!.writeAsStringSync('$timestampedMessage\n', mode: FileMode.append);
    } else {
      _logBuffer.add(timestampedMessage);
    }
  }
}
