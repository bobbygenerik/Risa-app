import 'dart:developer' as developer;
import 'package:flutter/foundation.dart';
import 'package:iptv_player/utils/file_logger.dart';

/// Debug helper — works in Debug and Profile modes.
/// Uses print() for guaranteed logcat visibility (no throttle).
/// Release mode is completely skipped for performance.
void debugLog(String message) {
  if (kReleaseMode) return;

  // print() goes directly to stdout → always visible in `adb logcat`
  // ignore: avoid_print
  print('[Risa] $message');

  // FileLogger only writes in debug (it skips profile internally)
  FileLogger().log(message);
}

void logToSystem(String message, {String name = 'Risa'}) {
  developer.log(message, name: name);
}
