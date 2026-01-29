

/// Utility class for EPG channel matching algorithms.
///
/// Implements a Tiered Matching Pipeline:
/// 1. Exact ID Match (handled by caller)
/// 2. Exact Name Match (handled by caller using candidate maps)
/// 3. Normalized "Fingerprint" Match (aggressive normalization)
/// 4. Token-Based Jaccard Match (overlap)
/// 5. Fuzzy Levenshtein Match (fallback)
class EPGMatchingUtils {
  // --- Constants for Jaccard/Token matching ---
  static const int _minTokenLength = 2; // Reduced to 2 to catch "UK", "US", "BBC 1" -> "1"
  static final RegExp _fuzzyTokenSplitRe = RegExp(r'[^a-zA-Z0-9]+');

  // --- Normalization Regexes ---
  static final RegExp invalidXmlCharRe = RegExp(r'[\x00-\x08\x0B\x0C\x0E-\x1F]');
  static final RegExp unbrokenEntityRe = RegExp(r'&(?![a-zA-Z]+;|#\d+;|#x[0-9a-fA-F]+;)');
  static final RegExp timeParseRe = RegExp(r'^(\d{4})(\d{2})(\d{2})(\d{2})(\d{2})(\d{2})(?:\s*([+-]\d{4}))?');
  
  // Specific noise words to strip for channel matching
  static final RegExp _noiseTokensRe = RegExp(
      r'(\bvip\b|\btrial\b|\btest\b|\bbackup\b|\bstable\b|\badult\b|\bxxx\b|\bpromo\b|\bpreview\b|\b24\/7\b|\bpaid\s+programming\b|\bhome\s+shopping\b|\bhomeshopping\b|\binfomercial\b|\bsponsored\b|\bpromotion\b|\bcommercial\b|\badvertisement\b)',
      caseSensitive: false);
      
  // Tech labels (resolution, codec)
  static final RegExp _techLabelsRe = RegExp(
      r'(\bh264\b|\bh265\b|\bhevc\b|\bhdr\b|\bdolby\b|\batmos\b|\b5\.1\b|\b7\.1\b|\bac3\b|\baac\b|\bddp\b|\bdd\b|\bstereo\b|\bsurround\b|\b4k\b|\buhd\b|\bfhd\b|\bhd\b|\bsd\b|\b720p\b|\b1080p\b|\b50fps\b|\b60fps\b)',
      caseSensitive: false);

  // Region prefixes/suffixes to strip (e.g., "UK:", "PL:", "(US)")
  static final RegExp _regionPrefixRe = RegExp(r'^([A-Z]{2,3})[:|]\s*', caseSensitive: false);
  static final RegExp _regionSuffixRe = RegExp(r'[\s(\[]+(UK|US|USA|CA|AU|PL|DE|IT|FR|ES|AR|TR|SE|NO|DK|FI|NL|BE|CH)[:|\])]*$', caseSensitive: false);

  // Common numbering variants
  static final RegExp _plusOneRe = RegExp(r'(\bplus\s*1\b|\+1\b)', caseSensitive: false);
  static final RegExp _commonConnectorsRe = RegExp(r'\b(and|&|en|y|et|und)\b', caseSensitive: false);
  
  // Punctuation/Brackets to strip
  static final RegExp _bracketsRe = RegExp(r'[\[\(\{].*?[\]\)\}]');
  static final RegExp _nonAlphaNumRe = RegExp(r'[^a-z0-9]+');

  // --- Normalization for Artwork/Programs (Retained from previous version) ---
  static final RegExp _dashColonRe = RegExp(r'\s*[-:]\s*');
  static final RegExp _seasonEpisodeRe = RegExp(r'\bs\d{1,2}e\d{1,2}\b', caseSensitive: false);
  static final RegExp _seasonRe = RegExp(r'\bseason\s+\d+\b', caseSensitive: false);
  static final RegExp _episodeRe = RegExp(r'\bepisode\s+\d+\b', caseSensitive: false);
  static final RegExp _partRe = RegExp(r'\bpart\s+\d+\b', caseSensitive: false);
  static final RegExp _yearSuffixRe = RegExp(r'\s*[-:]\s*(19|20)\d{2}\s*$');
  static final RegExp _yearParenRe = RegExp(r'\s*[\(\[]?(19|20)\d{2}[\)\]]?\s*$');
  static final RegExp _multiSpaceRe = RegExp(r'\s+');

  static const Map<String, String> _numberWordMap = {
    'one': '1', 'two': '2', 'three': '3', 'four': '4', 'five': '5',
    'six': '6', 'seven': '7', 'eight': '8', 'nine': '9', 'ten': '10',
    'uno': '1', 'primero': '1'
  };

  static const Map<String, String> _commonAbbrevMap = {
    'nat': 'national', 'geo': 'geographic', 'int': 'international',
    'intl': 'international', 'sport': 'sports',
    // Common regional abbreviations
    'us': 'usa', 'uk': 'united kingdom', 'de': 'germany', 'fr': 'france'
  };

  /// Cleans the channel name but preserves word structure (for tokenization).
  static String cleanChannelName(String input) {
    if (input.isEmpty) return '';
    var s = input.toLowerCase();

    // 1. Strip brackets and contents
    s = s.replaceAll(_bracketsRe, ' ');

    // 2. Strip region prefixes
    s = s.replaceAll(_regionPrefixRe, '');
    
    // 3. Strip region suffixes
    s = s.replaceAll(_regionSuffixRe, '');

    // 4. Strip tech labels
    s = s.replaceAll(_techLabelsRe, ' ');

    // 5. Strip noise tokens
    s = s.replaceAll(_noiseTokensRe, ' ');

    // 6. Standardize "+1"
    s = s.replaceAll(_plusOneRe, ' plusone ');

    // 7. Standardize connectors
    s = s.replaceAll(_commonConnectorsRe, ' and ');

    // 8. Expand abbreviations (NEW)
    _commonAbbrevMap.forEach((abbr, full) {
       s = s.replaceAll(RegExp(r'\b' + abbr + r'\b'), full);
    });

    // 9. Convert number words
    _numberWordMap.forEach((word, digit) {
      s = s.replaceAll(RegExp(r'\b' + word + r'\b'), digit);
    });
    
    return s.trim();
  }

  /// Aggressively normalizes a channel name to create a "fingerprint" (collapsed).
  /// Used for Tier 3 matching.
  static String normalizeChannelName(String input) {
    var s = cleanChannelName(input);
    // Collapse to only alphanumeric chars
    s = s.replaceAll(_nonAlphaNumRe, '');
    return s;
  }

  /// Tokenizes a string for Jaccard/Overlap matching (Tier 4).
  static Set<String> tokenize(String input) {
    // Use the shared cleaning logic so tokens match the normalization assumptions
    final cleaned = cleanChannelName(input);
    
    return cleaned.split(_fuzzyTokenSplitRe)
        .where((t) => t.isNotEmpty && (t.length >= _minTokenLength || RegExp(r'\d').hasMatch(t)))
        .toSet();
  }

  /// Calculates a match score (0.0 - 100.0) between a playlist name and an EPG candidate.
  /// Uses a blend of Jaccard Index (token overlap) and Levenshtein distance.
  static double calculateMatchScore(
    String playlistName, 
    EpgMatchCandidate candidate, {
    Set<String>? playlistTokens,
  }) {
    // 1. Normalized Fingerprint Match (Tier 3 check repeated for scoring)
    final plNorm = normalizeChannelName(playlistName);
    if (plNorm == candidate.normalizedName && plNorm.isNotEmpty) {
      return 100.0; // Perfect normalized match
    }

    // 2. Jaccard Token Score (Tier 4)
    final plTokens = playlistTokens ?? tokenize(playlistName);
    if (plTokens.isEmpty || candidate.tokens.isEmpty) return 0.0;

    final intersection = plTokens.intersection(candidate.tokens).length;
    final union = plTokens.union(candidate.tokens).length;
    final jaccard = (intersection / union) * 100.0;

    // Boost score if significant subset
    // e.g. "BBC One FHD" (tokens: bbc, one) vs "BBC One" (tokens: bbc, one)
    // Intersection=2, Union=2 -> 100%
    // "BBC One London" (bbc, one, london) vs "BBC One" (bbc, one)
    // Intersection=2, Union=3 -> 66% -> This might be too low.
    
    // Asymmetric Overlap Score (Subset match)
    // How much of the EPG candidate is covered by the Playlist name?
    // If Playlist is "BBC One London" and EPG is "BBC One", coverage is 100%.
    final candidateCoverage = (intersection / candidate.tokens.length) * 100.0;
    
    // How much of Playlist is covered by EPG? 
    // If Playlist is "BBC One" and EPG is "BBC One London", playlist coverage is 100%.
    final playlistCoverage = (intersection / plTokens.length) * 100.0;

    final bestOverlap = (candidateCoverage > playlistCoverage) ? candidateCoverage : playlistCoverage;

    // 3. Levenshtein (Tier 5 - expensive, use conditionally)
    // Only calculate if we have decent overlap or short strings
    double levenshteinScore = 0.0;
    if (bestOverlap > 50.0 || plNorm.length < 5) {
      final dist = levenshteinDistance(plNorm, candidate.normalizedName);
      final maxLength = (plNorm.length > candidate.normalizedName.length) 
          ? plNorm.length 
          : candidate.normalizedName.length;
      if (maxLength > 0) {
        levenshteinScore = (1.0 - (dist / maxLength)) * 100.0;
      }
    }

    // Weighted Score
    // Jaccard is reliable for word reordering. Levenshtein for typos.
    // Overlap is best for regional variants.
    
    // If overlap is perfect (one is subset of other), return high high score
    if (candidateCoverage >= 100.0 || playlistCoverage >= 100.0) {
      // Penalize strictly by length difference to prefer exact matches
      final lenDiff = (plNorm.length - candidate.normalizedName.length).abs();
      if (lenDiff < 3) return 95.0; // Very close subset
      return 85.0; // Subset match (e.g. region variation)
    }

    return (jaccard > levenshteinScore) ? jaccard : levenshteinScore;
  }

  // --- Utility Functions ---

  /// Compute Levenshtein edit distance
  static int levenshteinDistance(String s, String t) {
    if (s == t) return 0;
    if (s.isEmpty) return t.length;
    if (t.isEmpty) return s.length;

    List<int> v0 = List<int>.generate(t.length + 1, (i) => i);
    List<int> v1 = List<int>.filled(t.length + 1, 0);

    for (int i = 0; i < s.length; i++) {
      v1[0] = i + 1;
      for (int j = 0; j < t.length; j++) {
        int cost = (s.codeUnitAt(i) == t.codeUnitAt(j)) ? 0 : 1;
        v1[j + 1] = [
          v1[j] + 1,
          v0[j + 1] + 1,
          v0[j] + cost
        ].reduce((min, e) => e < min ? e : min);
      }
      for (int j = 0; j <= t.length; j++) {
        v0[j] = v1[j];
      }
    }
    return v1[t.length];
  }

  // --- Legacy helpers retained for artwork/programs ---

  static String normalizeForArtwork(String title) {
    var normalized = title.toLowerCase();
    normalized = normalized.replaceAll(_dashColonRe, ' ');
    normalized = normalized.replaceAll(_bracketsRe, ' ');
    normalized = normalized.replaceAll(_seasonEpisodeRe, '');
    normalized = normalized.replaceAll(_seasonRe, '');
    normalized = normalized.replaceAll(_episodeRe, '');
    normalized = normalized.replaceAll(_partRe, '');
    normalized = normalized.replaceAll(_yearSuffixRe, '');
    normalized = normalized.replaceAll(_yearParenRe, '');
    normalized = normalized.replaceAll(_triggerWordRe, ''); 
    normalized = normalized.replaceAll(_multiSpaceRe, ' ').trim();
    return normalized.isEmpty ? title : normalized;
  }
  
  // Re-add removed trigger regex locally for legacy support if needed
  static final RegExp _triggerWordRe = RegExp(r'\b(news|live|sports)\b', caseSensitive: false);

  static String normalizeForFilter(String text) {
    // Legacy support for older usages
    return normalizeChannelName(text);
  }

  // --- Restored Legacy Methods for Build Compatibility ---

  static bool isLikelyNewsTitle(String title) {
    if (title.isEmpty) return false;
    final lower = title.toLowerCase();
    return lower.contains('news') ||
        lower.contains('report') ||
        lower.contains('briefing') ||
        lower.contains('update') ||
        lower.contains('live coverage') ||
        lower.contains('bulletin') ||
        lower.contains('weather') ||
        lower.contains('sport') ||
        lower.contains('journal');
  }

  static String normalizeForDisplayTitle(String title, {bool stripEpisodeSubtitle = false}) {
    // Legacy signature support
    if (stripEpisodeSubtitle) {
       return stripEpisodeSubtitleLoose(normalizeForArtwork(title));
    }
    return normalizeForArtwork(title);
  }

  static String stripEpisodeSubtitleLoose(String title) {
    // Basic implementation to strip common subtitle separators
    var s = title;
    // "Show Name: Episode Name" -> "Show Name"
    if (s.contains(':')) {
       s = s.split(':').first;
    }
    // "Show Name - Episode Name" -> "Show Name"
    if (s.contains(' - ')) {
       s = s.split(' - ').first;
    }
    return s.trim();
  }
  static Set<String> tokenizeForFuzzyMatch(String title) {
     return tokenize(title);
  }

  static double scoreFuzzyMatch(
      String titleA, String titleB, Set<String> tokensA, Set<String> tokensB) {
    // Simple Jaccard
    final intersection = tokensA.intersection(tokensB).length;
    final union = tokensA.union(tokensB).length;
    if (union == 0) return 0.0;
    
    return (intersection / union) * 100.0;
  }

  static bool isGenericTitle(String title) {
    if (title.isEmpty) return true;
    final lower = title.toLowerCase();
    return lower.contains('news') || 
           lower.contains('sports') || 
           lower.startsWith('episode ') ||
           lower.startsWith('series ') ||
           lower == 'movie' ||
           lower == 'film' ||
           lower == 'to be announced' ||
           lower == 'tba';
  }

  static String normalizeArtworkVariant(String title) {
    return normalizeForArtwork(title);
  }
  
  static String normalizeTitleForLookup(String title, {bool aggressiveForNews = false}) {
     // Shim for existing calls
     return normalizeForArtwork(title);
  }
}

/// Represents a potential match candidate from the EPG.
class EpgMatchCandidate {
  final String id;
  final String displayName;
  final String normalizedName;
  final Set<String> tokens;

  EpgMatchCandidate({
    required this.id,
    required this.displayName,
    String? normalized,
  }) : 
    normalizedName = normalized ?? EPGMatchingUtils.normalizeChannelName(displayName),
    tokens = EPGMatchingUtils.tokenize(displayName);

  @override
  String toString() => 'Candidate($id, "$displayName")';
}
