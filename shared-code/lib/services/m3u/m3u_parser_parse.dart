part of '../m3u_parser_service.dart';

extension M3UParserParse on M3UParserService {
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
    final urlMatch = M3UParserService._epgUrlRegex.firstMatch(firstLine);
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
        final urlMatch = M3UParserService._epgUrlRegex.firstMatch(line);
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
        final urlMatch = M3UParserService._epgUrlRegex.firstMatch(line);
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
}
