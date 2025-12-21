import 'package:flutter/foundation.dart';
import 'package:iptv_player/utils/file_logger.dart';

/// Debug helper that only prints in debug mode and logs to file
void debugLog(String message) {
  FileLogger().log(message);
  if (kDebugMode || kProfileMode) {
    debugPrint(message);
  }
}
