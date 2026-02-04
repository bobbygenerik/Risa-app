class ImageFailureCache {
  static void setAggressiveMode(bool enabled) {
    // No-op: artwork restrictions are disabled.
  }

  static void clear() {
    // No-op: artwork restrictions are disabled.
  }

  static bool shouldSkip(String url) {
    if (url.isEmpty) return true;
    return false;
  }

  static bool shouldSkipLogo(String url) {
    if (url.isEmpty) return true;
    return false;
  }

  static void recordSuccess(String url) {
    // No-op: artwork restrictions are disabled.
  }

  static void recordFailure(String url, Object error) {
    // No-op: artwork restrictions are disabled.
  }

  static void recordPortrait(String url) {
    // No-op: artwork restrictions are disabled.
  }
}
