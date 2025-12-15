import 'dart:math';

/// Utility class for EPG channel matching algorithms
/// Extracted from EPGService to improve maintainability and testability
class EPGMatchingUtils {
  /// Cache for channel ID mapping (tvgId -> epgKey)
  static final Map<String, String?> _channelIdCache = {};

  /// Convert number words to digits for better matching
  static String convertNumberWords(String text) {
    final conversions = {
      'one': '1', 'two': '2', 'three': '3', 'four': '4', 'five': '5',
      'six': '6', 'seven': '7', 'eight': '8', 'nine': '9', 'ten': '10',
      '1st': '1', '2nd': '2', '3rd': '3', '4th': '4', '5th': '5',
    };

    String result = text.toLowerCase();
    for (final entry in conversions.entries) {
      result = result.replaceAll(entry.key, entry.value);
    }
    return result;
  }

  /// Strip numbers from channel names for fuzzy matching
  static String stripNumbers(String text) {
    return text.replaceAll(RegExp(r'\d+'), '');
  }

  /// Strip common suffixes like HD, UHD, FHD, regional variants
  static String stripSuffixes(String text) {
    return text
        .replaceAll(
            RegExp(r'(uhd|fhd|hd|sd|4k|1080p|720p)$', caseSensitive: false), '')
        .replaceAll(
            RegExp(r'(london|scotland|wales|ireland|ni|channelislands)$',
                caseSensitive: false),
            '');
  }

  /// Calculate similarity score between two strings (0.0 to 1.0)
  static double calculateSimilarity(String a, String b) {
    if (a.isEmpty || b.isEmpty) return 0.0;
    if (a == b) return 1.0;

    final aNorm = a.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
    final bNorm = b.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');

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
    final normalized = withoutDomain.replaceAll(RegExp(r'[^a-z0-9]'), '');

    // Add the full normalized name
    if (normalized.length >= 3) parts.add(normalized);

    // Remove common suffixes
    final withoutSuffix = normalized.replaceAll(
        RegExp(r'(hd|fhd|uhd|4k|sd|uk|us|ca|au|east|west)$'), '');
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
      final normalized =
          key.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
      normalizedEpgKeys[normalized] = key;

      // Also add without domain suffix
      final withoutDomain = key
          .split('.')
          .first
          .toLowerCase()
          .replaceAll(RegExp(r'[^a-z0-9]'), '');
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
    final normalizedId =
        channelId.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
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
    final normalizedIdWithoutCountry =
        normalizedId.replaceAll(RegExp(r'(uk|us|ca|au|ie|pt|hk)$'), '');
    final normalizedIdWithNumbersNoCountry = normalizedWithNumbers.replaceAll(
        RegExp(r'(uk|us|ca|au|ie|pt|hk)$'), '');
    final List<MapEntry<String, String>> prefixMatches = [];
    for (final entry in normalizedKeys.entries) {
      final epgNormalized = entry.key;
      final epgWithoutCountry =
          epgNormalized.replaceAll(RegExp(r'(uk|us|ca|au|ie|pt|hk)$'), '');
      final epgWithNumbers = convertNumberWords(epgWithoutCountry);
      final epgStripped = stripSuffixes(epgWithNumbers);
      if (epgWithoutCountry.startsWith(normalizedIdWithoutCountry) &&
          normalizedIdWithoutCountry.length >= 4) {
        prefixMatches.add(entry);
        continue;
      }
      if (epgWithNumbers.startsWith(normalizedIdWithNumbersNoCountry) &&
          normalizedIdWithNumbersNoCountry.length >= 4) {
        prefixMatches.add(entry);
        continue;
      }
      final channelStripped = stripSuffixes(normalizedIdWithNumbersNoCountry);
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
    final channelStrippedNumbers = stripNumbers(normalizedIdWithoutCountry);
    if (channelStrippedNumbers.length >= 3) {
      for (final entry in normalizedKeys.entries) {
        final epgNormalized = entry.key;
        final epgWithoutCountry =
            epgNormalized.replaceAll(RegExp(r'(uk|us|ca|au|ie|pt|hk)$'), '');
        final epgStrippedNumbers = stripNumbers(epgWithoutCountry);
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
      final epgWithoutCountry =
          epgNormalized.replaceAll(RegExp(r'(uk|us|ca|au|ie|pt|hk)$'), '');
      if (normalizedIdWithoutCountry.contains(epgWithoutCountry) &&
          epgWithoutCountry.length >= 4) {
        _channelIdCache[cacheKey] = entry.value;
        return entry.value;
      }
    }
    
    // Try matching by channel NAME if provided
    if (channelName != null && channelName.isNotEmpty) {
      final normalizedName =
          channelName.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
      if (normalizedKeys.containsKey(normalizedName)) {
        _channelIdCache[cacheKey] = normalizedKeys[normalizedName];
        return normalizedKeys[normalizedName];
      }
      final cleanedName = normalizedName.replaceAll(
          RegExp(r'(hd|fhd|uhd|4k|sd|1080p|720p)$'), '');
      for (final entry in normalizedKeys.entries) {
        final epgNormalized = entry.key;
        final epgWithoutCountry =
            epgNormalized.replaceAll(RegExp(r'(uk|us|ca|au|ie|pt|hk)$'), '');
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
    
    // Try partial match
    for (final key in allEpgKeys) {
      if (key.toLowerCase().contains(lowerChannelId) ||
          lowerChannelId.contains(key.toLowerCase())) {
        _channelIdCache[cacheKey] = key;
        return key;
      }
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
    final idNorm = channelId.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
    searchTerms.add(idNorm);
    searchTerms
        .add(idNorm.replaceAll(RegExp(r'(hd|fhd|uhd|4k|sd|uk|us)$'), ''));

    // Add channel name variations
    if (channelName != null && channelName.isNotEmpty) {
      final nameNorm =
          channelName.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
      searchTerms.add(nameNorm);
      searchTerms
          .add(nameNorm.replaceAll(RegExp(r'(hd|fhd|uhd|4k|sd|uk|us)$'), ''));

      // Also add individual words from the name
      final words = channelName.toLowerCase().split(RegExp(r'[\s\-_\.]+'));
      for (final word in words) {
        if (word.length >= 3) {
          searchTerms.add(word.replaceAll(RegExp(r'[^a-z0-9]'), ''));
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
