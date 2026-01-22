class ImageFailureCache {
  static const int _recentFailureLimit = 3;
  static const Duration _cooldown = Duration(minutes: 5);

  static final Map<String, int> _failures = {};
  static final Map<String, DateTime> _lastFailureAt = {};
  static final Set<String> _permanent = {};

  static bool shouldSkip(String url) {
    if (url.isEmpty) return true;
    if (_permanent.contains(url)) return true;
    final last = _lastFailureAt[url];
    if (last == null) return false;
    final failures = _failures[url] ?? 0;
    if (failures < _recentFailureLimit) return false;
    return DateTime.now().difference(last) < _cooldown;
  }

  static void recordSuccess(String url) {
    if (url.isEmpty) return;
    _failures.remove(url);
    _lastFailureAt.remove(url);
    _permanent.remove(url);
  }

  static void recordFailure(String url, Object error) {
    if (url.isEmpty) return;
    _lastFailureAt[url] = DateTime.now();
    _failures[url] = (_failures[url] ?? 0) + 1;
    if (_isPermanentError(error, url)) {
      _permanent.add(url);
    }
  }

  static bool _isPermanentError(Object error, String url) {
    final message = error.toString().toLowerCase();
    if (message.contains('imagedecoder') ||
        message.contains('decodeexception') ||
        message.contains('unimplemented') ||
        message.contains('invalid image data') ||
        message.contains('unsupported')) {
      return true;
    }
    final lowerUrl = url.toLowerCase();
    if (lowerUrl.contains('.svg') || lowerUrl.contains('image/svg')) {
      return true;
    }
    if (lowerUrl.contains('.avif') ||
        lowerUrl.contains('.avifs') ||
        lowerUrl.contains('.heic') ||
        lowerUrl.contains('.heif')) {
      return true;
    }
    return false;
  }
}
