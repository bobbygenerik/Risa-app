import 'dart:async';
import 'dart:collection';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/utils/image_url_helper.dart';

/// Validates image URLs with HEAD requests and maintains a known-bad set.
/// Prevents broken URLs, 404s, and non-image content from being used.
class ImageValidationService {
  // LRU sets of known-good and known-bad URLs. Persisted across launches so a
  // cold start does not re-run a blocking HEAD for every non-trusted URL that
  // was already classified in a prior session.
  static final Set<String> _knownGood = {};
  static final Set<String> _knownBad = {};
  static final Queue<String> _knownGoodOrder = Queue<String>();
  static final Queue<String> _knownBadOrder = Queue<String>();
  static const int _maxGoodEntries = 4000;
  static const int _maxBadEntries = 1000;

  // Persistence: lazily loaded once, saved on a short debounce after changes.
  static const String _prefsGoodKey = 'image_validation_known_good';
  static const String _prefsBadKey = 'image_validation_known_bad';
  static Future<void>? _loadFuture;
  static Timer? _saveDebounce;

  // Shared HTTP client to reuse connections (keep-alive)
  static final http.Client _client = http.Client();

  // In-flight validation to avoid duplicate HEAD requests
  static final Map<String, Future<bool>> _pendingValidations = {};

  /// Loads the persisted known-good/known-bad sets. Idempotent and safe to call
  /// concurrently — the work runs at most once. Awaited before the first
  /// validation; can also be called eagerly during app init to warm the cache.
  static Future<void> ensureLoaded() => _loadFuture ??= _loadFromPrefs();

  static Future<void> _loadFromPrefs() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      for (final url in prefs.getStringList(_prefsGoodKey) ?? const <String>[]) {
        if (_knownGood.add(url)) _knownGoodOrder.addLast(url);
      }
      for (final url in prefs.getStringList(_prefsBadKey) ?? const <String>[]) {
        if (_knownBad.add(url)) _knownBadOrder.addLast(url);
      }
      debugLog(
          'ImageValidation: loaded ${_knownGood.length} good, ${_knownBad.length} bad from prefs');
    } catch (e) {
      debugLog('ImageValidation: failed to load persisted cache: $e');
    }
  }

  static void _scheduleSave() {
    _saveDebounce?.cancel();
    _saveDebounce = Timer(const Duration(seconds: 3), _saveToPrefs);
  }

  static Future<void> _saveToPrefs() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setStringList(_prefsGoodKey, _knownGoodOrder.toList());
      await prefs.setStringList(_prefsBadKey, _knownBadOrder.toList());
    } catch (e) {
      debugLog('ImageValidation: failed to persist cache: $e');
    }
  }

  /// Returns true if the URL is known to be invalid (404, non-image, etc.).
  static bool isKnownInvalid(String? url) {
    if (url == null || url.isEmpty) return true;
    final normalized = normalizeImageUrl(url);
    return _knownBad.contains(normalized);
  }

  /// Returns true if the URL has been validated as a working image.
  static bool isKnownValid(String? url) {
    if (url == null || url.isEmpty) return false;
    final normalized = normalizeImageUrl(url);
    return _knownGood.contains(normalized);
  }

  /// Mark a URL as known-good (e.g. after successful image load).
  static void markValid(String url) {
    final normalized = normalizeImageUrl(url);
    _knownBad.remove(normalized);
    _knownBadOrder.remove(normalized);
    if (_knownGood.add(normalized)) {
      _knownGoodOrder.addLast(normalized);
      while (_knownGoodOrder.length > _maxGoodEntries) {
        final old = _knownGoodOrder.removeFirst();
        _knownGood.remove(old);
      }
      _scheduleSave();
    }
  }

  /// Mark a URL as known-bad (e.g. after failed image load).
  static void markInvalid(String url) {
    final normalized = normalizeImageUrl(url);
    _knownGood.remove(normalized);
    _knownGoodOrder.remove(normalized);
    if (_knownBad.add(normalized)) {
      _knownBadOrder.addLast(normalized);
      while (_knownBadOrder.length > _maxBadEntries) {
        final old = _knownBadOrder.removeFirst();
        _knownBad.remove(old);
      }
      _scheduleSave();
    }
  }

  /// Validates a URL by performing a HEAD request if not already known.
  /// Returns true if the URL points to a valid image resource.
  static Future<bool> isValid(String? url) async {
    if (url == null || url.isEmpty) return false;
    // Honor the persisted classification before deciding to hit the network.
    await ensureLoaded();
    final normalized = normalizeImageUrl(url);

    // Fast path: already classified
    if (_knownGood.contains(normalized)) return true;
    if (_knownBad.contains(normalized)) return false;

    // Trusted domains that reliably serve images — skip HEAD check
    final lower = normalized.toLowerCase();
    if (_isTrustedImageDomain(lower)) {
      markValid(normalized);
      return true;
    }

    // Deduplicate in-flight validations
    if (_pendingValidations.containsKey(normalized)) {
      return _pendingValidations[normalized]!;
    }

    final future = _performValidation(normalized);
    _pendingValidations[normalized] = future;
    try {
      return await future;
    } finally {
      unawaited(_pendingValidations.remove(normalized));
    }
  }

  /// Check if a URL is on a trusted image CDN where HEAD checks are unnecessary.
  static bool _isTrustedImageDomain(String lowerUrl) {
    return lowerUrl.contains('image.tmdb.org') ||
        lowerUrl.contains('artworks.thetvdb.com') ||
        lowerUrl.contains('assets.fanart.tv') ||
        lowerUrl.contains('thesportsdb.com/images') ||
        // Gracenote/Tribune EPG card art (e.g. cltv.tmsimg.com). Served by every
        // major EPG provider and reliably returns images, but does not support
        // HEAD consistently — checking it forced a blocking round-trip (up to the
        // 5s timeout) on every EPG-driven card on each cold launch.
        lowerUrl.contains('tmsimg.com') ||
        lowerUrl.contains('gracenote') ||
        lowerUrl.contains('m3u-logos') ||
        lowerUrl.contains('logo.m3uassets.com');
  }

  /// Perform an actual HEAD request to validate the URL.
  static Future<bool> _performValidation(String url) async {
    try {
      final uri = Uri.tryParse(url);
      if (uri == null || !uri.hasScheme) {
        markInvalid(url);
        return false;
      }

      final response = await _client.head(uri).timeout(
            const Duration(seconds: 5),
          );

      if (response.statusCode >= 200 && response.statusCode < 400) {
        // Check content-type if available
        final contentType =
            response.headers['content-type']?.toLowerCase() ?? '';
        if (contentType.isNotEmpty &&
            !contentType.contains('image') &&
            !contentType.contains('octet-stream') &&
            !contentType.contains('binary')) {
          debugLog(
              'ImageValidation: Rejected $url — content-type: $contentType');
          markInvalid(url);
          return false;
        }
        markValid(url);
        return true;
      } else if (response.statusCode == 404 || response.statusCode == 410) {
        // Definitively gone — safe to mark as invalid and skip future attempts.
        debugLog(
            'ImageValidation: Rejected $url — status: ${response.statusCode}');
        markInvalid(url);
        return false;
      } else {
        // Any other non-2xx (e.g. 405 Method Not Allowed, 500, 503):
        // Do NOT mark as invalid — 405 means the server doesn't support HEAD
        // but the URL itself may be perfectly valid (images still load via GET).
        // Transient server errors should not permanently block the URL either.
        debugLog(
            'ImageValidation: Allowing $url despite status ${response.statusCode}');
        return true;
      }
    } catch (e) {
      // Network errors — don't aggressively mark as bad; might be transient
      debugLog('ImageValidation: Error validating $url: $e');
      // Still allow it through — better to try loading the image than block it
      return true;
    }
  }
}
