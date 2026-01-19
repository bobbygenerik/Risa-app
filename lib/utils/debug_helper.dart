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
