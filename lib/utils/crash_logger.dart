import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

class CrashLogger {
  static final CrashLogger instance = CrashLogger._internal();
  CrashLogger._internal();

  File? _logFile;
  bool _initialized = false;
  String? _lastError;

  Future<void> init() async {
    if (_initialized) return;
    final directory = await getApplicationSupportDirectory();
    _logFile = File('${directory.path}/crash.log');
    if (!await _logFile!.exists()) {
      await _logFile!.writeAsString('');
    }
    _initialized = true;
  }

  Future<void> logError(
    Object error,
    StackTrace? stack, {
    String source = 'unknown',
  }) async {
    try {
      await init();
      final file = _logFile;
      if (file == null) return;

      final key =
          '${error.toString().hashCode}_${stack?.toString().hashCode ?? 0}_$source';
      if (_lastError == key) {
        return; // avoid spamming identical crash entries
      }
      _lastError = key;

      if (!await file.exists()) {
        await file.writeAsString('');
      }

      final buffer = StringBuffer()
        ..writeln('--- ${DateTime.now().toIso8601String()} [$source] ---')
        ..writeln(error.toString());
      if (stack != null) {
        buffer.writeln(stack.toString());
      }
      buffer.writeln();
      await file.writeAsString(buffer.toString(), mode: FileMode.append);
      // Mirror to external app storage so logs are easy to pull via adb
      await _writeExternal(buffer.toString());

      // Try to also write to external Downloads/RisaLogs via platform channel
      try {
        const channel = MethodChannel('com.streamhub.iptv/debug_io');
        final filename =
            'crash_${DateTime.now().toIso8601String().replaceAll(':', '-')}.txt';
        await channel.invokeMethod('writeFile', {
          'name': filename,
          'content': buffer.toString(),
        });
      } catch (_) {
        // ignore platform write failures
      }
    } catch (_) {
      // Ignore logging failures to avoid crashing during crash handling.
    }
  }

  Future<void> _writeExternal(String content) async {
    try {
      final externalDir = await getExternalStorageDirectory();
      if (externalDir == null) return;
      final dir = Directory('${externalDir.path}/logs');
      if (!await dir.exists()) {
        await dir.create(recursive: true);
      }
      final latest = File('${dir.path}/crash_latest.txt');
      await latest.writeAsString(content, mode: FileMode.append);
    } catch (_) {
      // Best-effort; ignore failures (e.g., permissions).
    }
  }
}
