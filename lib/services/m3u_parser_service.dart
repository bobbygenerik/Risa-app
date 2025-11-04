import '../models/channel.dart';
import '../models/content.dart';

class M3UParserService {
  String? _epgUrl; // Store EPG URL from M3U header
  
  /// Gets the EPG URL extracted from the last parsed M3U
  String? get epgUrl => _epgUrl;
  
  /// Parses M3U playlist content and returns a list of channels
  List<Channel> parseM3U(String content) {
    final List<Channel> channels = [];
    final rawLines = content.split('\n');
    
    _epgUrl = null; // Reset EPG URL
    
    print('M3UParser: Parsing ${rawLines.length} raw lines');
    print('M3UParser: First line: ${rawLines.isNotEmpty ? rawLines[0] : "EMPTY"}');
    
    // Check for EPG URL in M3U header (x-tvg-url attribute)
    if (rawLines.isNotEmpty && rawLines[0].contains('x-tvg-url=')) {
      final firstLine = rawLines[0];
      final urlMatch = RegExp(r'x-tvg-url="([^"]+)"').firstMatch(firstLine);
      if (urlMatch != null) {
        _epgUrl = urlMatch.group(1);
        print('M3UParser: Found EPG URL: $_epgUrl');
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
    
    print('M3UParser: Reassembled into ${lines.length} logical lines');

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
          print('M3UParser: Found EXTINF: ${currentInfo.length > 100 ? currentInfo.substring(0, 100) + "..." : currentInfo}');
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
        );

        channels.add(channel);
        channelCount++;
        if (channelCount <= 3) {
          print('M3UParser: Added channel #$channelCount: $channelName');
        }
        currentInfo = null;
        currentAttributes = {};
      }
    }
    
    print('M3UParser: Total channels parsed: ${channels.length}');
    return channels;
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

  /// Parses attributes from EXTINF line
  Map<String, String> _parseAttributes(String info) {
    final Map<String, String> attributes = {};

    // Regular expression to match key="value" or key='value' patterns
    final regex = RegExp(r'(\w+-?\w+)="([^"]*)"');
    final matches = regex.allMatches(info);

    for (final match in matches) {
      if (match.groupCount >= 2) {
        final key = match.group(1);
        final value = match.group(2);
        if (key != null && value != null) {
          attributes[key] = value;
        }
      }
    }

    return attributes;
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

        // Check if it's a series (has S##E## pattern or in series group)
        final isSeries =
            title.contains(RegExp(r'S\d+E\d+', caseSensitive: false)) ||
            groupTitle.contains('series') ||
            groupTitle.contains('tv shows') ||
            groupTitle.contains('episodes');

        if (isSeries) {
          series.add(_createSeriesContent(title, line, currentAttributes, i));
        } else if (groupTitle.contains('movie') || groupTitle.contains('vod')) {
          movies.add(_createMovieContent(title, line, currentAttributes, i));
        }

        currentInfo = null;
        currentAttributes = {};
      }
    }

    return {'movies': movies, 'series': series};
  }

  /// Create movie content from M3U data
  Content _createMovieContent(
    String title,
    String url,
    Map<String, String> attributes,
    int index,
  ) {
    return Content(
      id: 'movie_${DateTime.now().millisecondsSinceEpoch}_$index',
      title: title,
      type: ContentType.movie,
      videoUrl: url,
      imageUrl: attributes['tvg-logo'],
      genres: _extractGenres(attributes['group-title']),
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

    return Content(
      id: 'series_${DateTime.now().millisecondsSinceEpoch}_$index',
      title: _cleanSeriesTitle(title),
      type: ContentType.series,
      videoUrl: url,
      imageUrl: attributes['tvg-logo'],
      seasonNumber: seasonEpisode['season'],
      episodeNumber: seasonEpisode['episode'],
      genres: _extractGenres(attributes['group-title']),
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
    if (groupTitle == null || groupTitle.isEmpty) return null;

    // Common genre keywords
    final genres = <String>[];
    final lower = groupTitle.toLowerCase();

    if (lower.contains('action')) genres.add('Action');
    if (lower.contains('comedy')) genres.add('Comedy');
    if (lower.contains('drama')) genres.add('Drama');
    if (lower.contains('horror')) genres.add('Horror');
    if (lower.contains('sci-fi') || lower.contains('scifi'))
      genres.add('Sci-Fi');
    if (lower.contains('thriller')) genres.add('Thriller');
    if (lower.contains('romance')) genres.add('Romance');
    if (lower.contains('documentary')) genres.add('Documentary');
    if (lower.contains('kids') || lower.contains('children'))
      genres.add('Kids');
    if (lower.contains('sport')) genres.add('Sports');

    return genres.isNotEmpty ? genres : null;
  }
}
