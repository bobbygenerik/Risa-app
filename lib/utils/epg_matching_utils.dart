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

  /// Normalize program/channel titles for external lookups.
  /// Use aggressiveForNews when the title is news-like.
  static String normalizeTitleForLookup(
    String title, {
    bool aggressiveForNews = false,
  }) {
    var normalized = title;
    normalized = normalized.replaceAll(RegExp(r'\s*[-:]\s*'), ' ');
    normalized = normalized.replaceAll(RegExp(r'[\[\(\{].*?[\]\)\}]'), ' ');
    normalized = normalized.replaceAll(
        RegExp(r'\bs\d{1,2}e\d{1,2}\b', caseSensitive: false), '');
    normalized = normalized.replaceAll(
        RegExp(r'\bseason\s+\d+\b', caseSensitive: false), '');
    normalized = normalized.replaceAll(
        RegExp(r'\bepisode\s+\d+\b', caseSensitive: false), '');
    normalized = normalized.replaceAll(
        RegExp(r'\bpart\s+\d+\b', caseSensitive: false), '');
    normalized = normalized.replaceAll(
        RegExp(r'\b(\d+)(st|nd|rd|th)\s+hour\b', caseSensitive: false), '');
    normalized = normalized.replaceAll(
        RegExp(r'\b(\d+)\s*(st|nd|rd|th)?\s*hour\b', caseSensitive: false), '');
    normalized =
        normalized.replaceAll(RegExp(r'\s*[-:]\s*(19|20)\d{2}\s*$'), '');
    normalized =
        normalized.replaceAll(RegExp(r'\s*[\(\[]?(19|20)\d{2}[\)\]]?\s*$'), '');
    normalized = normalized.replaceAll(_noiseTokensRe, '');

    if (aggressiveForNews || isLikelyNewsTitle(title)) {
      normalized = normalized.replaceAll(
          RegExp(r'\bnews\s+at\s+\d{1,2}(:\d{2})?\s?(am|pm)?\b',
              caseSensitive: false),
          'news');
      normalized = normalized.replaceAll(
          RegExp(r'\b(at|@)\s+\d{1,2}(:\d{2})?\s?(am|pm)?\b',
              caseSensitive: false),
          '');
      normalized = normalized.replaceAll(_timeRe, '');
      normalized = normalized.replaceAll(_shortTimeRe, '');
      normalized = normalized.replaceAll(RegExp(r'^\s*[A-Z]{3,4}\b\s+'), '');
    } else {
      normalized = normalized.replaceAll(_timeRe, '');
      normalized = normalized.replaceAll(_shortTimeRe, '');
    }

    normalized = normalized.replaceAll(RegExp(r'\s+'), ' ').trim();
    return normalized.isEmpty ? title : normalized;
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
