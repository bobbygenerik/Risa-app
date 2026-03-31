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

    // ⚡ Bolt: Use a manual loop instead of `.values.where((v) => v).length`
    // to avoid creating intermediate iterables and closures in a frequent UI check.
    int available = 0;
    for (final v in status.values) {
      if (v) available++;
    }

    return available / status.length;
  }

  /// Get missing services list
  static List<String> getMissingServices() {
    final status = getServiceStatus();

    // ⚡ Bolt: Replace `.entries.where().map().toList()` with a direct loop
    // to prevent allocating intermediate lists and iterables.
    final missing = <String>[];
    for (final entry in status.entries) {
      if (!entry.value) {
        missing.add(entry.key);
      }
    }
    return missing;
  }
}
