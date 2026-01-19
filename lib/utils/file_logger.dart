import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';

class FileLogger {
  static final FileLogger _instance = FileLogger._internal();
  factory FileLogger() => _instance;
  FileLogger._internal();

  File? _logFile;
  final _logBuffer = <String>[];
  bool _isInitialized = false;
  bool _isWriting = false;

  Future<void> init() async {
    // Skip file logging in release/profile mode for performance
    if (kReleaseMode || kProfileMode) return;
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
        await _logFile!
            .writeAsString(_logBuffer.join('\n'), mode: FileMode.append);
        _logBuffer.clear();
      }
    } catch (e) {
      // Cannot log to file, maybe permissions issue.
      // For now, we'll just lose the logs.
    }
  }

  void log(String message) {
    // Skip file logging in release/profile mode for performance
    if (kReleaseMode || kProfileMode) return;
    
    final timestampedMessage = '[${DateTime.now().toIso8601String()}] $message';
    if (_isInitialized && _logFile != null) {
      // Buffer logs and write asynchronously to avoid blocking UI
      _logBuffer.add(timestampedMessage);
      _flushBufferAsync();
    } else {
      _logBuffer.add(timestampedMessage);
    }
  }
  
  Future<void> _flushBufferAsync() async {
    if (_isWriting || _logBuffer.isEmpty || _logFile == null) return;
    _isWriting = true;
    try {
      final toWrite = _logBuffer.join('\n');
      _logBuffer.clear();
      await _logFile!.writeAsString('$toWrite\n', mode: FileMode.append);
    } catch (_) {
      // Ignore write errors
    } finally {
      _isWriting = false;
    }
  }
}
