class ImageFailureCache {
  static const int _recentFailureLimit = 5;
  static const Duration _cooldown = Duration(minutes: 1);
  static bool _aggressiveMode = false;

  static final Map<String, int> _failures = {};
  static final Map<String, DateTime> _lastFailureAt = {};
  static final Set<String> _permanent = {};
  static final Set<String> _portrait = {};
  static int _globalFailureCount = 0;
  static DateTime? _globalWindowStart;
  static DateTime? _globalCooldownUntil;
  static DateTime? _globalDisableUntil;

  static const int _globalFailureThreshold = 100; // Increased from 50 - more tolerant
  static const Duration _globalWindow = Duration(seconds: 5);
  static const Duration _globalCooldown = Duration(seconds: 2); // Reduced from 5s
  static const int _globalFailureThresholdAggressive = 3;
  static const Duration _globalCooldownAggressive = Duration(minutes: 2);
  static const Duration _globalDisableAggressive = Duration(minutes: 10);

  static void setAggressiveMode(bool enabled) {
    _aggressiveMode = enabled;
  }

  static void clear() {
    _failures.clear();
    _lastFailureAt.clear();
    // Do not clear permanent blocklist - only transient failures
    // _permanent.clear(); 
  }

  static bool shouldSkip(String url) {
    if (url.isEmpty) return true;
    final disableUntil = _globalDisableUntil;
    if (disableUntil != null && DateTime.now().isBefore(disableUntil)) {
      return true;
    }
    final cooldownUntil = _globalCooldownUntil;
    if (cooldownUntil != null && DateTime.now().isBefore(cooldownUntil)) {
      return true;
    }
    if (_permanent.contains(url)) return true;
    if (_portrait.contains(url)) return true;
    final last = _lastFailureAt[url];
    if (last == null) return false;
    final failures = _failures[url] ?? 0;
    if (failures < _recentFailureLimit) return false;
    return DateTime.now().difference(last) < _cooldown;
  }

  static bool shouldSkipLogo(String url) {
    if (url.isEmpty) return true;
    final disableUntil = _globalDisableUntil;
    if (disableUntil != null && DateTime.now().isBefore(disableUntil)) {
      return true;
    }
    final cooldownUntil = _globalCooldownUntil;
    if (cooldownUntil != null && DateTime.now().isBefore(cooldownUntil)) {
      return true;
    }
    if (_permanent.contains(url)) {
      final last = _lastFailureAt[url];
      if (_isSvgUrl(url) &&
          last != null &&
          DateTime.now().difference(last) > _cooldown) {
        _permanent.remove(url);
      } else {
        return true;
      }
    }
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
    _portrait.remove(url);
    // Reset global failure window on success to avoid long global cooldowns.
    _globalFailureCount = 0;
    _globalWindowStart = null;
    _globalCooldownUntil = null;
    _globalDisableUntil = null;
  }

  static void recordFailure(String url, Object error) {
    if (url.isEmpty) return;
    // Don't cache network timeouts - retry them
    if (error.toString().toLowerCase().contains('timeout')) return;

    _lastFailureAt[url] = DateTime.now();
    _failures[url] = (_failures[url] ?? 0) + 1;
    if (_isPermanentError(error, url)) {
      _permanent.add(url);
    }
    if (_aggressiveMode && _isDecoderFailure(error)) {
      _globalDisableUntil = DateTime.now().add(_globalDisableAggressive);
    }
    _trackGlobalFailure();
  }

  static void recordPortrait(String url) {
    if (url.isEmpty) return;
    _portrait.add(url);
  }

  static void _trackGlobalFailure() {
    final now = DateTime.now();
    final windowStart = _globalWindowStart;
    if (windowStart == null || now.difference(windowStart) > _globalWindow) {
      _globalWindowStart = now;
      _globalFailureCount = 1;
      return;
    }
    _globalFailureCount += 1;
    final threshold = _aggressiveMode
        ? _globalFailureThresholdAggressive
        : _globalFailureThreshold;
    final cooldown =
        _aggressiveMode ? _globalCooldownAggressive : _globalCooldown;
    if (_globalFailureCount >= threshold) {
      _globalCooldownUntil = now.add(cooldown);
      _globalFailureCount = 0;
      _globalWindowStart = now;
    }
  }

  static bool _isPermanentError(Object error, String url) {
    if (_isDecoderFailure(error)) {
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

  static bool _isDecoderFailure(Object error) {
    final message = error.toString().toLowerCase();
    return message.contains('imagedecoder') ||
        message.contains('decodeexception') ||
        message.contains('unimplemented') ||
        message.contains('invalid image data') ||
        message.contains('unsupported');
  }

  static bool _isSvgUrl(String url) {
    final lower = url.toLowerCase();
    return lower.contains('.svg') || lower.contains('image/svg');
  }
}
