import 'package:flutter/foundation.dart';
import 'package:iptv_player/config/oauth_config.dart';

/// Service Validator
/// Checks which external services are properly configured
class ServiceValidator {
  /// Check OpenSubtitles availability
  static bool get isOpenSubtitlesAvailable {
    return OAuthConfig.openSubtitlesApiKey.isNotEmpty;
  }

  /// Check TMDB availability
  static bool get isTmdbAvailable {
    return OAuthConfig.isTmdbConfigured;
  }

  /// Check AI upscaling availability
  static bool get isAIUpscalingAvailable {
    if (kIsWeb) return false;
    // Would check for model files in real implementation
    return true; // UI available, models need to be downloaded
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
      'ai_upscaling': isAIUpscalingAvailable,
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