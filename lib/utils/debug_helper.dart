import 'dart:developer' as developer;
import 'package:flutter/foundation.dart';
import 'package:iptv_player/utils/file_logger.dart';

/// Debug helper that only prints in debug mode
/// Completely skipped in release/profile mode for performance
void debugLog(String message) {
  // Allow logs in Profile mode for debugging persistent issues
  if (kReleaseMode) return;
  
  FileLogger().log(message);
  // Always print to console in Debug and Profile modes
  debugPrint(message);
}

void logToSystem(String message, {String name = 'Risa'}) {
  developer.log(message, name: name);
}
