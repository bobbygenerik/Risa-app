import 'package:iptv_player/utils/debug_helper.dart';

/// Tracks image URLs and hosts that have failed so we stop retrying them.
///
/// Two layers:
///   1. **Per-URL**: after [_maxRetries] failures a specific URL is skipped.
///   2. **Per-host TLS**: if a host fails with a TLS/HandshakeException we
///      blacklist the entire host for the session so we don't waste time on
///      every URL under it (e.g. logo.m3uassets.com).
class ImageFailureCache {
  // ---------------------------------------------------------------------------
  // Per-URL tracking
  // ---------------------------------------------------------------------------
  static const int _maxRetries = 2;

  /// url → consecutive failure count
  static final Map<String, int> _failureCounts = {};

  /// URLs that have loaded successfully at least once
  static final Set<String> _successes = {};

  // ---------------------------------------------------------------------------
  // Per-host TLS / connection-level blacklist
  // ---------------------------------------------------------------------------
  /// Hosts whose TLS handshake (or socket connection) has permanently failed.
  static final Set<String> _blacklistedHosts = {};

  // ---------------------------------------------------------------------------
  // Aggressive mode (low-memory devices – skip even faster)
  // ---------------------------------------------------------------------------
  static bool _aggressiveMode = false;
  static const int _aggressiveMaxRetries = 1;

  static void setAggressiveMode(bool enabled) {
    _aggressiveMode = enabled;
  }

  static void clear() {
    _failureCounts.clear();
    _successes.clear();
    _blacklistedHosts.clear();
  }

  // ---------------------------------------------------------------------------
  // Query
  // ---------------------------------------------------------------------------
  static bool shouldSkip(String url) {
    if (url.isEmpty) return true;
    if (_isHostBlacklisted(url)) return true;
    if (_successes.contains(url)) return false;
    final count = _failureCounts[url] ?? 0;
    final limit = _aggressiveMode ? _aggressiveMaxRetries : _maxRetries;
    return count >= limit;
  }

  static bool shouldSkipLogo(String url) => shouldSkip(url);

  // ---------------------------------------------------------------------------
  // Recording
  // ---------------------------------------------------------------------------
  static void recordSuccess(String url) {
    if (url.isEmpty) return;
    _successes.add(url);
    _failureCounts.remove(url);
  }

  static void recordFailure(String url, Object error) {
    if (url.isEmpty) return;
    _failureCounts[url] = (_failureCounts[url] ?? 0) + 1;

    // Only blacklist the entire host on hard TLS failures — these indicate a
    // structural incompatibility (wrong TLS version, bad cert) that will affect
    // every URL on that host. Transient errors like connection refused or
    // socket closed should NOT blacklist the host; they may be temporary.
    final errStr = error.toString().toLowerCase();
    if (errStr.contains('handshakeexception') ||
        errStr.contains('wrong_version_number') ||
        errStr.contains('tlsexception') ||
        errStr.contains('certificate_verify_failed')) {
      final host = _hostFromUrl(url);
      if (host.isNotEmpty && !_blacklistedHosts.contains(host)) {
        _blacklistedHosts.add(host);
        debugLog(
            'ImageFailureCache: blacklisted host "$host" due to TLS error: $error');
      }
    }
  }

  static void recordPortrait(String url) {
    // Currently unused – placeholder for future aspect-ratio tracking.
  }

  // ---------------------------------------------------------------------------
  // Diagnostics
  // ---------------------------------------------------------------------------
  static String diagnosticSummary() {
    return 'ImageFailureCache: '
        'failures=${_failureCounts.length} '
        'successes=${_successes.length} '
        'blacklistedHosts=${_blacklistedHosts.toList()} '
        'aggressive=$_aggressiveMode';
  }

  static Set<String> get blacklistedHosts => Set.unmodifiable(_blacklistedHosts);

  // ---------------------------------------------------------------------------
  // Helpers
  // ---------------------------------------------------------------------------
  static bool _isHostBlacklisted(String url) {
    final host = _hostFromUrl(url);
    return host.isNotEmpty && _blacklistedHosts.contains(host);
  }

  static String _hostFromUrl(String url) {
    try {
      return Uri.parse(url).host.toLowerCase();
    } catch (_) {
      return '';
    }
  }
}
