part of '../tmdb_service.dart';

final _apiRequestManager = ApiRequestManager();

class _CacheItem {
  final Map<String, dynamic> data;
  final DateTime expiry;
  _CacheItem(this.data, this.expiry);
  bool get isExpired => DateTime.now().isAfter(expiry);
}

Map<String, dynamic> _readCacheFile(String path) {
  try {
    final file = File(path);
    if (!file.existsSync()) {
      return {};
    }
    final contents = file.readAsStringSync();
    final decoded = json.decode(contents);
    if (decoded is Map<String, dynamic>) {
      return decoded;
    }
  } catch (_) {
    // ignore read/parse errors
  }
  return {};
}
