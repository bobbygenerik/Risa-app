import 'dart:developer' as developer;
import 'package:flutter/foundation.dart';
import 'package:iptv_player/utils/file_logger.dart';

/// Debug helper that only prints in debug mode
/// Completely skipped in release/profile mode for performance
void debugLog(String message) {
  // Skip entirely in release/profile mode for maximum performance
  if (kReleaseMode || kProfileMode) return;
  
  FileLogger().log(message);
  if (kDebugMode) {
    debugPrint(message);
  }
}

void logToSystem(String message, {String name = 'Risa'}) {
  developer.log(message, name: name);
}
