import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/services/image_validation_service.dart';
import 'dart:async';
import 'dart:convert';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

/// Service to fetch channel logos from external sources when not provided by M3U
class ChannelLogoService {
  static final Map<String, String?> _logoCache = {};
  static bool _initialized = false;
  static Timer? _saveDebounceTimer;
  static const String _cacheFileName = 'channel_logos_cache.json';

  // Sorted entries for optimized partial matching
  static List<MapEntry<String, String>>? _sortedKnownLogos;

  // Known channel name to logo mappings (common channels)
  static final Map<String, String> _knownLogos = {
    // Canadian Sports
    'tsn':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/tsn-ca.png',
    'tsn1':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/tsn-1-ca.png',
    'tsn2':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/tsn-2-ca.png',
    'tsn3':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/tsn-3-ca.png',
    'tsn4':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/tsn-4-ca.png',
    'tsn5':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/tsn-5-ca.png',
    'sportsnet':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/sportsnet-ca.png',
    'sportsnet one':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/sportsnet-one-ca.png',
    'sportsnet ontario':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/sportsnet-ontario-ca.png',
    'sportsnet west':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/sportsnet-west-ca.png',
    'sportsnet east':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/sportsnet-east-ca.png',
    'sportsnet pacific':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/sportsnet-pacific-ca.png',

    // News Networks
    'bloomberg':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/bloomberg-television-us.png',
    'bloomberg television':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/bloomberg-television-us.png',
    'bloomberg tv':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/bloomberg-television-us.png',
    'cnn':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/cnn-us.png',
    'cnn international':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/international/cnn-international.png',
    'fox news':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/fox-news-channel-us.png',
    'msnbc':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/msnbc-us.png',
    'cnbc':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/cnbc-us.png',
    'bbc news':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-kingdom/bbc-news-uk.png',
    'bbc world news':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/international/bbc-world-news.png',
    'sky news':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-kingdom/sky-news-uk.png',
    'cbc news':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/cbc-news-network-ca.png',
    'ctv news':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/ctv-news-channel-ca.png',

    // US Sports
    'espn':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/espn-us.png',
    'espn2':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/espn-2-us.png',
    'espnu':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/espnu-us.png',
    'espn news':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/espn-news-us.png',
    'fox sports':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/fox-sports-1-us.png',
    'fox sports 1':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/fox-sports-1-us.png',
    'fox sports 2':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/fox-sports-2-us.png',
    'nba tv':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/nba-tv-us.png',
    'nfl network':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/nfl-network-us.png',
    'mlb network':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/mlb-network-us.png',
    'nhl network':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/nhl-network-us.png',
    'golf channel':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/golf-channel-us.png',

    // Major Networks
    'abc':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/abc-us.png',
    'nbc':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/nbc-us.png',
    'cbs':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/cbs-us.png',
    'fox':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/fox-us.png',
    'cbc':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/cbc-ca.png',
    'ctv':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/ctv-ca.png',
    'global':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/global-ca.png',
    'bbc one':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-kingdom/bbc-one-uk.png',
    'bbc two':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-kingdom/bbc-two-uk.png',
    'itv':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-kingdom/itv-uk.png',
    'channel 4':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-kingdom/channel-4-uk.png',

    // Entertainment
    'hbo':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/hbo-us.png',
    'showtime':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/showtime-us.png',
    'starz':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/starz-us.png',
    'cinemax':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/cinemax-us.png',
    'amc':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/amc-us.png',
    'fx':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/fx-us.png',
    'tnt':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/tnt-us.png',
    'tbs':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/tbs-us.png',
    'usa network':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/usa-network-us.png',
    'syfy':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/syfy-us.png',
    'comedy central':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/comedy-central-us.png',
    'mtv':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/mtv-us.png',
    'vh1':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/vh1-us.png',
    'bet':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/bet-us.png',
    'bravo':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/bravo-us.png',
    'e!':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/e-us.png',
    'a&e':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/ae-us.png',
    'history':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/history-us.png',
    'history channel':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/history-us.png',
    'discovery':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/discovery-channel-us.png',
    'discovery channel':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/discovery-channel-us.png',
    'national geographic':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/national-geographic-us.png',
    'nat geo':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/national-geographic-us.png',
    'animal planet':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/animal-planet-us.png',
    'tlc':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/tlc-us.png',
    'hgtv':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/hgtv-us.png',
    'food network':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/food-network-us.png',
    'travel channel':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/travel-channel-us.png',

    // Kids
    'disney channel':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/disney-channel-us.png',
    'disney xd':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/disney-xd-us.png',
    'disney junior':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/disney-junior-us.png',
    'cartoon network':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/cartoon-network-us.png',
    'nickelodeon':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/nickelodeon-us.png',
    'nick jr':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/nick-jr-us.png',
    'pbs kids':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/pbs-kids-us.png',

    // Canadian
    'muchmusic':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/much-ca.png',
    'much':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/much-ca.png',
    'city':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/city-tv-ca.png',
    'citytv':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/city-tv-ca.png',
    'cp24':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/cp24-ca.png',
    'btv':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/bnn-bloomberg-ca.png',
    'bnn bloomberg':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/bnn-bloomberg-ca.png',
    'tvo':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/tvo-ca.png',
    'showcase':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/showcase-ca.png',
    'slice':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/slice-ca.png',
    'w network':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/w-network-ca.png',
    'treehouse':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/treehouse-ca.png',
    'ytv':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/ytv-ca.png',
    'teletoon':
        'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/teletoon-ca.png',
  };

  /// Initialize the service and load cache
  static Future<void> init() async {
    if (_initialized) return;

    // Pre-sort known logos by key length descending to prioritize specific matches
    // (e.g. "fox sports" before "fox")
    if (_sortedKnownLogos == null) {
      final entries = _knownLogos.entries.toList();
      entries.sort((a, b) => b.key.length.compareTo(a.key.length));
      _sortedKnownLogos = entries;
    }

    await _loadCache();
    _initialized = true;
  }

  static Future<void> _loadCache() async {
    try {
      final dir = await getApplicationSupportDirectory();
      final file = File('${dir.path}/$_cacheFileName');
      if (await file.exists()) {
        final content = await file.readAsString();
        if (content.trim().isEmpty) {
          await file.delete();
          return;
        }
        final Map<String, dynamic> cached = json.decode(content);
        cached.forEach((key, value) {
          _logoCache[key] = value as String?;
        });
        debugLog(
            'ChannelLogoService: Loaded ${_logoCache.length} cached logos');
      }
    } catch (e) {
      debugLog('ChannelLogoService: Error loading cache: $e');
    }
  }

  static Future<void> _saveCache() async {
    _saveDebounceTimer?.cancel();
    _saveDebounceTimer = Timer(const Duration(seconds: 2), () {
      _performSave();
    });
  }

  static Future<void> _performSave() async {
    try {
      final dir = await getApplicationSupportDirectory();
      final file = File('${dir.path}/$_cacheFileName');
      await file.writeAsString(json.encode(_logoCache));
    } catch (e) {
      debugLog('ChannelLogoService: Error saving cache: $e');
    }
  }

  static final RegExp _qualityRegex = RegExp(r'\s*(hd|sd|fhd|uhd|4k|hevc|h\.?264|720p|1080p|1080i)\s*', caseSensitive: false);
  static final RegExp _bracketsRegex = RegExp(r'[\(\)\[\]\{\}]');
  static final RegExp _whitespaceRegex = RegExp(r'\s+');

  /// Normalize channel name for lookup
  static String _normalize(String name) {
    return name
        .toLowerCase()
        .replaceAll(_qualityRegex, ' ')
        .replaceAll(_bracketsRegex, '')
        .replaceAll(_whitespaceRegex, ' ')
        .trim();
  }

  /// Get logo URL for a channel
  /// Returns null if no logo found
  static Future<String?> getLogoUrl(String channelName, {String? tvgId}) async {
    await init();

    final normalized = _normalize(channelName);

    // Check cache first
    if (_logoCache.containsKey(normalized)) {
      return _logoCache[normalized];
    }

    // Fast path: Exact match (O(1))
    if (_knownLogos.containsKey(normalized)) {
      final url = _knownLogos[normalized]!;
      if (await _verifyUrl(url)) {
        _logoCache[normalized] = url;
        unawaited(_saveCache());
        return url;
      }
    }

    // Fuzzy match: Check if channel name contains a known logo key
    // Iterating sorted entries ensures longer (more specific) keys are checked first.
    final entries = _sortedKnownLogos ?? _knownLogos.entries;
    for (final entry in entries) {
      if (normalized.contains(entry.key) || entry.key.contains(normalized)) {
        final url = entry.value;
        // Verify the URL works
        if (await _verifyUrl(url)) {
          _logoCache[normalized] = url;
          unawaited(_saveCache());
          return url;
        }
      }
    }

    // Cache miss - store null to avoid repeated lookups
    _logoCache[normalized] = null;
    unawaited(_saveCache());
    return null;
  }

  /// Verify a URL returns a valid image
  static Future<bool> _verifyUrl(String url) async {
    // Use shared image validation to filter out unsupported/invalid formats.
    return await ImageValidationService.isValid(url);
  }

  /// Enrich a channel with a logo if missing
  static Future<String?> enrichChannelLogo(
    String channelName, {
    String? existingLogoUrl,
    String? tvgId,
  }) async {
    // If already has a valid logo, return it
    if (existingLogoUrl != null && existingLogoUrl.isNotEmpty) {
      return existingLogoUrl;
    }

    // Try to find a logo
    return await getLogoUrl(channelName, tvgId: tvgId);
  }

  /// Batch enrich multiple channels (for efficiency)
  static Future<Map<String, String?>> enrichBatch(
      List<String> channelNames) async {
    await init();
    final results = <String, String?>{};

    for (final name in channelNames) {
      results[name] = await getLogoUrl(name);
    }

    return results;
  }
}
