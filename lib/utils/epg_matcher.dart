import 'dart:math' as math;

class EpgMatchResult {
  final Map<String, String?> matches; // stream_id -> epg_id (or null if unmatched)
  
  // Report stats
  int matched = 0;
  int inherited = 0;
  int unmatched = 0;
  int skipped = 0;

  EpgMatchResult(this.matches);

  Map<String, int> get report => {
    'matched': matched,
    'inherited': inherited,
    'unmatched': unmatched,
    'skipped': skipped,
  };
}

/// Utilities for matching playlist channels to EPG XMLTV IDs.
class EpgMatcher {
  
  /// Normalizes a channel name or ID for matching purposes according to strict rules.
  static String normalize(String input) {
    if (input.isEmpty) return '';

    String cleaned = input;

    // 1. Remove country prefixes ("AU:", "UK:", "FR:", etc.)
    cleaned = cleaned.replaceAll(RegExp(r'^[a-zA-Z]{2,3}:\s*', caseSensitive: false), '');

    // 2. Remove quality flags
    final qualityRegex = RegExp(r'\b(UHD|4K|HDR|ULTRA|EVENT ONLY)\b', caseSensitive: false);
    cleaned = cleaned.replaceAll(qualityRegex, '');

    // 3. Remove bracketed notes (F), (LOCAL), (EVENT ONLY)
    cleaned = cleaned.replaceAll(RegExp(r'\([^)]*\)'), '');

    // 4. Trim league/team prefixes ("AFL :", "NRL :", "A-LEAGUE :")
    final leaguePrefixRegex = RegExp(r'^(AFL|NRL|A-LEAGUE)\s*:\s*', caseSensitive: false);
    cleaned = cleaned.replaceAll(leaguePrefixRegex, '');

    // 5. Final cleanup: Remove non-alphanumeric, lowercase
    cleaned = cleaned.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();

    return cleaned;
  }

  /// Calculates similarity between two strings using Levenshtein distance.
  /// Returns a value between 0.0 and 1.0.
  static double calculateSimilarity(String s1, String s2) {
    if (s1.isEmpty && s2.isEmpty) return 1.0;
    if (s1.isEmpty || s2.isEmpty) return 0.0;
    if (s1 == s2) return 1.0;

    final dist = _levenshtein(s1, s2);
    final maxLen = math.max(s1.length, s2.length);
    return 1.0 - (dist / maxLen);
  }

  static int _levenshtein(String s, String t) {
    if (s == t) return 0;
    if (s.isEmpty) return t.length;
    if (t.isEmpty) return s.length;

    List<int> v0 = List<int>.generate(t.length + 1, (i) => i);
    List<int> v1 = List<int>.filled(t.length + 1, 0);

    for (int i = 0; i < s.length; i++) {
      v1[0] = i + 1;

      for (int j = 0; j < t.length; j++) {
        int cost = (s.codeUnitAt(i) == t.codeUnitAt(j)) ? 0 : 1;
        v1[j + 1] = math.min(v1[j] + 1, math.min(v0[j + 1] + 1, v0[j] + cost));
      }

      for (int j = 0; j < v0.length; j++) {
        v0[j] = v1[j];
      }
    }

    return v1[t.length];
  }

  /// Main matching function
  static EpgMatchResult matchChannels(
      List<Map<String, dynamic>> playlistChannels, 
      Set<String> epgChannelIds,
      Map<String, String> epgDisplayNames,
      ) {
    
    final matches = <String, String?>{};
    final result = EpgMatchResult(matches);
    final normalizedEpgMap = <String, List<String>>{};

    // Precompute normalized mappings
    // 1. Normalize EPG IDs
    for (final epgId in epgChannelIds) {
      final norm = normalize(epgId);
      if (norm.isNotEmpty) {
        normalizedEpgMap.putIfAbsent(norm, () => []).add(epgId);
      }
    }
    // 2. Normalize Display Names (they might provide better matches than IDs)
    for (final entry in epgDisplayNames.entries) {
      final epgId = entry.key;
      final name = entry.value;
      final norm = normalize(name);
      if (norm.isNotEmpty) {
        // We add the EPG ID here too. 
        // Note: one normalized string might map to multiple EPG IDs.
        final list = normalizedEpgMap.putIfAbsent(norm, () => []);
        if (!list.contains(epgId)) {
          list.add(epgId);
        }
      }
    }

    // Sort valid IDs for determinism
    for (final list in normalizedEpgMap.values) {
      list.sort();
    }

    for (final channel in playlistChannels) {
      final streamId = channel['stream_id']?.toString() ?? '';
      if (streamId.isEmpty) continue;

      final originalTitle = channel['original_title']?.toString() ?? '';
      String? rawEpgId = channel['epg_id']?.toString();

      // Check for dummy
      if (rawEpgId != null && rawEpgId == 'StreamingOnThisService.bossdummy') {
        result.skipped++;
        rawEpgId = null; // Treat as missing
      }

      // Rule 1: direct epg_id match
      if (rawEpgId != null && rawEpgId.isNotEmpty) {
        matches[streamId] = rawEpgId;
        result.matched++;
        continue;
      }

      // Rule 2: Normalization
      final normTitle = normalize(originalTitle);
      
      // Attempt strict normalized match
      if (normalizedEpgMap.containsKey(normTitle)) {
         final candidates = normalizedEpgMap[normTitle]!;
         // Deterministic: pick first sorted candidate
         matches[streamId] = candidates.first; 
         
         // Inherited check: simple heuristic
         // If original title had quality tags, count as inherited?
         final hasQuality = originalTitle.contains(RegExp(r'\b(4K|UHD|HDR)\b', caseSensitive: false));
         if (hasQuality) {
           result.inherited++;
         } else {
           result.matched++;
         }
         continue;
      }

      // Rule 3: Fuzzy match
      // Only if we have some substance
      if (normTitle.length >= 3) {
        String? bestMatch;
        double maxScore = 0.0;
        
        for (final helperKey in normalizedEpgMap.keys) {
          final score = calculateSimilarity(normTitle, helperKey);
          if (score >= 0.85) {
             if (score > maxScore) {
               maxScore = score;
               bestMatch = normalizedEpgMap[helperKey]!.first;
             }
          }
        }

        if (bestMatch != null) {
          matches[streamId] = bestMatch;
          result.matched++; // Count fuzzy as matched
          continue;
        }
      }

      // Unmatched
      matches[streamId] = null;
      result.unmatched++;
    }

    return result;
  }
}
