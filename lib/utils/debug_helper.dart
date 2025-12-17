import 'package:flutter/foundation.dart';

/// Debug helper that only prints in debug mode
void debugLog(String message) {
  if (kDebugMode) {
    print(message);
  }
}