import 'package:flutter/foundation.dart';
import 'package:iptv_player/config/oauth_config.dart';
import 'package:iptv_player/config/fanart_config.dart';
import 'package:iptv_player/config/thesportsdb_config.dart';
import 'package:iptv_player/config/tvdb_config.dart';

/// Service Validator
/// Checks which external services are properly configured
class ServiceValidator {
  /// Check TMDB availability
  static bool get isTmdbAvailable {
    return OAuthConfig.isTmdbConfigured;
  }

  /// Check Whisper availability
  static bool get isWhisperAvailable {
    if (kIsWeb) return false;
    return true; // Auto-downloads on first use
  }

  /// Check TVDB availability
  static bool get isTvdbAvailable {
    return TvdbConfig.apiKey.isNotEmpty;
  }

  /// Check Fanart availability
  static bool get isFanartAvailable {
    return FanartConfig.apiKey.isNotEmpty;
  }

  /// Check TheSportsDB availability
  static bool get isSportsDbAvailable {
    return TheSportsDbConfig.apiKey.isNotEmpty;
  }

  /// Get service status summary
  static Map<String, bool> getServiceStatus() {
    return {
      'tmdb': isTmdbAvailable,
      'tvdb': isTvdbAvailable,
      'fanart': isFanartAvailable,
      'thesportsdb': isSportsDbAvailable,
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
