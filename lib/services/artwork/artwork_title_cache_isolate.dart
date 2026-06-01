import 'dart:convert';

/// Data class for title cache entries to pass to/from isolate.
class TitleCacheEntry {
  final String key;
  final String url;
  final int timestamp;

  TitleCacheEntry({
    required this.key,
    required this.url,
    required this.timestamp,
  });
}

/// Parses title cache JSON in an isolate.
List<TitleCacheEntry> parseTitleCacheJsonIsolate(String raw) {
  try {
    final decoded = jsonDecode(raw);
    if (decoded is! Map<String, dynamic>) return [];
    final now = DateTime.now();
    final entries = <TitleCacheEntry>[];
    decoded.forEach((key, value) {
      String? url;
      int? timestamp;
      if (value is String) {
        url = value;
        timestamp = now.millisecondsSinceEpoch;
      } else if (value is Map) {
        final rawUrl = value['url'];
        if (rawUrl is String && rawUrl.isNotEmpty) {
          url = rawUrl;
        }
        final rawTs = value['ts'];
        if (rawTs is int) {
          timestamp = rawTs;
        }
      }
      if (url != null && url.isNotEmpty && timestamp != null) {
        entries.add(TitleCacheEntry(key: key, url: url, timestamp: timestamp));
      }
    });
    return entries;
  } catch (e) {
    return [];
  }
}
