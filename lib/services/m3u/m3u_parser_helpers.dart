part of '../m3u_parser_service.dart';

extension M3UParserHelpers on M3UParserService {
  /// Extracts channel name from EXTINF line
  String _extractChannelName(String info) {
    // Channel name is usually after the last comma
    final lastComma = info.lastIndexOf(',');
    if (lastComma != -1) {
      return info.substring(lastComma + 1).trim();
    }
    return 'Unknown Channel';
  }

  bool _isVodEntry({
    required String channelName,
    required String groupTitle,
    required String url,
  }) {
    final normalizedGroup = groupTitle.trim().toLowerCase();
    final normalizedTitle = channelName.trim().toLowerCase();
    final normalizedUrl = url.trim().toLowerCase();

    if (_isLikelyLiveUrl(normalizedUrl)) {
      return false;
    }

    if (_hasSeriesPathKeyword(normalizedUrl)) {
      return true;
    }

    if (_hasMoviePathKeyword(normalizedUrl) ||
        _hasVodFileExtension(normalizedUrl)) {
      return true;
    }

    if (M3UParserService._seriesEpisodeRegex.hasMatch(channelName)) {
      return true;
    }

    if (_looksLikeSeriesGroup(normalizedGroup)) {
      return true;
    }

    return _looksLikeMovieGroup(normalizedGroup, normalizedTitle);
  }

  bool _looksLikeSeriesGroup(String lowerGroupTitle) {
    return lowerGroupTitle.contains('series') ||
        lowerGroupTitle.contains('tv shows') ||
        lowerGroupTitle.contains('episodes') ||
        lowerGroupTitle.contains('shows');
  }

  bool _looksLikeMovieGroup(String lowerGroupTitle, String lowerTitle) {
    if (lowerGroupTitle.contains('vod') ||
        lowerGroupTitle.contains('video on demand')) {
      return true;
    }
    if (lowerGroupTitle.contains('movie') ||
        lowerGroupTitle.contains('movies') ||
        lowerGroupTitle.contains('film') ||
        lowerGroupTitle.contains('cinema')) {
      return true;
    }
    return lowerTitle == 'movie' || lowerTitle == 'film';
  }

  bool _isLikelyLiveUrl(String lowerUrl) {
    return lowerUrl.contains('/live/') ||
        lowerUrl.endsWith('.m3u8') ||
        lowerUrl.endsWith('.ts');
  }

  bool _isLikelyVodUrl(String url) {
    final lowerUrl = url.toLowerCase();
    if (_isLikelyLiveUrl(lowerUrl)) return false;
    return _hasMoviePathKeyword(lowerUrl) ||
        _hasSeriesPathKeyword(lowerUrl) ||
        _hasVodFileExtension(lowerUrl);
  }

  bool _hasVodFileExtension(String lowerUrl) {
    const extensions = [
      '.mp4',
      '.mkv',
      '.avi',
      '.mov',
      '.wmv',
      '.flv',
      '.mpg',
      '.mpeg',
      '.m4v',
    ];
    return extensions.any(lowerUrl.endsWith);
  }

  bool _hasMoviePathKeyword(String lowerUrl) {
    return lowerUrl.contains('/movie/') ||
        lowerUrl.contains('/movies/') ||
        lowerUrl.contains('/vod/') ||
        lowerUrl.contains('/film/');
  }

  bool _hasSeriesPathKeyword(String lowerUrl) {
    return lowerUrl.contains('/series/') ||
        lowerUrl.contains('/episodes/') ||
        lowerUrl.contains('/tvshows/');
  }

  /// Parses attributes from EXTINF line - FAST version without regex
  Map<String, String> _parseAttributesFast(String info) {
    final Map<String, String> attributes = {};

    // Fast manual parsing: look for key="value" patterns
    int i = 0;
    final len = info.length;

    while (i < len) {
      // Skip to next letter (start of key)
      while (i < len && !_isLetter(info.codeUnitAt(i))) {
        i++;
      }
      if (i >= len) break;

      // Read key
      final keyStart = i;
      while (i < len) {
        final c = info.codeUnitAt(i);
        if (_isLetter(c) || _isDigit(c) || c == 45 || c == 95) {
          // letter, digit, hyphen, or underscore
          i++;
        } else {
          break;
        }
      }
      if (i >= len || i == keyStart) break;

      final key = info.substring(keyStart, i).toLowerCase();

      // Skip whitespace
      while (i < len && info.codeUnitAt(i) == 32) {
        i++;
      }

      // Check for =
      if (i >= len || info.codeUnitAt(i) != 61) continue; // 61 is '='
      i++;

      // Skip whitespace
      while (i < len && info.codeUnitAt(i) == 32) {
        i++;
      }

      // Check for quote
      if (i >= len) break;
      final quote = info.codeUnitAt(i);
      if (quote != 34 && quote != 39) continue; // 34=" 39='
      i++;

      // Read value until closing quote
      final valueStart = i;
      while (i < len && info.codeUnitAt(i) != quote) {
        i++;
      }

      if (i > valueStart) {
        attributes[key] = info.substring(valueStart, i);
      }
      i++; // Skip closing quote
    }

    return attributes;
  }

  bool _isLetter(int c) {
    return (c >= 65 && c <= 90) || (c >= 97 && c <= 122); // A-Z or a-z
  }

  bool _isDigit(int c) {
    return (c >= 48 && c <= 57); // 0-9
  }

  /// Parses attributes from EXTINF line
  Map<String, String> _parseAttributes(String info) {
    // Use fast manual parsing instead of regex
    return _parseAttributesFast(info);
  }

  /// Groups channels by category
  Map<String, List<Channel>> groupChannelsByCategory(List<Channel> channels) {
    final Map<String, List<Channel>> grouped = {};

    for (final channel in channels) {
      final category = channel.groupTitle ?? 'Uncategorized';
      if (!grouped.containsKey(category)) {
        grouped[category] = [];
      }
      grouped[category]!.add(channel);
    }

    return grouped;
  }
}
