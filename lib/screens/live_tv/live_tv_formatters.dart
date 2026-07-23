/// Display and de-duplication helpers for the Live TV screen.
class LiveTvFormatters {
  LiveTvFormatters._();

  // Performance Optimization: Cache compiled RegExp objects to avoid parsing and
  // compiling overhead during frequent calls (e.g., Live TV list scrolling).
  static final RegExp _articleRe = RegExp(r'^(the|a|an)\s+');
  static final RegExp _nonAlphaNumRe = RegExp(r'[^a-z0-9\s]');
  static final RegExp _multiSpaceRe = RegExp(r'\s+');
  static final RegExp _epgRe = RegExp(r'\bEPG\b', caseSensitive: false);

  static String formatProgramTime(DateTime dt) {
    final hour = dt.hour == 0 ? 12 : (dt.hour > 12 ? dt.hour - 12 : dt.hour);
    final period = dt.hour < 12 ? 'AM' : 'PM';
    return '${hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')} $period';
  }

  /// Normalize titles for de-duplication: lowercase, strip articles, alphanumerics only.
  static String normalizeTitleForFilter(String title) {
    if (title.isEmpty) return title;
    var s = title.toLowerCase().trim();
    s = s.replaceAll(_articleRe, '');
    s = s.replaceAll(_nonAlphaNumRe, ' ');
    s = s.replaceAll(_multiSpaceRe, ' ').trim();
    return s;
  }

  /// User-facing status line: replace "EPG" with "data".
  static String? replaceEpgWithData(String? s) {
    if (s == null) return null;
    return s
        .replaceAll(_epgRe, 'data')
        .trim();
  }
}
