import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

class CrashLogger {
  static final CrashLogger instance = CrashLogger._internal();
  CrashLogger._internal();

  File? _logFile;
  bool _initialized = false;

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
      final buffer = StringBuffer()
        ..writeln('--- ${DateTime.now().toIso8601String()} [$source] ---')
        ..writeln(error.toString());
      if (stack != null) {
        buffer.writeln(stack.toString());
      }
      buffer.writeln();
      await _logFile!.writeAsString(buffer.toString(), mode: FileMode.append);

      // Try to also write to external Downloads/RisaLogs via platform channel
      try {
        const channel = MethodChannel('com.streamhub.iptv/debug_io');
        final filename = 'crash_${DateTime.now().toIso8601String().replaceAll(':', '-')}.txt';
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
}
