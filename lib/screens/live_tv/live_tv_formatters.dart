/// Display and de-duplication helpers for the Live TV screen.
class LiveTvFormatters {
  LiveTvFormatters._();

  // Pre-compiled regexes to avoid object allocation in hot paths.
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
    // Use fast-path `hasMatch` to avoid redundant string allocations and GC pressure.
    if (_articleRe.hasMatch(s)) {
      s = s.replaceAll(_articleRe, '');
    }
    if (_nonAlphaNumRe.hasMatch(s)) {
      s = s.replaceAll(_nonAlphaNumRe, ' ');
    }
    if (_multiSpaceRe.hasMatch(s)) {
      s = s.replaceAll(_multiSpaceRe, ' ').trim();
    }
    return s;
  }

  /// User-facing status line: replace "EPG" with "data".
  static String? replaceEpgWithData(String? s) {
    if (s == null) return null;
    if (_epgRe.hasMatch(s)) {
      return s.replaceAll(_epgRe, 'data').trim();
    }
    return s.trim();
  }
}
