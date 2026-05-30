import 'package:iptv_player/screens/live_tv/artwork/artwork_slot.dart';
import 'package:iptv_player/utils/debug_helper.dart';

/// Tracks image URLs and hosts that have failed so we stop retrying them.
class ImageFailureCache {
  static const int _maxRetries = 2;

  static final Map<String, int> _failureCounts = {};
  static final Set<String> _successes = {};
  static final Set<String> _portraitRejected = {};
  static final Set<String> _heroOnlyRejected = {};
  static final Set<String> _blacklistedHosts = {};

  static bool _aggressiveMode = false;
  static const int _aggressiveMaxRetries = 1;

  static void setAggressiveMode(bool enabled) {
    _aggressiveMode = enabled;
  }

  static void clear() {
    _failureCounts.clear();
    _successes.clear();
    _portraitRejected.clear();
    _heroOnlyRejected.clear();
    _blacklistedHosts.clear();
  }

  static bool shouldSkip(
    String url, {
    ArtworkSlot slot = ArtworkSlot.card,
    bool isHero = false,
  }) {
    if (url.isEmpty) return true;
    final effective = isHero ? ArtworkSlot.hero : slot;
    if (_portraitRejected.contains(url)) return true;
    if (effective == ArtworkSlot.hero && _heroOnlyRejected.contains(url)) {
      return true;
    }
    if (_isHostBlacklisted(url)) return true;
    if (_successes.contains(url)) return false;
    final count = _failureCounts[url] ?? 0;
    final limit = _aggressiveMode ? _aggressiveMaxRetries : _maxRetries;
    return count >= limit;
  }

  static bool shouldSkipLogo(String url) => shouldSkip(url);

  static void recordSuccess(String url) {
    if (url.isEmpty) return;
    _successes.add(url);
    _failureCounts.remove(url);
  }

  static void recordFailure(String url, Object error) {
    if (url.isEmpty) return;
    _failureCounts[url] = (_failureCounts[url] ?? 0) + 1;

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

  /// [portrait] true → unusable on every slot. Otherwise hero-only rejection.
  static void recordAspectRejected(
    String url, {
    required ArtworkSlot slot,
    required bool portrait,
  }) {
    if (url.isEmpty) return;
    if (portrait || slot == ArtworkSlot.card) {
      _portraitRejected.add(url);
      return;
    }
    _heroOnlyRejected.add(url);
  }

  /// Back-compat for existing call sites.
  static void recordPortrait(String url, {required bool isHero}) {
    recordAspectRejected(
      url,
      slot: isHero ? ArtworkSlot.hero : ArtworkSlot.card,
      portrait: !isHero,
    );
  }

  static String diagnosticSummary() {
    return 'ImageFailureCache: '
        'failures=${_failureCounts.length} '
        'successes=${_successes.length} '
        'blacklistedHosts=${_blacklistedHosts.toList()} '
        'aggressive=$_aggressiveMode';
  }

  static Set<String> get blacklistedHosts => Set.unmodifiable(_blacklistedHosts);

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
