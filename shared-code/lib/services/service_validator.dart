import 'package:flutter/foundation.dart';

/// Service Validator
/// Checks which external services are properly configured
class ServiceValidator {
  /// Check OpenSubtitles availability
  static bool get isOpenSubtitlesAvailable {
    // This would need to be configured by the consuming app
    return false;
  }

  /// Check TMDB availability
  static bool get isTmdbAvailable {
    // This would need to be configured by the consuming app
    return false;
  }

  /// Check Whisper availability
  static bool get isWhisperAvailable {
    if (kIsWeb) return false;
    return true; // Auto-downloads on first use
  }

  /// Get service status summary
  static Map<String, bool> getServiceStatus() {
    return {
      'opensubtitles': isOpenSubtitlesAvailable,
      'tmdb': isTmdbAvailable,
      'whisper': isWhisperAvailable,
    };
  }

  /// Get setup completion percentage
  static double getSetupCompletion() {
    final status = getServiceStatus();
    final available = status.values.where((v) => v).length;
    return available / status.length;
  }

  /// Get missing services list
  static List<String> getMissingServices() {
    final status = getServiceStatus();
    return status.entries
        .where((entry) => !entry.value)
        .map((entry) => entry.key)
        .toList();
  }
}