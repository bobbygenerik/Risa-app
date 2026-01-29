/// Utility class for EPG channel matching algorithms
/// Extracted from EPGService to improve maintainability and testability
class EPGMatchingUtils {
  /// Candidate used for fuzzy channel matching.
  static const int _minTokenLength = 3;

  static final RegExp _fuzzyTokenSplitRe = RegExp(r'[^a-z0-9]+');
  
  // --- New Robust Normalization Regexes ---
  static final RegExp httpSchemeRe = RegExp(r'https?://', caseSensitive: false);
  static final RegExp schemeValidRe = RegExp(r'^[A-Za-z]');
  static final RegExp invalidXmlCharRe = RegExp(r'[\x00-\x08\x0B\x0C\x0E-\x1F]');
  static final RegExp unbrokenEntityRe = RegExp(r'&(?![a-zA-Z]+;|#\d+;|#x[0-9a-fA-F]+;)');
  static final RegExp timeParseRe = RegExp(r'^(\d{4})(\d{2})(\d{2})(\d{2})(\d{2})(\d{2})(?:\s*([+-]\d{4}))?');
  static final RegExp trailingSlashRe = RegExp(r'/+$');
  static final RegExp bracketsRe = RegExp(r'[\[\(\{].*?[\]\)\}]');
  static final RegExp commonPrefixRe = RegExp(r'^[A-Z]{2,3}[:|]\s*', caseSensitive: false);
  static final RegExp leadingNumberRe = RegExp(r'^([0-9]+)[\s\-_.]+(.*)$');
  static final RegExp noiseTokensRe = RegExp(
      r'(\bvip\b|\btrial\b|\btest\b|\bbackup\b|\bstable\b|\badult\b|\bxxx\b|\bpromo\b|\bpreview\b|\b24\/7\b|\bpaid\s+programming\b|\bhome\s+shopping\b|\bhomeshopping\b|\binfomercial\b|\bsponsored\b|\bpromotion\b|\bcommercial\b|\badvertisement\b)',
      caseSensitive: false);
  static final RegExp _techLabelsRe = RegExp(
      r'(\bh264\b|\bh265\b|\bhevc\b|\bhdr\b|\bdolby\b|\batmos\b|\b5\.1\b|\b7\.1\b|\bac3\b|\baac\b|\bddp\b|\bdd\b|\bstereo\b|\bsurround\b|\b4k\b|\buhd\b|\bfhd\b|\bhd\b|\bsd\b|\b720p\b|\b1080p\b|\bhb\b|\blb\b)',
      caseSensitive: false);
  static final RegExp _langSufRe = RegExp(
      r'(\ben\b|\bes\b|\bfr\b|\bar\b|\bit\b|\bde\b|\bru\b|\bpt\b|\btr\b|\bpl\b|\bnl\b|\bse\b|\bno\b|\bdk\b|\bfi\b|\bcz\b|\bsk\b)$',
      caseSensitive: false);
  static final RegExp _catchupMarkersRe = RegExp(
      r'(catchup|timeshift|timeshifted|shifted|rebroadcast)',
      caseSensitive: false);
  static final RegExp _sepRe = RegExp(r'[|._]+');
  static final RegExp _multiSpaceRe = RegExp(r'\s+');
  static final RegExp _qualitySufRe = RegExp(
      r'[|]\s*(hd|fhd|uhd|4k|sd|720p|1080p)|(uhd|fhd|hd|sd|4k|1080p|720p)$', 
      caseSensitive: false);
  static final RegExp _nonAlphaNumRe = RegExp(r'[^a-z0-9]');
  static final RegExp _techChPrefixRe = RegExp(r'^(ch|channel)([0-9a-f]{6,}|\d{3,})$');
  static final RegExp _plusOneSufRe = RegExp(r'(plus1|plusone|\+1|\+2)$');

  static const Map<String, String> _commonWordReplacements = {
    'noticias': 'news',
    'newses': 'news',
    'cine': 'movies',
    'peliculas': 'movies',
    'filmes': 'movies',
    'canal': 'channel',
    'canale': 'channel',
    'sport': 'sports',
    'deportes': 'sports',
    'futbol': 'football',
    'fútbol': 'football',
    'musica': 'music',
    'musik': 'music',
    'kids': 'kids',
    'ninos': 'kids',
    'infantil': 'kids',
  };

  static final RegExp _commonWordReplacementsRe =
      RegExp(r'\b(' + _commonWordReplacements.keys.join('|') + r')\b');

  /// Normalize per fuzzy matching spec: lowercase + strip non-alphanumeric.
  static String normalizeForFuzzyMatch(String text) {
    if (text.isEmpty) return '';

    // Remove diacritics (España -> espana) and bracketed clutter tags.
    var clean = _removeDiacritics(text);
    clean = clean.replaceAll(bracketsRe, ' ');

    // Strip common prefixes like "UK:", "US|", and leading channel numbers "001-".
    clean = clean.replaceAll(commonPrefixRe, '');
    // Strip leading channel numbers "001-", but only if not purely numeric.
    final numMatch = leadingNumberRe.firstMatch(clean);
    if (numMatch != null) {
      final remainder = numMatch.group(2) ?? '';
      if (remainder.trim().isNotEmpty) {
        clean = remainder;
      }
    }

    // Strip promo/noise tokens and tech labels.
    clean = clean.replaceAll(noiseTokensRe, ' ');
    clean = clean.replaceAll(_techLabelsRe, ' ');

    // Drop language/region suffix tokens (but keep the base).
    clean = clean.replaceAll(_langSufRe, '');

    // Remove common catchup/time-shift markers.
    clean = clean.replaceAll(_catchupMarkersRe, '');

    // Translate common non-English labels to English keywords.
    clean = _translateCommonWords(clean);

    // Normalize separators and trim.
    clean = clean.replaceAll(_sepRe, ' ');
    clean = clean.replaceAll(_multiSpaceRe, ' ').trim();

    // Strip quality suffixes after normalization.
    clean = clean.replaceAll(_qualitySufRe, '');

    // Convert ampersand and plus before stripping non-alphanumeric.
    // This allows "A&E" to match "AandE" and "AMC+" to match "AMC Plus".
    clean = clean.replaceAll('&', 'and');
    clean = clean.replaceAll('+', ' plus ');

    String normalized = clean.toLowerCase().replaceAll(_nonAlphaNumRe, '');

    // Strip technical channel prefixes like "ch_" or "channel" when followed
    // by a long numeric/hex identifier (common in XMLTV ids).
    final match = _techChPrefixRe.firstMatch(normalized);
    if (match != null) {
      normalized = match.group(2) ?? normalized;
    }

    // Collapse "plus1"/"plusone" and "+1/+2" variants.
    normalized = normalized.replaceAll(_plusOneSufRe, '');

    return convertNumberWords(normalized);
  }

  static String _removeDiacritics(String input) {
    const Map<String, String> map = {
      'á': 'a', 'à': 'a', 'ä': 'a', 'â': 'a', 'ã': 'a', 'å': 'a',
      'č': 'c', 'ç': 'c',
      'ď': 'd',
      'é': 'e', 'è': 'e', 'ë': 'e', 'ê': 'e', 'ě': 'e',
      'í': 'i', 'ì': 'i', 'ï': 'i', 'î': 'i',
      'ľ': 'l', 'ĺ': 'l',
      'ń': 'n', 'ň': 'n', 'ñ': 'n',
      'ó': 'o', 'ò': 'o', 'ö': 'o', 'ô': 'o', 'õ': 'o',
      'ř': 'r', 'ŕ': 'r',
      'š': 's', 'ś': 's',
      'ť': 't',
      'ú': 'u', 'ù': 'u', 'ü': 'u', 'û': 'u',
      'ý': 'y',
      'ž': 'z', 'ź': 'z',
    };
    final buffer = StringBuffer();
    for (final rune in input.runes) {
      final ch = String.fromCharCode(rune);
      final lower = ch.toLowerCase();
      buffer.write(map[lower] ?? ch);
    }
    return buffer.toString();
  }

  static String _translateCommonWords(String input) {
    if (input.isEmpty) return input;
    return input.toLowerCase().replaceAllMapped(_commonWordReplacementsRe,
        (match) => _commonWordReplacements[match.group(0)!] ?? match.group(0)!);
  }

  // Placeholder removed.

  /// Compute Levenshtein edit distance between two strings
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

  /// Tokenize per fuzzy matching spec: split into words, drop <=2 chars.
  static List<String> tokenizeForFuzzyMatch(String text) {
    if (text.isEmpty) return const [];
    final tokens = text
        .toLowerCase()
        .split(_fuzzyTokenSplitRe)
        .where((t) => t.length >= _minTokenLength)
        .toList();
    return tokens;
  }

  /// Compute token intersection score as defined in the spec.
  static double tokenIntersectionScore(
    List<String> tokens1,
    List<String> tokens2,
  ) {
    if (tokens1.isEmpty || tokens2.isEmpty) return 0.0;
    int matches = 0;
    for (final t1 in tokens1) {
      for (final t2 in tokens2) {
        if (t2.contains(t1)) {
          matches++;
          break;
        }
      }
    }
    final denom = tokens1.length > tokens2.length ? tokens1.length : tokens2.length;
    if (denom == 0) return 0.0;
    return (matches / denom) * 80.0;
  }

  /// Score a single candidate per multi-tier spec.
  static double scoreFuzzyMatch(
    String m3uName,
    String epgName,
    List<String> m3uTokens,
    List<String> epgTokens,
  ) {
    final m3uNorm = normalizeForFuzzyMatch(m3uName);
    final epgNorm = normalizeForFuzzyMatch(epgName);
    
    if (m3uNorm.isEmpty || epgNorm.isEmpty) return 0.0;

    // 1. Exact match (strongest)
    if (m3uNorm == epgNorm) {
      return 100.0;
    }

    // 2. Contains match (strong)
    if (m3uNorm.contains(epgNorm) || epgNorm.contains(m3uNorm)) {
      // Penalty for length difference to avoid over-matching "NBC" to "CNBC"
      final lenDiff = (m3uNorm.length - epgNorm.length).abs();
      if (lenDiff < 3) return 95.0;
      return 85.0;
    }
    
    // 3. Levenshtein Distance (for typos/minor differences)
    // Only verify if strings are somewhat similar in length
    final lenDiff = (m3uNorm.length - epgNorm.length).abs();
    if (lenDiff <= 3) {
      final dist = levenshteinDistance(m3uNorm, epgNorm);
      if (dist <= 1) return 95.0; // Very close
      if (dist <= 2 && m3uNorm.length > 4) return 80.0; // Close enough for longer words
    }

    // 4. Token Intersection (fallback)
    return tokenIntersectionScore(m3uTokens, epgTokens);
  }

  /// Find the best fuzzy match among candidates.
  static MapEntry<String, double>? findBestFuzzyMatch(
    String m3uName,
    List<MapEntry<String, String>> epgNameCandidates,
  ) {
    if (m3uName.trim().isEmpty || epgNameCandidates.isEmpty) {
      return null;
    }
    
    // Pre-calculate M3U tokens once
    final m3uTokens = tokenizeForFuzzyMatch(m3uName);
    
    var bestScore = 0.0;
    String? bestId;
    
    for (final entry in epgNameCandidates) {
      final epgName = entry.value;
      
      // Compute score
      // Note: We compute epgTokens inside scoreFuzzyMatch loop or pass them.
      // Optimizing: tokenize internally or expect caller to pass?
      // For now, keep it simple as originally designed: re-tokenize or just pass empty if unused by strict match
      
      final epgTokens = tokenizeForFuzzyMatch(epgName);
      final score = scoreFuzzyMatch(m3uName, epgName, m3uTokens, epgTokens);

      if (score > bestScore) {
        bestScore = score;
        bestId = entry.key;
        if (bestScore >= 100.0) break; // Optimization: early exit on perfect match
      }
    }
    
    if (bestId != null && bestScore > 30.0) {
      return MapEntry(bestId, bestScore);
    }
    return null;
  }
  /// Cache for channel ID mapping (tvgId -> epgKey)
  static final Map<String, String?> _channelIdCache = {};

  static final RegExp _digitsRe = RegExp(r'\d+');
  // _qualitySufRe is duplicate (see top of file)
  
  // Regional suffixes: Only strip when clearly separated by word boundary patterns
  // Using common patterns like numeric prefix or repeated letters to detect boundaries
  // This prevents 'amcwest' from becoming 'amc' while still handling 'bbc1scotland'
  static final RegExp _regionSufRe = RegExp(
      r'(?<=[0-9])(london|scotland|wales|ireland|ni|channelislands|manchester|birmingham|leeds|yorkshire|north|south|east|west|northeast|northwest|southeast|southwest|midlands)$',
      caseSensitive: false);
  // Quality suffixes only - don't strip regional identifiers like east/west here
  static final RegExp _suffixSufRe = RegExp(
      r'(hd|fhd|uhd|4k|sd|uk|us|ca|au)$',
      caseSensitive: false);
  static final RegExp _timeRe =
      RegExp(r'\b\d{1,2}(:\d{2})?\s?(am|pm)\b', caseSensitive: false);
  static final RegExp _shortTimeRe =
      RegExp(r'\b\d{1,2}\s*[ap]\b', caseSensitive: false);
  static final RegExp _callSignRe = RegExp(r'^\s*[A-Z]{3,4}\b');
  // _noiseTokensRe is duplicate (see top of file)

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
  // _multiSpaceRe is duplicate
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
    normalized = normalized.replaceAll(noiseTokensRe, '');

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

  /// Convert number words to digits for better matching
  static String convertNumberWords(String text) {
    const conversions = {
      'zero': '0',
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
      'eleven': '11',
      'twelve': '12',
      'thirteen': '13',
      'fourteen': '14',
      'fifteen': '15',
      'sixteen': '16',
      'seventeen': '17',
      'eighteen': '18',
      'nineteen': '19',
      'twenty': '20',
      '1st': '1',
      '2nd': '2',
      '3rd': '3',
      '4th': '4',
      '5th': '5',
    };

    String result = text.toLowerCase();
    conversions.forEach((key, value) {
      if (result.contains(key)) {
        result = result.replaceAll(key, value);
      }
    });
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

  /// Find the best matching EPG key for a channel.
  ///
  /// Deprecated: prefer using the tiered fuzzy matcher directly.
  static String? findEpgKey(
    String channelId,
    String? channelName,
    Set<String> allEpgKeys,
    Map<String, String> manualMappings,
  ) {
    final cacheKey = '$channelId|${channelName ?? ''}';

    // Manual mapping still takes priority.
    if (manualMappings.containsKey(channelId)) {
      final manualKey = manualMappings[channelId]!;
      if (allEpgKeys.contains(manualKey)) {
        return manualKey;
      }
    }

    if (_channelIdCache.containsKey(cacheKey)) {
      return _channelIdCache[cacheKey];
    }

    final searchName = (channelName != null && channelName.trim().isNotEmpty)
        ? channelName
        : channelId;
    if (searchName.trim().isEmpty || allEpgKeys.isEmpty) {
      _channelIdCache[cacheKey] = null;
      return null;
    }

    final candidates =
        allEpgKeys.map((id) => MapEntry(id, id)).toList();
    final best = findBestFuzzyMatch(searchName, candidates);
    if (best != null) {
      _channelIdCache[cacheKey] = best.key;
      return best.key;
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
    if (allEpgKeys.isEmpty) return const [];

    final terms = <String>[];
    if (channelName != null && channelName.trim().isNotEmpty) {
      terms.add(channelName);
    }
    if (channelId.trim().isNotEmpty) {
      terms.add(channelId);
    }
    if (terms.isEmpty) return const [];

    final termTokens = <String, List<String>>{};
    for (final term in terms) {
      termTokens[term] = tokenizeForFuzzyMatch(term);
    }

    final scores = <String, double>{};
    for (final epgKey in allEpgKeys) {
      final epgTokens = tokenizeForFuzzyMatch(epgKey);
      double maxScore = 0.0;
      for (final term in terms) {
        final score = scoreFuzzyMatch(
          term,
          epgKey,
          termTokens[term] ?? const [],
          epgTokens,
        );
        if (score > maxScore) maxScore = score;
      }
      if (maxScore > 30.0) {
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
