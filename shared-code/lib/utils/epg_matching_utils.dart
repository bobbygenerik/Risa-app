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
  static final RegExp _suffixSufRe =
      RegExp(r'(hd|fhd|uhd|4k|sd|uk|us|ca|au|east|west)$', caseSensitive: false);
  static final RegExp _wordSepRe = RegExp(r'[\s\-_\.]+');

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
    final withoutDomain = epgKey.split('.').first.toLowerCase();
    final normalized = withoutDomain.replaceAll(_nonAlphaNumRe, '');

    if (normalized.length >= 3) parts.add(normalized);

    final withoutSuffix = normalized.replaceAll(_suffixSufRe, '');
    if (withoutSuffix.length >= 3 && withoutSuffix != normalized) {
      parts.add(withoutSuffix);
    }

    return parts;
  }

  /// Get normalized EPG keys for faster matching
  static Map<String, String> getNormalizedEpgKeys(Set<String> allEpgKeys) {
    final normalizedEpgKeys = <String, String>{};

    for (final key in allEpgKeys) {
      final normalized = key.toLowerCase().replaceAll(_nonAlphaNumRe, '');
      normalizedEpgKeys[normalized] = key;

      final withoutDomain = key
          .split('.')
          .first
          .toLowerCase()
          .replaceAll(_nonAlphaNumRe, '');
      if (!normalizedEpgKeys.containsKey(withoutDomain)) {
        normalizedEpgKeys[withoutDomain] = key;
      }

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

      final parts = extractNameParts(key);
      for (final part in parts) {
        normalizedEpgKeys.putIfAbsent(part, () => key);
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
    if (manualMappings.containsKey(channelId)) {
      final manualKey = manualMappings[channelId]!;
      if (allEpgKeys.contains(manualKey)) {
        return manualKey;
      }
    }

    if (_channelIdCache.containsKey(cacheKey)) {
      return _channelIdCache[cacheKey];
    }

    final normalizedKeys = getNormalizedEpgKeys(allEpgKeys);
    final lowerChannelId = channelId.toLowerCase();

    for (final key in allEpgKeys) {
      if (key.toLowerCase() == lowerChannelId) {
        _channelIdCache[cacheKey] = key;
        return key;
      }
    }

    final withoutDomain = channelId.split('.').first.toLowerCase();
    for (final key in allEpgKeys) {
      final domain = key.split('.').first.toLowerCase();
      if (domain == withoutDomain) {
        _channelIdCache[cacheKey] = key;
        return key;
      }
    }

    final normalizedId =
        channelId.toLowerCase().replaceAll(_nonAlphaNumRe, '');
    if (normalizedKeys.containsKey(normalizedId)) {
      _channelIdCache[cacheKey] = normalizedKeys[normalizedId];
      return normalizedKeys[normalizedId];
    }

    final withNumbers = convertNumberWords(normalizedId);
    if (withNumbers != normalizedId &&
        normalizedKeys.containsKey(withNumbers)) {
      _channelIdCache[cacheKey] = normalizedKeys[withNumbers];
      return normalizedKeys[withNumbers];
    }

    final normalizedIdWithoutCountry =
        normalizedId.replaceAll(_countryCodeSufRe, '');
    final normalizedWithNumbersNoCountry =
        withNumbers.replaceAll(_countryCodeSufRe, '');
    final prefixMatches = <MapEntry<String, String>>[];

    for (final entry in normalizedKeys.entries) {
      final epgNormalized = entry.key;
      final epgWithoutCountry =
          epgNormalized.replaceAll(_countryCodeSufRe, '');
      final epgWithNumbers = convertNumberWords(epgWithoutCountry);
      final epgStripped = stripSuffixes(epgWithNumbers);

      if (epgWithoutCountry.startsWith(normalizedIdWithoutCountry) &&
          normalizedIdWithoutCountry.length >= 4) {
        prefixMatches.add(entry);
        continue;
      }
      if (epgWithNumbers.startsWith(normalizedWithNumbersNoCountry) &&
          normalizedWithNumbersNoCountry.length >= 4) {
        prefixMatches.add(entry);
        continue;
      }
      final channelStripped = stripSuffixes(normalizedWithNumbersNoCountry);
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

    final channelStrippedNumbers =
        stripNumbers(normalizedIdWithoutCountry);
    if (channelStrippedNumbers.length >= 3) {
      final matches = <MapEntry<String, String>>[];
      for (final entry in normalizedKeys.entries) {
        final epgWithoutCountry =
            entry.key.replaceAll(_countryCodeSufRe, '');
        final epgStrippedNumbers = stripNumbers(epgWithoutCountry);
        if (epgStrippedNumbers == channelStrippedNumbers) {
          _channelIdCache[cacheKey] = entry.value;
          return entry.value;
        }
        if (epgStrippedNumbers.startsWith(channelStrippedNumbers)) {
          matches.add(entry);
        }
      }
      if (matches.isNotEmpty) {
        matches.sort((a, b) {
          final aHasLondon = a.value.toLowerCase().contains('london');
          final bHasLondon = b.value.toLowerCase().contains('london');
          if (aHasLondon && !bHasLondon) return -1;
          if (!aHasLondon && bHasLondon) return 1;
          return a.key.length.compareTo(b.key.length);
        });
        final bestMatch = matches.first;
        _channelIdCache[cacheKey] = bestMatch.value;
        return bestMatch.value;
      }
    }

    for (final entry in normalizedKeys.entries) {
      final epgWithoutCountry =
          entry.key.replaceAll(_countryCodeSufRe, '');
      if (normalizedIdWithoutCountry.contains(epgWithoutCountry) &&
          epgWithoutCountry.length >= 4) {
        _channelIdCache[cacheKey] = entry.value;
        return entry.value;
      }
    }

    if (channelName != null && channelName.isNotEmpty) {
      final normalizedName =
          channelName.toLowerCase().replaceAll(_nonAlphaNumRe, '');
      if (normalizedKeys.containsKey(normalizedName)) {
        _channelIdCache[cacheKey] = normalizedKeys[normalizedName];
        return normalizedKeys[normalizedName];
      }
      final cleanedName = normalizedName.replaceAll(_qualitySufRe, '');
      for (final entry in normalizedKeys.entries) {
        final epgWithoutCountry =
            entry.key.replaceAll(_countryCodeSufRe, '');
        if (cleanedName.contains(epgWithoutCountry) &&
            epgWithoutCountry.length >= 3) {
          _channelIdCache[cacheKey] = entry.value;
          return entry.value;
        }
        if (epgWithoutCountry.contains(cleanedName) &&
            cleanedName.length >= 3) {
          _channelIdCache[cacheKey] = entry.value;
          return entry.value;
        }
      }
    }

    String? bestPartialMatch;
    int minLengthDiff = 999;
    for (final key in allEpgKeys) {
      final lowerKey = key.toLowerCase();
      final lowerChannel = channelId.toLowerCase();
      if (lowerKey.contains(lowerChannel)) {
        final diff = lowerKey.length - lowerChannel.length;
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
    final idNorm = channelId.toLowerCase().replaceAll(_nonAlphaNumRe, '');
    searchTerms.add(idNorm);
    searchTerms.add(idNorm.replaceAll(_suffixSufRe, ''));

    if (channelName != null && channelName.isNotEmpty) {
      final nameNorm =
          channelName.toLowerCase().replaceAll(_nonAlphaNumRe, '');
      searchTerms.add(nameNorm);
      searchTerms.add(nameNorm.replaceAll(_suffixSufRe, ''));
      final words = channelName.toLowerCase().split(_wordSepRe);
      for (final word in words) {
        if (word.length >= 3) {
          searchTerms.add(word.replaceAll(_nonAlphaNumRe, ''));
        }
      }
    }

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

    final sorted = scores.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));

    return sorted.take(limit).toList();
  }

  /// Clear the matching cache (call when EPG data changes)
  static void clearCache() {
    _channelIdCache.clear();
  }
}
