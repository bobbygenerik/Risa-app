import 'package:iptv_player/utils/debug_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// SharedPreferences-backed category list cache for a playlist identity.
class ChannelCategoryCache {
  static const String prefix = 'category_cache_';

  String? key;
  bool prefsLoaded = false;

  void setKeyForIdentity(String keyBase) {
    key = '$prefix${Uri.encodeComponent(keyBase)}';
    prefsLoaded = false;
  }

  void invalidate() {
    prefsLoaded = false;
  }

  Future<List<String>?> loadFromPrefs(SharedPreferences prefs) async {
    if (prefsLoaded || key == null) return null;
    prefsLoaded = true;
    try {
      final cached = prefs.getStringList(key!);
      if (cached != null && cached.isNotEmpty) {
        return normalize(cached);
      }
    } catch (e) {
      debugLog('ChannelProvider: Failed to load cached categories: $e');
    }
    return null;
  }

  Future<void> saveToPrefs(
    SharedPreferences prefs,
    List<String> categories,
  ) async {
    if (key == null) return;
    try {
      await prefs.setStringList(key!, categories);
    } catch (e) {
      debugLog('ChannelProvider: Failed to persist cached categories: $e');
    }
  }

  static List<String> normalize(List<String> categories) {
    final normalized = <String>[];
    var hasUncategorized = false;
    for (final raw in categories) {
      final trimmed = raw.trim();
      if (trimmed.isEmpty) {
        hasUncategorized = true;
        continue;
      }
      if (trimmed == 'Uncategorized') {
        hasUncategorized = true;
        continue;
      }
      normalized.add(trimmed);
    }
    if (hasUncategorized) {
      normalized.add('Uncategorized');
    }
    return normalized;
  }
}
