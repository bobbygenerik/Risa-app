import 'dart:developer' as developer;
import 'package:flutter/foundation.dart';
import 'package:iptv_player/utils/file_logger.dart';

/// Debug helper — works in Debug and Profile modes.
/// Uses print() for guaranteed logcat visibility (no throttle).
/// Release mode is completely skipped for performance.
void debugLog(String message) {
  if (kReleaseMode) return;
  if (kProfileMode && _isProfileNoise(message)) return;

  // print() goes directly to stdout → always visible in `adb logcat`
  // ignore: avoid_print
  print('[Risa] $message');

  // FileLogger only writes in debug (it skips profile internally)
  FileLogger().log(message);
}

bool _isProfileNoise(String message) {
  return message.startsWith('EPG: getCurrentProgram - No ') ||
      message.startsWith('EPG: ensureChannelsLoadedBatch called') ||
      message.startsWith('EPG: ensureChannelsLoadedBatch - no new') ||
      message.startsWith('ImageLoadProbe: attempt') ||
      message.startsWith('LiveTV artwork: source=') ||
      message.startsWith('LiveTV artwork: ensureFreshProgramArtwork') ||
      message.startsWith('LiveTV artwork: _scheduleArtworkDrain') ||
      message.startsWith('LiveTV artwork: Timer scheduled');
}

void logToSystem(String message, {String name = 'Risa'}) {
  developer.log(message, name: name);
}
