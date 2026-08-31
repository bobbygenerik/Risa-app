part of 'epg_matching_utils.dart';

/// Program/title normalization for artwork, TMDB/TVDB lookup, and fuzzy scoring.
class EpgTitleMatchingUtils {
  static final RegExp _multiSpaceRe = RegExp(r'\s+');

  static final RegExp _newsTitleRe = RegExp(
    r'(news|report|briefing|update|live coverage|bulletin|weather|sport|journal)',
    caseSensitive: false,
  );

  static final RegExp _genericTitleRe = RegExp(
    r'(news|sports|^episode |^series |^movie$|^film$|^to be announced$|^tba$)',
    caseSensitive: false,
  );

  // Bolt Performance: Combined 8 RegExp .replaceAll() operations into 2 OR-based patterns and added a fast-path preflight check using .codeUnitAt loop to skip regex processing entirely for strings without numbers or punctuation, drastically reducing allocations and execution time.
  static final RegExp _artworkSpaceRe = RegExp(
    r'\s*[-:]\s*|\[.*?\]|\(.*?\)|<.*?>|\{.*?\}'
  );
  static final RegExp _artworkEmptyRe = RegExp(
    r'\bs\d{1,2}e\d{1,2}\b|\bseason\s+\d+\b|\bepisode\s+\d+\b|\bpart\s+\d+\b|\s*[-:]\s*(19|20)\d{2}\s*$|\s*[\(\[]?(19|20)\d{2}[\)\]]?\s*$',
    caseSensitive: false
  );

  static String normalizeForArtwork(String title) {
    var normalized = title.toLowerCase();

    bool hasPunctuation = false;
    bool hasNumbers = false;

    for (int i = 0; i < normalized.length; i++) {
      final code = normalized.codeUnitAt(i);
      if (code >= 48 && code <= 57) {
        hasNumbers = true;
      } else if (code == 45 || code == 58 || code == 91 || code == 93 ||
                 code == 40 || code == 41 || code == 60 || code == 62 ||
                 code == 123 || code == 125) {
        hasPunctuation = true;
      }
      if (hasNumbers && hasPunctuation) break;
    }

    if (hasPunctuation) {
      normalized = normalized.replaceAll(_artworkSpaceRe, ' ');
    }
    if (hasNumbers) {
      normalized = normalized.replaceAll(_artworkEmptyRe, '');
    }

    normalized = normalized.replaceAll(_multiSpaceRe, ' ').trim();
    return normalized.isEmpty ? title : normalized;
  }

  static bool isLikelyNewsTitle(String title) {
    if (title.isEmpty) return false;
    return _newsTitleRe.hasMatch(title);
  }

  static String normalizeForDisplayTitle(
    String title, {
    bool stripEpisodeSubtitle = false,
  }) {
    final trimmed = title.trim();
    if (trimmed.isEmpty) return title;
    if (stripEpisodeSubtitle) {
      return stripEpisodeSubtitleLoose(trimmed);
    }
    return trimmed;
  }

  static String stripEpisodeSubtitleLoose(String title) {
    var s = title;
    if (s.contains(':')) {
      s = s.split(':').first;
    }
    if (s.contains(' - ')) {
      s = s.split(' - ').first;
    }
    return s.trim();
  }

  static Set<String> tokenizeForFuzzyMatch(String title) {
    return EPGMatchingUtils.tokenize(title);
  }

  static double scoreFuzzyMatch(
    String titleA,
    String titleB,
    Set<String> tokensA,
    Set<String> tokensB,
  ) {
    final intersection = tokensA.intersection(tokensB).length;
    final union = tokensA.union(tokensB).length;
    if (union == 0) return 0.0;
    return (intersection / union) * 100.0;
  }

  static bool isGenericTitle(String title) {
    if (title.isEmpty) return true;
    return _genericTitleRe.hasMatch(title);
  }

  static String normalizeArtworkVariant(String title) {
    return normalizeForArtwork(title);
  }

  static String normalizeTitleForLookup(
    String title, {
    bool aggressiveForNews = false,
  }) {
    return normalizeForArtwork(title);
  }
}
