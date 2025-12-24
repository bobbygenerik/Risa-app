import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import '../models/channel.dart';
import '../models/content.dart';

class M3UParseResult {
  final List<Channel> channels;
  final List<Content> movies;
  final List<Content> series;

  const M3UParseResult({
    required this.channels,
    required this.movies,
    required this.series,
  });
}

class M3UParserService {
  String? _epgUrl; // Store EPG URL from M3U header

  // Pre-compiled regex patterns for performance (avoid recreating per-line)

  static final RegExp _epgUrlRegex = RegExp(r'x-tvg-url="([^"]+)"');
  static final RegExp _seriesEpisodeRegex =
      RegExp(r'S\d+E\d+', caseSensitive: false);

  /// Gets the EPG URL extracted from the last parsed M3U
  String? get epgUrl => _epgUrl;

  /// Parses M3U playlist content and returns a list of channels
  List<Channel> parseM3U(String content) {
    final List<Channel> channels = [];
    final rawLines = content.split('\n');

    _epgUrl = null; // Reset EPG URL

    debugPrint('M3UParser: Parsing ${rawLines.length} raw lines');
    debugPrint(
      'M3UParser: First line: ${rawLines.isNotEmpty ? rawLines[0] : "EMPTY"}',
    );

    // Check for EPG URL in M3U header (x-tvg-url attribute)
    if (rawLines.isNotEmpty && rawLines[0].contains('x-tvg-url=')) {
      final firstLine = rawLines[0];
      final urlMatch = _epgUrlRegex.firstMatch(firstLine);
      if (urlMatch != null) {
        _epgUrl = urlMatch.group(1);
        debugPrint('M3UParser: Found EPG URL: $_epgUrl');
      }
    }

    // First, reassemble wrapped lines (lines that don't start with # or http)
    final List<String> lines = [];
    for (int i = 0; i < rawLines.length; i++) {
      final line = rawLines[i].trimRight(); // Keep leading spaces for detection

      if (line.isEmpty) continue;

      // If line starts with # or http, it's a new line
      if (line.startsWith('#') || line.startsWith('http')) {
        lines.add(line.trim());
      } else if (lines.isNotEmpty) {
        // This is a continuation of the previous line (wrapped text)
        lines[lines.length - 1] += line.trim();
      }
    }

    debugPrint('M3UParser: Reassembled into ${lines.length} logical lines');

    String? currentInfo;
    Map<String, String> currentAttributes = {};
    int channelCount = 0;

    for (int i = 0; i < lines.length; i++) {
      final line = lines[i].trim();

      if (line.isEmpty) continue;

      if (line.startsWith('#EXTINF:')) {
        // Parse channel info
        currentInfo = line.substring(8); // Remove '#EXTINF:'
        currentAttributes = _parseAttributes(currentInfo);
        if (channelCount < 3) {
          debugPrint(
            'M3UParser: Found EXTINF: ${currentInfo.length > 100 ? '${currentInfo.substring(0, 100)}...' : currentInfo}',
          );
        }
      } else if (!line.startsWith('#') && currentInfo != null) {
        // This is a stream URL
        final channelName = _extractChannelName(currentInfo);
        final channel = Channel(
          id: DateTime.now().millisecondsSinceEpoch.toString() + i.toString(),
          name: channelName,
          url: line,
          logoUrl: currentAttributes['tvg-logo'],
          groupTitle: currentAttributes['group-title'],
          tvgId: currentAttributes['tvg-id'],
          attributes: currentAttributes,
          sortOrder: channelCount, // Preserve playlist order
        );

        channels.add(channel);
        channelCount++;
        if (channelCount <= 3) {
          debugPrint('M3UParser: Added channel #$channelCount: $channelName');
        }
        currentInfo = null;
        currentAttributes = {};
      }
    }

    debugPrint('M3UParser: Total channels parsed: ${channels.length}');
    return channels;
  }

  /// Parses an M3U playlist from a byte stream without buffering the entire
  /// payload into memory (prevents OOM on very large playlists).
  Future<M3UParseResult> parseM3UStream(Stream<List<int>> byteStream) async {
    final List<Channel> channels = [];
    final List<Content> movies = [];
    final List<Content> series = [];
    final lineStream =
        byteStream.transform(utf8.decoder).transform(const LineSplitter());

    _epgUrl = null; // Reset between parses
    String? pendingLine;
    String? currentInfo;
    Map<String, String> currentAttributes = {};
    int channelCount = 0;
    int logicalIndex = 0;
    bool headerProcessed = false;

    void processLogicalLine(String line) {
      if (line.isEmpty) return;

      if (!headerProcessed) {
        headerProcessed = true;
        if (line.contains('x-tvg-url=')) {
          final urlMatch = _epgUrlRegex.firstMatch(line);
          if (urlMatch != null) {
            _epgUrl = urlMatch.group(1);
            debugPrint('M3UParser: (stream) Found EPG URL: $_epgUrl');
          }
        }
      }

      if (line.startsWith('#EXTINF:')) {
        currentInfo = line.substring(8);
        currentAttributes = _parseAttributes(currentInfo!);
        if (channelCount < 3) {
          debugPrint(
            'M3UParser: (stream) Found EXTINF: ${currentInfo!.length > 100 ? '${currentInfo!.substring(0, 100)}...' : currentInfo}',
          );
        }
      } else if (!line.startsWith('#') && currentInfo != null) {
        final channelName = _extractChannelName(currentInfo!);

        final groupTitle =
            currentAttributes['group-title']?.toLowerCase() ?? '';
        final looksSeries = _looksLikeSeries(channelName, groupTitle, line);
        final looksMovie = !looksSeries && _looksLikeMovie(groupTitle, line);

        if (looksSeries) {
          series.add(
            _createSeriesContent(
              channelName,
              line,
              currentAttributes,
              logicalIndex,
            ),
          );
        } else if (looksMovie) {
          movies.add(
            _createMovieContent(
              channelName,
              line,
              currentAttributes,
              logicalIndex,
            ),
          );
        } else {
          // Only add to channels if NOT a movie and NOT a series (i.e., live TV)
          final channel = Channel(
            id: DateTime.now().millisecondsSinceEpoch.toString() +
                logicalIndex.toString(),
            name: channelName,
            url: line,
            logoUrl: currentAttributes['tvg-logo'],
            groupTitle: currentAttributes['group-title'],
            tvgId: currentAttributes['tvg-id'],
            attributes: currentAttributes,
            sortOrder: channelCount, // Preserve playlist order
          );
          channels.add(channel);
          channelCount++;
          if (channelCount <= 3) {
            debugPrint(
              'M3UParser: (stream) Added channel #$channelCount: $channelName',
            );
          }
        }

        currentInfo = null;
        currentAttributes = {};
      }

      logicalIndex++;
    }

    await for (final rawLine in lineStream) {
      final line = rawLine.trimRight();
      if (line.isEmpty) continue;
      final trimmed = line.trim();

      if (trimmed.startsWith('#') || trimmed.startsWith('http')) {
        if (pendingLine != null) {
          processLogicalLine(pendingLine.trim());
        }
        pendingLine = trimmed;
      } else if (pendingLine != null) {
        pendingLine = pendingLine + trimmed;
      } else {
        pendingLine = trimmed;
      }
    }

    if (pendingLine != null) {
      processLogicalLine(pendingLine.trim());
    }

    debugPrint('M3UParser: (stream) Total channels parsed: ${channels.length}');
    debugPrint(
      'M3UParser: (stream) Movies detected: ${movies.length}, Series detected: ${series.length}',
    );
    return M3UParseResult(channels: channels, movies: movies, series: series);
  }

  /// Optimized parser that directly returns maps (avoids object creation/conversion overhead)
  /// Used by isolate parsing for better performance with large playlists
  Future<Map<String, dynamic>> parseM3UStreamToMaps(
      Stream<List<int>> byteStream) async {
    final List<Map<String, dynamic>> channelMaps = [];
    final List<Map<String, dynamic>> movieMaps = [];
    final List<Map<String, dynamic>> seriesMaps = [];
    final lineStream =
        byteStream.transform(utf8.decoder).transform(const LineSplitter());

    _epgUrl = null;
    String? pendingLine;
    String? currentInfo;
    Map<String, String> currentAttributes = {};
    int channelCount = 0;
    int logicalIndex = 0;
    bool headerProcessed = false;
    final baseTimestamp = DateTime.now().millisecondsSinceEpoch;

    void processLogicalLine(String line) {
      if (line.isEmpty) return;

      if (!headerProcessed) {
        headerProcessed = true;
        if (line.contains('x-tvg-url=')) {
          final urlMatch = _epgUrlRegex.firstMatch(line);
          if (urlMatch != null) {
            _epgUrl = urlMatch.group(1);
          }
        }
      }

      if (line.startsWith('#EXTINF:')) {
        currentInfo = line.substring(8);
        currentAttributes = _parseAttributes(currentInfo!);
      } else if (!line.startsWith('#') && currentInfo != null) {
        final channelName = _extractChannelName(currentInfo!);
        final groupTitle = currentAttributes['group-title'] ?? '';

        // Fast classification - check URL patterns first (most reliable)
        final isVod = _isVodUrl(line);
        final isSeries = isVod && _looksLikeSeriesFast(channelName, groupTitle);
        final isMovie = isVod && !isSeries;

        if (isSeries) {
          seriesMaps.add({
            'id': '$baseTimestamp$logicalIndex',
            'title': channelName,
            'streamUrl': line,
            'posterUrl': currentAttributes['tvg-logo'],
            'type': 'series',
            'category': groupTitle,
            'sortOrder': logicalIndex,
          });
        } else if (isMovie) {
          movieMaps.add({
            'id': '$baseTimestamp$logicalIndex',
            'title': channelName,
            'streamUrl': line,
            'posterUrl': currentAttributes['tvg-logo'],
            'type': 'movie',
            'category': groupTitle,
            'sortOrder': logicalIndex,
          });
        } else {
          // Live TV channel
          channelMaps.add({
            'id': '$baseTimestamp$logicalIndex',
            'name': channelName,
            'url': line,
            'logoUrl': currentAttributes['tvg-logo'],
            'groupTitle': groupTitle,
            'tvgId': currentAttributes['tvg-id'],
            'attributes': currentAttributes,
            'sortOrder': channelCount,
            'isFavorite': false,
            'isHidden': false,
          });
          channelCount++;
        }
        currentInfo = null;
        currentAttributes = {};
      }
      logicalIndex++;
    }

    await for (final rawLine in lineStream) {
      final line = rawLine.trimRight();
      if (line.isEmpty) continue;
      final trimmed = line.trim();

      if (trimmed.startsWith('#') || trimmed.startsWith('http')) {
        if (pendingLine != null) {
          processLogicalLine(pendingLine.trim());
        }
        pendingLine = trimmed;
      } else if (pendingLine != null) {
        pendingLine = pendingLine + trimmed;
      } else {
        pendingLine = trimmed;
      }
    }

    if (pendingLine != null) {
      processLogicalLine(pendingLine.trim());
    }

    return {
      'channels': channelMaps,
      'movies': movieMaps,
      'series': seriesMaps,
      'epgUrl': _epgUrl,
    };
  }

  /// Extracts channel name from EXTINF line
  String _extractChannelName(String info) {
    // Channel name is usually after the last comma
    final parts = info.split(',');
    if (parts.length > 1) {
      return parts.last.trim();
    }
    return 'Unknown Channel';
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
        if (_isLetter(c) || c == 45) {
          // letter or hyphen
          i++;
        } else {
          break;
        }
      }
      if (i >= len || i == keyStart) break;

      final key = info.substring(keyStart, i);

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

  /// Parse VOD content (movies and series) from M3U
  Map<String, List<Content>> parseVOD(String content) {
    final List<Content> movies = [];
    final List<Content> series = [];
    final lines = content.split('\n');

    String? currentInfo;
    Map<String, String> currentAttributes = {};

    for (int i = 0; i < lines.length; i++) {
      final line = lines[i].trim();

      if (line.isEmpty) continue;

      if (line.startsWith('#EXTINF:')) {
        currentInfo = line.substring(8);
        currentAttributes = _parseAttributes(currentInfo);
      } else if (!line.startsWith('#') && currentInfo != null) {
        // Determine if it's a movie or series based on group or attributes
        final groupTitle =
            currentAttributes['group-title']?.toLowerCase() ?? '';
        final title = _extractChannelName(currentInfo);
        final looksSeries = _looksLikeSeries(title, groupTitle, line);
        final looksMovie = !looksSeries && _looksLikeMovie(groupTitle, line);

        if (looksSeries) {
          series.add(_createSeriesContent(title, line, currentAttributes, i));
        } else if (looksMovie) {
          movies.add(_createMovieContent(title, line, currentAttributes, i));
        }

        currentInfo = null;
        currentAttributes = {};
      }
    }

    return {'movies': movies, 'series': series};
  }

  /// Create movie content from M3U data
  /// Create movie content from M3U data
  Content _createMovieContent(
    String title,
    String url,
    Map<String, String> attributes,
    int index,
  ) {
    final groupTitle = attributes['group-title'];
    var genres = _extractGenres(groupTitle);

    // If no genres from group-title, try to detect from title
    if (genres == null || genres.isEmpty) {
      genres = _detectGenresFromTitle(title);
    }

    final imageUrl = attributes['tvg-logo'];

    if (index < 5) {
      debugPrint('M3U Movie #$index: "$title"');
      debugPrint('  group-title: "$groupTitle"');
      debugPrint('  tvg-logo: "$imageUrl"');
      debugPrint('  url: "$url"');
      debugPrint('  genres: $genres');
    }

    return Content(
      id: 'movie_${DateTime.now().millisecondsSinceEpoch}_$index',
      title: title,
      type: ContentType.movie,
      videoUrl: url,
      imageUrl: imageUrl,
      genres: genres,
      addedDate: DateTime.now(),
    );
  }

  /// Create series content from M3U data
  Content _createSeriesContent(
    String title,
    String url,
    Map<String, String> attributes,
    int index,
  ) {
    final seasonEpisode = _extractSeasonEpisode(title);
    final groupTitle = attributes['group-title'];
    var genres = _extractGenres(groupTitle);

    // If no genres from group-title, try to detect from title
    if (genres == null || genres.isEmpty) {
      genres = _detectGenresFromTitle(title);
    }

    return Content(
      id: 'series_${DateTime.now().millisecondsSinceEpoch}_$index',
      title: _cleanSeriesTitle(title),
      type: ContentType.series,
      videoUrl: url,
      imageUrl: attributes['tvg-logo'],
      seasonNumber: seasonEpisode['season'],
      episodeNumber: seasonEpisode['episode'],
      genres: genres,
      addedDate: DateTime.now(),
    );
  }

  /// Extract season and episode numbers from title
  Map<String, int?> _extractSeasonEpisode(String title) {
    final regex = RegExp(r'S(\d+)E(\d+)', caseSensitive: false);
    final match = regex.firstMatch(title);

    if (match != null) {
      return {
        'season': int.tryParse(match.group(1) ?? ''),
        'episode': int.tryParse(match.group(2) ?? ''),
      };
    }

    return {'season': null, 'episode': null};
  }

  /// Clean series title by removing S##E## pattern
  String _cleanSeriesTitle(String title) {
    return title
        .replaceAll(RegExp(r'S\d+E\d+', caseSensitive: false), '')
        .trim();
  }

  /// Extract genres from group title
  List<String>? _extractGenres(String? groupTitle) {
    debugPrint('M3U _extractGenres called with: "$groupTitle"');

    if (groupTitle == null || groupTitle.isEmpty) {
      debugPrint('M3U _extractGenres returning null (empty groupTitle)');
      return null;
    }

    // Clean up the group-title
    final cleaned = groupTitle.trim();

    // Check for common category patterns and extract meaningful genres
    final lower = cleaned.toLowerCase();

    // Map common category names to proper genres
    final genreMap = {
      'action': 'Action',
      'comedy': 'Comedy',
      'drama': 'Drama',
      'horror': 'Horror',
      'thriller': 'Thriller',
      'sci-fi': 'Sci-Fi',
      'scifi': 'Sci-Fi',
      'science fiction': 'Sci-Fi',
      'romance': 'Romance',
      'documentary': 'Documentary',
      'animation': 'Animation',
      'animated': 'Animation',
      'adventure': 'Adventure',
      'fantasy': 'Fantasy',
      'crime': 'Crime',
      'mystery': 'Mystery',
      'western': 'Western',
      'war': 'War',
      'musical': 'Musical',
      'sport': 'Sports',
      'sports': 'Sports',
      'family': 'Family',
      'kids': 'Kids',
      'bollywood': 'Bollywood',
      'nollywood': 'Nollywood',
      'korean': 'Korean',
      'anime': 'Anime',
      'martial arts': 'Martial Arts',
      'superhero': 'Superhero',
    };

    // Check if the group-title matches any known genre
    for (final entry in genreMap.entries) {
      if (lower.contains(entry.key)) {
        debugPrint(
            'M3U _extractGenres found genre "${entry.value}" from "$groupTitle"');
        return [entry.value];
      }
    }

    // If no match, use the group-title directly as the genre
    debugPrint('M3U _extractGenres returning: [$cleaned]');
    return [cleaned];
  }

  /// Try to detect genre from movie/series title
  List<String>? _detectGenresFromTitle(String title) {
    final lower = title.toLowerCase();

    // Common keywords in titles
    if (lower.contains('action') || lower.contains('mission')) {
      return ['Action'];
    }
    if (lower.contains('comedy') || lower.contains('funny')) {
      return ['Comedy'];
    }
    if (lower.contains('horror') || lower.contains('scary')) {
      return ['Horror'];
    }
    if (lower.contains('romance') || lower.contains('love')) {
      return ['Romance'];
    }
    if (lower.contains('thriller')) {
      return ['Thriller'];
    }
    if (lower.contains('drama')) {
      return ['Drama'];
    }
    if (lower.contains('adventure')) {
      return ['Adventure'];
    }
    if (lower.contains('fantasy') || lower.contains('magic')) {
      return ['Fantasy'];
    }
    if (lower.contains('sci-fi') ||
        lower.contains('scifi') ||
        lower.contains('space')) {
      return ['Sci-Fi'];
    }
    if (lower.contains('documentary') || lower.contains('docu')) {
      return ['Documentary'];
    }
    if (lower.contains('animation') || lower.contains('cartoon')) {
      return ['Animation'];
    }
    if (lower.contains('crime') || lower.contains('detective')) {
      return ['Crime'];
    }
    if (lower.contains('western') || lower.contains('cowboy')) {
      return ['Western'];
    }
    if (lower.contains('war') || lower.contains('battle')) {
      return ['War'];
    }
    if (lower.contains('superhero') ||
        lower.contains('marvel') ||
        lower.contains('dc comics')) {
      return ['Superhero'];
    }
    if (lower.contains('anime')) {
      return ['Anime'];
    }
    if (lower.contains('bollywood')) {
      return ['Bollywood'];
    }

    return null;
  }

  /// Fast VOD detection - checks URL patterns without toLowerCase()
  bool _isVodUrl(String url) {
    // Check for VOD file extensions (case-insensitive manual check)
    final len = url.length;
    if (len < 5) return false;

    // Check last 4-5 chars for extensions
    final last5 = len >= 5 ? url.substring(len - 5).toLowerCase() : '';
    final last4 = url.substring(len - 4).toLowerCase();

    if (last4 == '.mp4' ||
        last4 == '.mkv' ||
        last4 == '.avi' ||
        last4 == '.mov' ||
        last4 == '.wmv' ||
        last4 == '.flv' ||
        last4 == '.mpg' ||
        last4 == '.m4v' ||
        last5 == '.mpeg') {
      return true;
    }

    // Check for /movie/ /series/ /vod/ in URL
    if (url.contains('/movie/') ||
        url.contains('/Movie/') ||
        url.contains('/movies/') ||
        url.contains('/Movies/') ||
        url.contains('/series/') ||
        url.contains('/Series/') ||
        url.contains('/vod/') ||
        url.contains('/VOD/')) {
      return true;
    }

    return false;
  }

  /// Fast series detection
  bool _looksLikeSeriesFast(String title, String groupTitle) {
    // Check for S##E## pattern in title
    if (_seriesEpisodeRegex.hasMatch(title)) return true;

    // Check URL/group for series keywords
    if (groupTitle.contains('series') ||
        groupTitle.contains('Series') ||
        groupTitle.contains('TV Shows') ||
        groupTitle.contains('tv shows') ||
        groupTitle.contains('Episodes') ||
        groupTitle.contains('episodes')) {
      return true;
    }

    return false;
  }

  bool _looksLikeSeries(String title, String lowerGroupTitle, String url) {
    final lowerUrl = url.toLowerCase();
    if (_isLikelyLiveUrl(lowerUrl)) return false;

    if (_hasSeriesPathKeyword(lowerUrl)) return true;

    return _seriesEpisodeRegex.hasMatch(title) ||
        lowerGroupTitle.contains('series') ||
        lowerGroupTitle.contains('tv shows') ||
        lowerGroupTitle.contains('episodes');
  }

  bool _looksLikeMovie(String lowerGroupTitle, String url) {
    final lowerUrl = url.toLowerCase();
    final hasMoviePath = _hasMoviePathKeyword(lowerUrl);
    final hasFileExtension = _hasVodFileExtension(lowerUrl);

    if (_isLikelyLiveUrl(lowerUrl) && !hasMoviePath && !hasFileExtension) {
      return false;
    }

    if (hasMoviePath || hasFileExtension) return true;

    final looksMovieByGroup = lowerGroupTitle.contains('vod') ||
        lowerGroupTitle.contains('video on demand') ||
        lowerGroupTitle.contains('film') ||
        (lowerGroupTitle.contains('movie') && !_isLikelyLiveUrl(lowerUrl));

    return looksMovieByGroup;
  }

  bool _isLikelyLiveUrl(String lowerUrl) {
    return lowerUrl.contains('/live/') ||
        lowerUrl.endsWith('.m3u8') ||
        lowerUrl.endsWith('.ts');
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
}
