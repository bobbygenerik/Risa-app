/// Utility class for EPG channel matching algorithms
/// Extracted from EPGService to improve maintainability and testability
class EPGMatchingUtils {
  /// Cache for channel ID mapping (tvgId -> epgKey)
  static final Map<String, String?> _channelIdCache = {};

  static final RegExp _nonAlphaNumRe = RegExp(r'[^a-z0-9]');
  static final RegExp _digitsRe = RegExp(r'\d+');
  static final RegExp _qualitySufRe =
      RegExp(r'(uhd|fhd|hd|sd|4k|1080p|720p)$', caseSensitive: false);
  static final RegExp _regionSufRe = RegExp(
      r'(london|scotland|wales|ireland|ni|channelislands|manchester|birmingham|leeds|yorkshire|north|south|east|west|northeast|northwest|southeast|southwest|midlands)$',
      caseSensitive: false);
  static final RegExp _countryCodeSufRe =
      RegExp(r'(uk|us|ca|au|ie|pt|hk|fr|de|it|es)$', caseSensitive: false);
  static final RegExp _suffixSufRe = RegExp(
      r'(hd|fhd|uhd|4k|sd|uk|us|ca|au|east|west)$',
      caseSensitive: false);
  static final RegExp _wordSepRe = RegExp(r'[\s\-_\.]+');
  static final RegExp _timeRe =
      RegExp(r'\b\d{1,2}(:\d{2})?\s?(am|pm)\b', caseSensitive: false);
  static final RegExp _shortTimeRe =
      RegExp(r'\b\d{1,2}\s*[ap]\b', caseSensitive: false);
  static final RegExp _callSignRe = RegExp(r'^\s*[A-Z]{3,4}\b');
  static final RegExp _noiseTokensRe = RegExp(
      r'\b(paid\s+programming|home\s+shopping|homeshopping|infomercial|sponsored|promotion|promo|commercial|advertisement)\b',
      caseSensitive: false);

  static String normalizeForFilter(String text) {
    var s = text.toLowerCase();
    // remove explicit time tokens to avoid false negatives
    s = s.replaceAll(_timeRe, ' ');
    s = s.replaceAll(_shortTimeRe, ' ');
    // remove common bracket/sep characters
    s = s.replaceAll(RegExp(r'[\[\]\(\)\{\}\-_:]'), ' ');
    // strip non-alphanumeric to spaces, collapse whitespace
    s = s.replaceAll(_nonAlphaNumRe, ' ');
    s = s.replaceAll(RegExp(r'\s+'), ' ').trim();
    return s;
  }

  /// Heuristic: title is likely local/news with time or callsign.
  static bool isLikelyNewsTitle(String title) {
    final normalized = normalizeForFilter(title);
    if (!normalized.contains('news')) return false;
    return _timeRe.hasMatch(title) ||
        _shortTimeRe.hasMatch(title) ||
        _callSignRe.hasMatch(title.trim());
  }

  // Pre-compiled regexes for normalization (static to avoid recreation)
  static final RegExp _dashColonRe = RegExp(r'\s*[-:]\s*');
  static final RegExp _bracketedRe = RegExp(r'[\[\(\{].*?[\]\)\}]');
  static final RegExp _seasonEpisodeRe =
      RegExp(r'\bs\d{1,2}e\d{1,2}\b', caseSensitive: false);
  static final RegExp _seasonRe =
      RegExp(r'\bseason\s+\d+\b', caseSensitive: false);
  static final RegExp _episodeRe =
      RegExp(r'\bepisode\s+\d+\b', caseSensitive: false);
  static final RegExp _partRe =
      RegExp(r'\bpart\s+\d+\b', caseSensitive: false);
  static final RegExp _ordinalHourRe =
      RegExp(r'\b(\d+)(st|nd|rd|th)\s+hour\b', caseSensitive: false);
  static final RegExp _hourRe =
      RegExp(r'\b(\d+)\s*(st|nd|rd|th)?\s*hour\b', caseSensitive: false);
  static final RegExp _yearSuffixRe = RegExp(r'\s*[-:]\s*(19|20)\d{2}\s*$');
  static final RegExp _yearParenRe =
      RegExp(r'\s*[\(\[]?(19|20)\d{2}[\)\]]?\s*$');
  static final RegExp _newsAtTimeRe = RegExp(
      r'\bnews\s+at\s+\d{1,2}(:\d{2})?\s?(am|pm)?\b',
      caseSensitive: false);
  static final RegExp _atTimeRe = RegExp(
      r'\b(at|@)\s+\d{1,2}(:\d{2})?\s?(am|pm)?\b',
      caseSensitive: false);
  static final RegExp _callSignLeadingRe = RegExp(r'^\s*[A-Z]{3,4}\b\s+');
  static final RegExp _multiSpaceRe = RegExp(r'\s+');
  static final RegExp _yearParensExactRe = RegExp(r'\s*\(\d{4}\)');
  static final RegExp _yearSufExactRe = RegExp(r'\s+(19|20)\d{2}$');
  static final RegExp _episodePartLabelRe =
      RegExp(r'\b(?:Ep|Episode|Part|Chapter|Pt)\.?\s*\d+\b', caseSensitive: false);
  static final RegExp _artworkNoiseRe =
      RegExp(r'\b(tv|hd|fhd|uhd|4k|channel|network)\b', caseSensitive: false);
  static final RegExp _subtitleSepRe = RegExp(r'\s*[-–—:|]\s*');
  static final RegExp _subtitleYearRe = RegExp(r'\b(19|20)\d{2}\b');
  static final RegExp _subtitleVsRe = RegExp(r'\bvs\.?\b', caseSensitive: false);
  static final RegExp _subtitleStopwordsRe = RegExp(
      r'\b(the|a|an|of|and|to|in|on|for|with|from|at|by)\b',
      caseSensitive: false);
  static final RegExp _subtitleEpisodeKeywordsRe = RegExp(
      r'\b(pilot|premiere|finale|reunion|special|episode|part|chapter|season|series|extended|uncut|behind\s+the\s+scenes|bonus)\b',
      caseSensitive: false);
  static final RegExp _subtitleKeepRe = RegExp(
      r'\b(svu|ci|la|ny|uk|us|au|miami|vegas|new\s+orleans|new\s+york|los\s+angeles|most\s+wanted|organized\s+crime|international|special\s+victims\s+unit|criminal\s+intent|crime\s+investigation|cyber)\b',
      caseSensitive: false);

  // Cache for normalized title lookups
  static final Map<String, String> _normalizeTitleCache = {};
  static final Map<String, String> _normalizeArtworkCache = {};
  static const int _maxNormalizeCacheSize = 5000;

  /// Normalize program/channel titles for external lookups.
  /// Use aggressiveForNews when the title is news-like.
  static String normalizeTitleForLookup(
    String title, {
    bool aggressiveForNews = false,
  }) {
    // Check cache first (only for non-aggressive mode)
    if (!aggressiveForNews) {
      final cached = _normalizeTitleCache[title];
      if (cached != null) return cached;
    }

    var normalized = title;
    normalized = normalized.replaceAll(_dashColonRe, ' ');
    normalized = normalized.replaceAll(_bracketedRe, ' ');
    normalized = normalized.replaceAll(_seasonEpisodeRe, '');
    normalized = normalized.replaceAll(_seasonRe, '');
    normalized = normalized.replaceAll(_episodeRe, '');
    normalized = normalized.replaceAll(_partRe, '');
    normalized = normalized.replaceAll(_ordinalHourRe, '');
    normalized = normalized.replaceAll(_hourRe, '');
    normalized = normalized.replaceAll(_yearSuffixRe, '');
    normalized = normalized.replaceAll(_yearParenRe, '');
    normalized = normalized.replaceAll(_noiseTokensRe, '');

    if (aggressiveForNews || isLikelyNewsTitle(title)) {
      normalized = normalized.replaceAll(_newsAtTimeRe, 'news');
      normalized = normalized.replaceAll(_atTimeRe, '');
      normalized = normalized.replaceAll(_timeRe, '');
      normalized = normalized.replaceAll(_shortTimeRe, '');
      normalized = normalized.replaceAll(_callSignLeadingRe, '');
    } else {
      normalized = normalized.replaceAll(_timeRe, '');
      normalized = normalized.replaceAll(_shortTimeRe, '');
    }

    normalized = normalized.replaceAll(_multiSpaceRe, ' ').trim();
    final result = normalized.isEmpty ? title : normalized;

    // Cache the result (only for non-aggressive mode)
    if (!aggressiveForNews) {
      if (_normalizeTitleCache.length >= _maxNormalizeCacheSize) {
        // Clear oldest half when full
        final keys = _normalizeTitleCache.keys.toList();
        for (int i = 0; i < keys.length ~/ 2; i++) {
          _normalizeTitleCache.remove(keys[i]);
        }
      }
      _normalizeTitleCache[title] = result;
    }

    return result;
  }

  /// Consolidated normalization for artwork lookups.
  /// This combines all normalization steps needed for artwork queries.
  /// Use this instead of calling multiple normalization functions.
  static String normalizeForArtwork(String title) {
    // Check cache first
    final cached = _normalizeArtworkCache[title];
    if (cached != null) return cached;

    final aggressive = isLikelyNewsTitle(title);
    var output = normalizeTitleForLookup(title, aggressiveForNews: aggressive);

    // Additional artwork-specific normalizations
    output = output.replaceAll(_yearParensExactRe, '');
    output = output.replaceAll(_yearSufExactRe, '');
    output = output.replaceAll(_qualitySufRe, '');
    output = output.replaceAll(_seasonEpisodeRe, '');
    output = output.replaceAll(_episodePartLabelRe, '');
    output = output.replaceAll(_multiSpaceRe, ' ').trim();

    final result = output.isEmpty ? title : output;

    // Cache the result
    if (_normalizeArtworkCache.length >= _maxNormalizeCacheSize) {
      final keys = _normalizeArtworkCache.keys.toList();
      for (int i = 0; i < keys.length ~/ 2; i++) {
        _normalizeArtworkCache.remove(keys[i]);
      }
    }
    _normalizeArtworkCache[title] = result;

    return result;
  }

  /// Remove likely episode subtitles from titles like "Show - The Heist".
  static String stripEpisodeSubtitleLoose(String title) {
    final trimmed = title.trim();
    if (trimmed.isEmpty) return title;
    final sepMatch = _subtitleSepRe.firstMatch(trimmed);
    if (sepMatch == null) return title;
    final parts = trimmed.split(_subtitleSepRe);
    if (parts.length < 2) return title;
    final left = parts.first.trim();
    final right = parts.sublist(1).join(' ').trim();
    if (left.isEmpty || right.isEmpty) return title;
    if (right.length > 40) return title;
    if (_subtitleYearRe.hasMatch(right)) return title;
    if (_subtitleVsRe.hasMatch(right)) return title;
    if (_newsAtTimeRe.hasMatch(right) || _timeRe.hasMatch(right)) {
      return title;
    }
    if (_subtitleKeepRe.hasMatch(right)) return title;
    final rightWords = right.split(RegExp(r'\s+'));
    if (rightWords.length > 6) return title;
    final lowerRight = right.toLowerCase();
    final looksEpisode = _subtitleStopwordsRe.hasMatch(lowerRight) ||
        _subtitleEpisodeKeywordsRe.hasMatch(lowerRight);
    if (!looksEpisode) return title;
    return left;
  }

  /// Normalize a program title for display by removing episode suffixes.
  static String normalizeForDisplayTitle(
    String title, {
    bool stripEpisodeSubtitle = false,
  }) {
    var cleaned = title.trim();
    if (cleaned.isEmpty) return title;

    if (stripEpisodeSubtitle) {
      cleaned = stripEpisodeSubtitleLoose(cleaned);
    }

    final hasEpisodeMarker = _seasonEpisodeRe.hasMatch(cleaned) ||
        _episodePartLabelRe.hasMatch(cleaned) ||
        _episodeRe.hasMatch(cleaned) ||
        _partRe.hasMatch(cleaned) ||
        _seasonRe.hasMatch(cleaned);

    cleaned = cleaned.replaceAll(_seasonEpisodeRe, '');
    cleaned = cleaned.replaceAll(_episodePartLabelRe, '');
    cleaned = cleaned.replaceAll(_episodeRe, '');
    cleaned = cleaned.replaceAll(_partRe, '');
    cleaned = cleaned.replaceAll(_seasonRe, '');

    if (hasEpisodeMarker || _looksLikeEpisodeSuffix(title)) {
      final sep = RegExp(r'\s*[-–—:|]\s*').firstMatch(cleaned);
      if (sep != null) {
        cleaned = cleaned.substring(0, sep.start);
      }
    }

    cleaned = cleaned.replaceAll(_multiSpaceRe, ' ').trim();
    return cleaned.isEmpty ? title : cleaned;
  }

  static bool _looksLikeEpisodeSuffix(String title) {
    final match = RegExp(r'\s*[-–—:|]\s*').firstMatch(title);
    if (match == null) return false;
    final parts = title.split(RegExp(r'\s*[-–—:|]\s*'));
    if (parts.length < 2) return false;
    final left = parts.first.trim();
    final right = parts.sublist(1).join(' ').trim();
    if (left.isEmpty || right.isEmpty) return false;
    final rightWords = right.split(RegExp(r'\s+'));
    if (rightWords.length < 2) return false;
    if (right.length < 6 || left.length > 40) return false;
    final lowerRight = right.toLowerCase();
    return lowerRight.contains('episode') ||
        lowerRight.contains('part') ||
        lowerRight.contains('chapter') ||
        lowerRight.contains('ep ') ||
        lowerRight.contains('ep.');
  }

  /// Normalize title for artwork variant generation (handles & to 'and', etc.)
  static String normalizeArtworkVariant(String title) {
    var normalized = title;
    normalized = normalized.replaceAll('&', ' and ');
    normalized = normalized.replaceAll(RegExp(r'[^\w\s]'), ' ');
    normalized = normalized.replaceAll(_artworkNoiseRe, '');
    normalized = normalized.replaceAll(_multiSpaceRe, ' ').trim();
    return normalized;
  }

  /// Calculate similarity score with length-aware thresholds.
  /// For short titles (<=4 chars), requires higher similarity.
  static double calculateSimilarityWithThreshold(
    String a,
    String b, {
    double defaultThreshold = 0.55,
    double shortTitleThreshold = 0.80,
  }) {
    final score = calculateSimilarity(a, b);
    final minLength =
        a.length < b.length ? a.length : b.length;
    final threshold = minLength <= 4 ? shortTitleThreshold : defaultThreshold;
    return score >= threshold ? score : 0.0;
  }

  /// Set of generic program titles that need disambiguation.
  static const Set<String> genericTitles = {
    'news',
    'live',
    'sports',
    'sport',
    'movie',
    'paidprogramming',
    'homeshopping',
    'episode',
    'program',
    'show',
    'channel',
    'match',
    'game',
    'event',
    'coverage',
    'highlights',
    'highlights show',
    'morning',
    'tonight',
    'today',
    'weekend',
    'evening',
    'afternoon',
    'late night',
    'latenight',
    'prime time',
    'primetime',
    'special',
    'premiere',
    'finale',
  };

  /// Check if a title is too generic for reliable artwork matching.
  static bool isGenericTitle(String title) {
    final normalized = normalizeForFilter(title);
    return normalized.isEmpty ||
        normalized.length <= 3 ||
        genericTitles.contains(normalized);
  }

  static String _stripCountryRegion(String text) {
    return text.replaceAll(_countryCodeSufRe, '').replaceAll(_regionSufRe, '');
  }

  static Map<String, List<String>> _buildStrippedLookup(
    Set<String> allEpgKeys,
  ) {
    final strippedLookup = <String, List<String>>{};
    for (final key in allEpgKeys) {
      final normalized = key.toLowerCase().replaceAll(_nonAlphaNumRe, '');
      final stripped = _stripCountryRegion(normalized);
      if (stripped.length >= 3) {
        strippedLookup.putIfAbsent(stripped, () => []).add(key);
      }
      final strippedWithNumbers = convertNumberWords(stripped);
      if (strippedWithNumbers != stripped && strippedWithNumbers.length >= 3) {
        strippedLookup.putIfAbsent(strippedWithNumbers, () => []).add(key);
      }
    }
    return strippedLookup;
  }

  /// Convert number words to digits for better matching
  static String convertNumberWords(String text) {
    final conversions = {
      'one': '1',
      'two': '2',
      'three': '3',
      'four': '4',
      'five': '5',
      'six': '6',
      'seven': '7',
      'eight': '8',
      'nine': '9',
      'ten': '10',
      '1st': '1',
      '2nd': '2',
      '3rd': '3',
      '4th': '4',
      '5th': '5',
    };

    String result = text.toLowerCase();
    for (final entry in conversions.entries) {
      result = result.replaceAll(entry.key, entry.value);
    }
    return result;
  }

  /// Strip numbers from channel names for fuzzy matching
  static String stripNumbers(String text) {
    return text.replaceAll(_digitsRe, '');
  }

  /// Strip common suffixes like HD, UHD, FHD, regional variants
  static String stripSuffixes(String text) {
    return text.replaceAll(_qualitySufRe, '').replaceAll(_regionSufRe, '');
  }

  /// Calculate similarity score between two strings (0.0 to 1.0)
  static double calculateSimilarity(String a, String b) {
    if (a.isEmpty || b.isEmpty) return 0.0;
    if (a == b) return 1.0;

    final aNorm = a.toLowerCase().replaceAll(_nonAlphaNumRe, '');
    final bNorm = b.toLowerCase().replaceAll(_nonAlphaNumRe, '');

    if (aNorm == bNorm) return 0.95;
    if (aNorm.contains(bNorm) || bNorm.contains(aNorm)) {
      return 0.8 *
          (aNorm.length < bNorm.length
              ? aNorm.length / bNorm.length
              : bNorm.length / aNorm.length);
    }

    // Calculate Levenshtein-like similarity
    int matches = 0;
    final shorter = aNorm.length < bNorm.length ? aNorm : bNorm;
    final longer = aNorm.length >= bNorm.length ? aNorm : bNorm;

    for (int i = 0; i < shorter.length; i++) {
      if (longer.contains(shorter[i])) matches++;
    }

    return matches / longer.length * 0.6;
  }

  /// Extract meaningful name parts from an EPG key for matching
  static List<String> extractNameParts(String epgKey) {
    final parts = <String>[];

    // Remove domain suffix and normalize
    final withoutDomain = epgKey.split('.').first.toLowerCase();
    final normalized = withoutDomain.replaceAll(_nonAlphaNumRe, '');

    // Add the full normalized name
    if (normalized.length >= 3) parts.add(normalized);

    // Remove common suffixes
    final withoutSuffix = normalized.replaceAll(_suffixSufRe, '');
    if (withoutSuffix.length >= 3 && withoutSuffix != normalized) {
      parts.add(withoutSuffix);
    }

    return parts;
  }

  /// Get normalized EPG keys for faster matching
  static Map<String, String> getNormalizedEpgKeys(Set<String> allEpgKeys) {
    final normalizedEpgKeys = <String, String>{};
    final nameToEpgKeys = <String, List<String>>{};

    for (final key in allEpgKeys) {
      // Normalize: lowercase, remove spaces/dots/hyphens, keep alphanumeric
      final normalized = key.toLowerCase().replaceAll(_nonAlphaNumRe, '');
      normalizedEpgKeys[normalized] = key;

      // Also add without domain suffix
      final withoutDomain =
          key.split('.').first.toLowerCase().replaceAll(_nonAlphaNumRe, '');
      if (!normalizedEpgKeys.containsKey(withoutDomain)) {
        normalizedEpgKeys[withoutDomain] = key;
      }

      // Add number-converted version (e.g., "bbc1" for "bbcone")
      final withNumbers = convertNumberWords(normalized);
      if (withNumbers != normalized &&
          !normalizedEpgKeys.containsKey(withNumbers)) {
        normalizedEpgKeys[withNumbers] = key;
      }
      final withNumbersNoDomain = convertNumberWords(withoutDomain);
      if (withNumbersNoDomain != withoutDomain &&
          !normalizedEpgKeys.containsKey(withNumbersNoDomain)) {
        normalizedEpgKeys[withNumbersNoDomain] = key;
      }

      // Build reverse lookup by extracting channel name parts
      final parts = extractNameParts(key);
      for (final part in parts) {
        nameToEpgKeys.putIfAbsent(part, () => []).add(key);
      }
    }

    return normalizedEpgKeys;
  }

  /// Find the best matching EPG key for a channel
  static String? findEpgKey(
    String channelId,
    String? channelName,
    Set<String> allEpgKeys,
    Map<String, String> manualMappings,
  ) {
    final cacheKey = '$channelId|${channelName ?? ''}';

    // Check manual mapping first (highest priority)
    if (manualMappings.containsKey(channelId)) {
      final manualKey = manualMappings[channelId]!;
      if (allEpgKeys.contains(manualKey)) {
        return manualKey;
      }
    }

    // Check cache
    if (_channelIdCache.containsKey(cacheKey)) {
      return _channelIdCache[cacheKey];
    }

    final normalizedKeys = getNormalizedEpgKeys(allEpgKeys);

    // Try lowercase match
    final lowerChannelId = channelId.toLowerCase();
    for (final key in allEpgKeys) {
      if (key.toLowerCase() == lowerChannelId) {
        _channelIdCache[cacheKey] = key;
        return key;
      }
    }

    // Try matching without domain suffix
    final withoutDomain = channelId.split('.').first;
    for (final key in allEpgKeys) {
      final keyWithoutDomain = key.split('.').first;
      if (keyWithoutDomain.toLowerCase() == withoutDomain.toLowerCase()) {
        _channelIdCache[cacheKey] = key;
        return key;
      }
    }

    // Try normalized matching
    final normalizedId = channelId.toLowerCase().replaceAll(_nonAlphaNumRe, '');
    if (normalizedKeys.containsKey(normalizedId)) {
      _channelIdCache[cacheKey] = normalizedKeys[normalizedId];
      return normalizedKeys[normalizedId];
    }

    // Try with number word conversion
    final normalizedWithNumbers = convertNumberWords(normalizedId);
    if (normalizedWithNumbers != normalizedId &&
        normalizedKeys.containsKey(normalizedWithNumbers)) {
      _channelIdCache[cacheKey] = normalizedKeys[normalizedWithNumbers];
      return normalizedKeys[normalizedWithNumbers];
    }

    // Try prefix/contains matching with normalized ID
    final List<MapEntry<String, String>> prefixMatches = [];
    for (final entry in normalizedKeys.entries) {
      final epgNormalized = entry.key;
      final epgWithNumbers = convertNumberWords(epgNormalized);
      final epgStripped = stripSuffixes(epgWithNumbers);
      if (epgNormalized.startsWith(normalizedId) && normalizedId.length >= 4) {
        prefixMatches.add(entry);
        continue;
      }
      if (epgWithNumbers.startsWith(normalizedWithNumbers) &&
          normalizedWithNumbers.length >= 4) {
        prefixMatches.add(entry);
        continue;
      }
      final channelStripped = stripSuffixes(normalizedWithNumbers);
      if (epgStripped == channelStripped && channelStripped.length >= 4) {
        prefixMatches.add(entry);
        continue;
      }
    }
    if (prefixMatches.isNotEmpty) {
      prefixMatches.sort((a, b) {
        final aHasLondon = a.value.toLowerCase().contains('london');
        final bHasLondon = b.value.toLowerCase().contains('london');
        if (aHasLondon && !bHasLondon) return -1;
        if (!aHasLondon && bHasLondon) return 1;
        return a.key.length.compareTo(b.key.length);
      });
      final bestMatch = prefixMatches.first;
      _channelIdCache[cacheKey] = bestMatch.value;
      return bestMatch.value;
    }

    // Try number-stripped matching
    final channelStrippedNumbers = stripNumbers(normalizedId);
    if (channelStrippedNumbers.length >= 3) {
      for (final entry in normalizedKeys.entries) {
        final epgNormalized = entry.key;
        final epgStrippedNumbers = stripNumbers(epgNormalized);
        if (epgStrippedNumbers == channelStrippedNumbers) {
          _channelIdCache[cacheKey] = entry.value;
          return entry.value;
        }
        if (epgStrippedNumbers.startsWith(channelStrippedNumbers) &&
            channelStrippedNumbers.length >= 3) {
          prefixMatches.add(entry);
        }
      }
      if (prefixMatches.isNotEmpty) {
        prefixMatches.sort((a, b) {
          final aHasLondon = a.value.toLowerCase().contains('london');
          final bHasLondon = b.value.toLowerCase().contains('london');
          if (aHasLondon && !bHasLondon) return -1;
          if (!aHasLondon && bHasLondon) return 1;
          return a.key.length.compareTo(b.key.length);
        });
        final bestMatch = prefixMatches.first;
        _channelIdCache[cacheKey] = bestMatch.value;
        return bestMatch.value;
      }
    }

    // Try contains matching
    for (final entry in normalizedKeys.entries) {
      final epgNormalized = entry.key;
      if (normalizedId.contains(epgNormalized) && epgNormalized.length >= 4) {
        _channelIdCache[cacheKey] = entry.value;
        return entry.value;
      }
    }

    // Try matching by channel NAME if provided
    if (channelName != null && channelName.isNotEmpty) {
      final normalizedName =
          channelName.toLowerCase().replaceAll(_nonAlphaNumRe, '');
      final cleanedLookupName =
          normalizeTitleForLookup(channelName, aggressiveForNews: false)
              .toLowerCase()
              .replaceAll(_nonAlphaNumRe, '');
      if (normalizedKeys.containsKey(normalizedName)) {
        _channelIdCache[cacheKey] = normalizedKeys[normalizedName];
        return normalizedKeys[normalizedName];
      }
      if (cleanedLookupName.isNotEmpty &&
          normalizedKeys.containsKey(cleanedLookupName)) {
        _channelIdCache[cacheKey] = normalizedKeys[cleanedLookupName];
        return normalizedKeys[cleanedLookupName];
      }
      final cleanedName = normalizedName.replaceAll(_qualitySufRe, '');
      for (final entry in normalizedKeys.entries) {
        final epgNormalized = entry.key;
        if (cleanedName.contains(epgNormalized) && epgNormalized.length >= 3) {
          _channelIdCache[cacheKey] = entry.value;
          return entry.value;
        }
        if (epgNormalized.contains(cleanedName) && cleanedName.length >= 3) {
          _channelIdCache[cacheKey] = entry.value;
          return entry.value;
        }
        if (cleanedLookupName.isNotEmpty &&
            cleanedLookupName.contains(epgNormalized) &&
            epgNormalized.length >= 3) {
          _channelIdCache[cacheKey] = entry.value;
          return entry.value;
        }
        if (cleanedLookupName.isNotEmpty &&
            epgNormalized.contains(cleanedLookupName) &&
            cleanedLookupName.length >= 3) {
          _channelIdCache[cacheKey] = entry.value;
          return entry.value;
        }
      }
    }

    // Try unique stripped match (country/region) as a fallback.
    final strippedLookup = _buildStrippedLookup(allEpgKeys);
    final strippedId = _stripCountryRegion(normalizedId);
    if (strippedId.length >= 3) {
      final candidates = strippedLookup[strippedId];
      if (candidates != null && candidates.length == 1) {
        _channelIdCache[cacheKey] = candidates.first;
        return candidates.first;
      }
    }
    if (channelName != null && channelName.isNotEmpty) {
      final normalizedName =
          channelName.toLowerCase().replaceAll(_nonAlphaNumRe, '');
      final strippedName = _stripCountryRegion(normalizedName);
      if (strippedName.length >= 3) {
        final candidates = strippedLookup[strippedName];
        if (candidates != null && candidates.length == 1) {
          _channelIdCache[cacheKey] = candidates.first;
          return candidates.first;
        }
      }
    }

    // Try smarter partial match
    // We want to avoid "TNT" matching "TNT Sports" if "TNT" exists elsewhere or if it's too different.
    // Score candidates based on length difference and word boundary presence.
    String? bestPartialMatch;
    int minLengthDiff = 999;

    for (final key in allEpgKeys) {
      final lowerKey = key.toLowerCase();
      // Check if one contains the other
      if (lowerKey.contains(lowerChannelId)) {
        // Calculate "junk" remaining
        final diff = lowerKey.length - lowerChannelId.length;

        // Strict check: if the difference is too big, it's likely a different channel
        // e.g. "TNT" (3) vs "TNT Sports 4K" (13) -> diff 10. Too big.
        // e.g. "BBC One" (7) vs "BBC One HD" (10) -> diff 3. Acceptable.
        if (diff < minLengthDiff && diff < 8) {
          minLengthDiff = diff;
          bestPartialMatch = key;
        }
      }
    }

    if (bestPartialMatch != null) {
      _channelIdCache[cacheKey] = bestPartialMatch;
      return bestPartialMatch;
    }

    // No match found - cache the miss
    _channelIdCache[cacheKey] = null;
    return null;
  }

  /// Get EPG match suggestions for a channel (sorted by relevance)
  static List<MapEntry<String, double>> getSuggestedMatches(
    String channelId,
    String? channelName,
    Set<String> allEpgKeys, {
    int limit = 10,
  }) {
    final scores = <String, double>{};
    final searchTerms = <String>[];

    // Add channel ID variations
    final idNorm = channelId.toLowerCase().replaceAll(_nonAlphaNumRe, '');
    searchTerms.add(idNorm);
    searchTerms.add(idNorm.replaceAll(_suffixSufRe, ''));

    // Add channel name variations
    if (channelName != null && channelName.isNotEmpty) {
      final nameNorm = channelName.toLowerCase().replaceAll(_nonAlphaNumRe, '');
      searchTerms.add(nameNorm);
      searchTerms.add(nameNorm.replaceAll(_suffixSufRe, ''));

      // Also add individual words from the name
      final words = channelName.toLowerCase().split(_wordSepRe);
      for (final word in words) {
        if (word.length >= 3) {
          searchTerms.add(word.replaceAll(_nonAlphaNumRe, ''));
        }
      }
    }

    // Score each EPG channel
    for (final epgKey in allEpgKeys) {
      double maxScore = 0.0;

      for (final term in searchTerms) {
        final score = calculateSimilarity(term, epgKey);
        if (score > maxScore) maxScore = score;
      }

      if (maxScore > 0.2) {
        scores[epgKey] = maxScore;
      }
    }

    // Sort by score descending
    final sorted = scores.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));

    return sorted.take(limit).toList();
  }

  /// Clear the matching cache (call when EPG data changes)
  static void clearCache() {
    _channelIdCache.clear();
  }
}
