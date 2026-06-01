import 'dart:collection';

import 'package:iptv_player/utils/epg_matching_utils.dart';

/// LRU-backed channel name normalization for EPG matching.
class EpgNormalizeCache {
  EpgNormalizeCache._();

  static final LinkedHashMap<String, String> _cache = LinkedHashMap();
  static const int _maxSize = 5000;

  static String normalizeForFilter(String input) {
    final cached = _cache.remove(input);
    if (cached != null) {
      _cache[input] = cached;
      return cached;
    }
    while (_cache.length >= _maxSize) {
      _cache.remove(_cache.keys.first);
    }
    final result = EPGMatchingUtils.normalizeChannelName(input);
    _cache[input] = result;
    return result;
  }

  static String normalizeForAllowedId(String input) {
    return input.trim().toLowerCase();
  }
}
