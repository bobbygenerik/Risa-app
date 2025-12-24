import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:async';
import 'dart:isolate';
import 'dart:convert';
import '../models/channel.dart';
import '../models/content.dart';
import '../utils/hash_utils.dart';

// Top-level function for isolate-based M3U parsing.
// This delegates to the streaming/map-based parser so it can be used
// safely with `compute()` without allocating a huge intermediate
// string on the main isolate. The function is `async` so it can be
// used as a `compute` entrypoint that performs streaming parsing.
Future<Map<String, dynamic>> parseM3UInIsolate(String content) async {
  final parser = M3UParserService();
  final bytes = utf8.encode(content);
  return await parser.parseM3UStreamToMaps(Stream.value(bytes));
}

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

  // Simpler, analyzer-safe regexes to avoid raw-string delimiter issues
  static final RegExp _epgUrlRegex =
      RegExp(r'(?:url-tvg|x-tvg-url|tvg-url)=([^\s]+)', caseSensitive: false);
  static final RegExp _seriesEpisodeRegex =
      RegExp(r'S\d+E\d+', caseSensitive: false);
  static final RegExp _urlRegex =
      RegExp(r'(?:[a-z0-9+\.\-]+)://\S+', caseSensitive: false);

  /// Gets the EPG URL extracted from the last parsed M3U
  String? get epgUrl => _epgUrl;

  /// Parses M3U playlist content and returns a list of channels with chunked processing
  List<Channel> parseM3U(String content) {
    final List<Channel> channels = [];
    final seenUrls = <String>{};
    final rawLines = content.split(RegExp(r'\r\n|\n|\r'));

    _epgUrl = null; // Reset EPG URL

    debugLog('M3UParser: Parsing ${rawLines.length} raw lines');
    debugLog(
      'M3UParser: First line: ${rawLines.isNotEmpty ? rawLines[0] : "EMPTY"}',
    );

    // Check for EPG URL in M3U header (multiple possible attributes)
    if (rawLines.isNotEmpty &&
        (rawLines[0].toLowerCase().contains('url-tvg=') ||
            rawLines[0].toLowerCase().contains('x-tvg-url=') ||
            rawLines[0].toLowerCase().contains('tvg-url='))) {
      final firstLine = rawLines[0];
      final urlMatch = _epgUrlRegex.firstMatch(firstLine);
      if (urlMatch != null) {
        _epgUrl = urlMatch.group(1);
        debugLog('M3UParser: Found EPG URL: $_epgUrl');
      }
    }

    // Process lines in chunks to prevent UI blocking on large playlists
    const chunkSize = 1000;
    final List<String> lines = [];

    // Reassemble wrapped lines in chunks
    for (int chunkStart = 0;
        chunkStart < rawLines.length;
        chunkStart += chunkSize) {
      final chunkEnd = (chunkStart + chunkSize).clamp(0, rawLines.length);

      for (int i = chunkStart; i < chunkEnd; i++) {
        final line = rawLines[i].trimRight();
        if (line.isEmpty) continue;
        final trimmed = line.trim();

        if (trimmed.startsWith('#') ||
            trimmed.contains('://') ||
            trimmed.contains('EXTINF:')) {
          lines.add(trimmed);
        } else if (lines.isNotEmpty) {
          lines[lines.length - 1] += trimmed;
        } else {
          lines.add(trimmed); // Fallback for files not starting with #
        }
      }

      // Show progress for large playlists
      if (rawLines.length > 10000 && chunkStart % (chunkSize * 5) == 0) {
        debugLog('M3UParser: Processed $chunkEnd/${rawLines.length} raw lines');
      }
    }

    debugLog('M3UParser: Reassembled into ${lines.length} logical lines');

    // Improved EPG detection: scan the first few logical lines for x-tvg-url
    // attributes (supports both single and double quotes). Many Xtream
    // providers don't include x-tvg-url on the very first raw line, so scan
    // a small window to find it.
    final scanLimit = lines.length < 10 ? lines.length : 10;
    for (int i = 0; i < scanLimit; i++) {
      try {
        final match = _epgUrlRegex.firstMatch(lines[i]);
        if (match != null) {
          _epgUrl = match.group(1);
          debugLog(
              'M3UParser: Found EPG URL in logical line ${i + 1}: $_epgUrl');
          break;
        }
      } catch (_) {
        // ignore malformed lines while scanning
      }
    }

    String? currentInfo;
    Map<String, String> currentAttributes = {};
    int channelCount = 0;

    void processExtinfSegment(String segment) {
      final urlMatch = _lastUrlMatch(segment);
      final infoPart = urlMatch != null
          ? segment.substring(0, urlMatch.start).trimRight()
          : segment;
      currentInfo = _extractExtinfPayload(infoPart);
      if (currentInfo == null) return;
      currentAttributes = _parseAttributes(currentInfo!);
      if (channelCount < 3) {
        debugLog(
          'M3UParser: Found EXTINF: ${currentInfo!.length > 100 ? '${currentInfo!.substring(0, 100)}...' : currentInfo}',
        );
      }
      if (urlMatch != null) {
        final inlineUrl = urlMatch.group(0) ?? '';
        if (inlineUrl.isNotEmpty) {
          if (!seenUrls.add(inlineUrl)) {
            currentInfo = null;
            currentAttributes = {};
            return;
          }
          final channelName = _extractChannelName(currentInfo!);
          final channel = Channel(
            id: stableChannelId(
              tvgId: currentAttributes['tvg-id'],
              name: channelName,
              url: inlineUrl,
            ),
            name: channelName,
            url: inlineUrl,
            logoUrl: currentAttributes['tvg-logo'],
            groupTitle: currentAttributes['group-title'],
            tvgId: currentAttributes['tvg-id'],
            attributes: currentAttributes,
            sortOrder: channelCount,
          );
          channels.add(channel);
          channelCount++;
          currentInfo = null;
          currentAttributes = {};
        }
      }
    }

    // Parse logical lines in chunks
    for (int chunkStart = 0;
        chunkStart < lines.length;
        chunkStart += chunkSize) {
      final chunkEnd = (chunkStart + chunkSize).clamp(0, lines.length);

      for (int i = chunkStart; i < chunkEnd; i++) {
        final line = lines[i].trim();
        if (line.isEmpty) continue;

        if (line.contains('EXTINF:')) {
          for (final segment in _splitExtinfSegments(line)) {
            processExtinfSegment(segment);
          }
        } else if (!line.startsWith('#') && currentInfo != null) {
          final urlMatch = _lastUrlMatch(line);
          if (urlMatch == null) {
            currentInfo = null;
            currentAttributes = {};
            continue;
          }
          final channelUrl = urlMatch.group(0) ?? '';
          if (channelUrl.isEmpty) {
            currentInfo = null;
            currentAttributes = {};
            continue;
          }
          if (!seenUrls.add(channelUrl)) {
            currentInfo = null;
            currentAttributes = {};
            continue;
          }
          final channelName = _extractChannelName(currentInfo!);
          final channel = Channel(
            id: stableChannelId(
              tvgId: currentAttributes['tvg-id'],
              name: channelName,
              url: channelUrl,
            ),
            name: channelName,
            url: channelUrl,
            logoUrl: currentAttributes['tvg-logo'],
            groupTitle: currentAttributes['group-title'],
            tvgId: currentAttributes['tvg-id'],
            attributes: currentAttributes,
            sortOrder: channelCount,
          );

          channels.add(channel);
          channelCount++;
          if (channelCount <= 5) {
            debugLog('M3UParser: Added channel #$channelCount: $channelName');
            debugLog('M3UParser: Channel URL: $line');
            debugLog('M3UParser: URL valid: ${Uri.tryParse(line) != null}');
            if (line.isEmpty) {
              debugLog(
                  'M3UParser: WARNING - Empty URL for channel: $channelName');
            }
          }
          currentInfo = null;
          currentAttributes = {};
        } else if (!line.startsWith('#') && currentInfo == null) {
          // Found a URL without EXTINF - this might be malformed M3U
          if (channelCount < 3) {
            debugLog('M3UParser: WARNING - Found URL without EXTINF: $line');
          }
        }
      }

      // Show progress for large playlists
      if (lines.length > 5000 && chunkStart % (chunkSize * 2) == 0) {
        debugLog('M3UParser: Parsed $channelCount channels so far...');
      }
    }

    debugLog('M3UParser: Total channels parsed: ${channels.length}');
    return channels;
  }

  String? _extractExtinfPayload(String line) {
    final idx = line.indexOf('EXTINF:');
    if (idx == -1) return null;
    return line.substring(idx + 'EXTINF:'.length);
  }

  RegExpMatch? _lastUrlMatch(String line) {
    RegExpMatch? lastMatch;
    for (final match in _urlRegex.allMatches(line)) {
      // SKIP if this URL appears to be an attribute value (e.g., tvg-logo="http://...")
      // We look for a quote or equals sign immediately preceding the match
      if (match.start > 0) {
        final prevChar = line[match.start - 1];
        if (prevChar == '"' || prevChar == "'" || prevChar == '=') {
          continue;
        }

        // Also check for leading =" or =' if match starts at index 2+
        if (match.start >= 2) {
          final prefix = line.substring(match.start - 2, match.start);
          if (prefix == '="' || prefix == "='") {
            continue;
          }
        }
      }

      lastMatch = match;
    }
    return lastMatch;
  }

  List<String> _splitExtinfSegments(String line) {
    final segments = <String>[];
    var index = line.indexOf('EXTINF:');
    if (index == -1) return [line];
    while (index != -1) {
      final next = line.indexOf('EXTINF:', index + 1);
      final segment =
          line.substring(index, next == -1 ? line.length : next).trim();
      if (segment.isNotEmpty) segments.add(segment);
      index = next;
    }
    return segments;
  }

  /// Parses an M3U playlist from a byte stream without buffering the entire
  /// payload into memory (prevents OOM on very large playlists).
  Future<M3UParseResult> parseM3UStream(Stream<List<int>> byteStream) async {
    debugLog('M3UParser: (stream) Starting M3U stream parsing...');
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
    final seenUrls = <String>{};

    void processLogicalLine(String line) {
      if (line.isEmpty) return;

      if (!headerProcessed) {
        headerProcessed = true;
        final lowerLine = line.toLowerCase();
        if (lowerLine.contains('url-tvg=') ||
            lowerLine.contains('x-tvg-url=') ||
            lowerLine.contains('tvg-url=')) {
          final urlMatch = _epgUrlRegex.firstMatch(line);
          if (urlMatch != null) {
            _epgUrl = urlMatch.group(1);
            debugLog('M3UParser: (stream) Found EPG URL: $_epgUrl');
          }
        } else {
          debugLog('M3UParser: (stream) EPG URL not found in header line.');
        }
      }

      // Log every 100th line for progress tracking
      if (logicalIndex % 100 == 0) {
        debugLog('M3UParser: (stream) Processing line $logicalIndex: $line');
      }

      void processExtinfSegment(String segment) {
        final urlMatch = _lastUrlMatch(segment);
        final infoPart = urlMatch != null
            ? segment.substring(0, urlMatch.start).trimRight()
            : segment;
        currentInfo = _extractExtinfPayload(infoPart);
        if (currentInfo == null) {
          return;
        }
        currentAttributes = _parseAttributes(currentInfo!);
        if (channelCount < 3) {
          final preview = currentInfo!.length > 100
              ? '${currentInfo!.substring(0, 100)}...'
              : currentInfo!;
          debugLog(
            'M3UParser: (stream) Found EXTINF: $preview',
          );
        }
        if (urlMatch != null) {
          final inlineUrl = urlMatch.group(0) ?? '';
          if (inlineUrl.isNotEmpty) {
            if (!seenUrls.add(inlineUrl)) {
              currentInfo = null;
              currentAttributes = {};
              return;
            }
            final channelName = _extractChannelName(currentInfo!);
            final groupTitle =
                currentAttributes['group-title']?.toLowerCase() ?? '';
            final looksSeries = _looksLikeSeries(
              channelName,
              groupTitle,
              inlineUrl,
            );
            final looksMovie =
                !looksSeries && _looksLikeMovie(groupTitle, inlineUrl);

            if (looksSeries) {
              series.add(
                _createSeriesContent(
                  channelName,
                  inlineUrl,
                  currentAttributes,
                  logicalIndex,
                ),
              );
            } else if (looksMovie) {
              movies.add(
                _createMovieContent(
                  channelName,
                  inlineUrl,
                  currentAttributes,
                  logicalIndex,
                ),
              );
            } else {
              final channel = Channel(
                id: currentAttributes['tvg-id'] ??
                    '${channelName}_${inlineUrl.hashCode.abs()}_$logicalIndex',
                name: channelName,
                url: inlineUrl,
                logoUrl: currentAttributes['tvg-logo'],
                groupTitle: currentAttributes['group-title'],
                tvgId: currentAttributes['tvg-id'],
                attributes: currentAttributes,
                sortOrder: channelCount,
              );
              channels.add(channel);
              channelCount++;
            }
            currentInfo = null;
            currentAttributes = {};
            logicalIndex++;
          }
        }
      }

      if (line.contains('EXTINF:')) {
        for (final segment in _splitExtinfSegments(line)) {
          processExtinfSegment(segment);
        }
      } else if (!line.startsWith('#') && currentInfo != null) {
        final urlMatch = _lastUrlMatch(line);
        if (urlMatch == null) {
          currentInfo = null;
          currentAttributes = {};
          return;
        }
        final channelUrl = urlMatch.group(0) ?? '';
        if (channelUrl.isEmpty) {
          currentInfo = null;
          currentAttributes = {};
          return;
        }
        if (!seenUrls.add(channelUrl)) {
          currentInfo = null;
          currentAttributes = {};
          return;
        }
        final channelName = _extractChannelName(currentInfo!);

        final groupTitle =
            currentAttributes['group-title']?.toLowerCase() ?? '';
        final looksSeries =
            _looksLikeSeries(channelName, groupTitle, channelUrl);
        final looksMovie =
            !looksSeries && _looksLikeMovie(groupTitle, channelUrl);

        if (looksSeries) {
          series.add(
            _createSeriesContent(
              channelName,
              channelUrl,
              currentAttributes,
              logicalIndex,
            ),
          );
        } else if (looksMovie) {
          movies.add(
            _createMovieContent(
              channelName,
              channelUrl,
              currentAttributes,
              logicalIndex,
            ),
          );
        } else {
          // Only add to channels if NOT a movie and NOT a series (i.e., live TV)
          final channel = Channel(
            id: currentAttributes['tvg-id'] ??
                '${channelName}_${channelUrl.hashCode.abs()}_$logicalIndex',
            name: channelName,
            url: channelUrl,
            logoUrl: currentAttributes['tvg-logo'],
            groupTitle: currentAttributes['group-title'],
            tvgId: currentAttributes['tvg-id'],
            attributes: currentAttributes,
            sortOrder: channelCount, // Preserve playlist order
          );
          channels.add(channel);
          channelCount++;
          if (channelCount <= 3) {
            debugLog(
              'M3UParser: (stream) Added channel #$channelCount: $channelName',
            );
          }
        }

        currentInfo = null;
        currentAttributes = {};
        logicalIndex++;
      }
    }

    int lineCount = 0;
    await for (final rawLine in lineStream) {
      if (lineCount < 5) {
        debugLog('M3UParser: (stream) Raw line ${lineCount++}: $rawLine');
      }
      // Trim rawLine but keep interior content
      final trimmedRaw = rawLine.trim();
      if (trimmedRaw.isEmpty) continue;

      if (trimmedRaw.startsWith('#') ||
          trimmedRaw.contains('://') ||
          trimmedRaw.contains('EXTINF:')) {
        if (pendingLine != null) {
          processLogicalLine(pendingLine.trim());
        }
        pendingLine = trimmedRaw;
      } else if (pendingLine != null) {
        pendingLine = pendingLine + trimmedRaw;
      } else {
        pendingLine = trimmedRaw;
      }
    }

    if (pendingLine != null) {
      processLogicalLine(pendingLine.trim());
    }

    debugLog('M3UParser: (stream) Total channels parsed: ${channels.length}');
    debugLog(
      'M3UParser: (stream) Movies detected: ${movies.length}, Series detected: ${series.length}',
    );
    if (channels.isEmpty && movies.isEmpty && series.isEmpty) {
      debugLog(
          'M3UParser: (stream) WARNING: No content parsed from the M3U stream.');
    }
    return M3UParseResult(channels: channels, movies: movies, series: series);
  }

  /// Optimized parser that directly returns maps (avoids object creation/conversion overhead)
  /// Used by isolate parsing for better performance with large playlists
  Future<Map<String, dynamic>> parseM3UStreamToMaps(
      Stream<List<int>> byteStream,
      {SendPort? progressPort}) async {
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
    final seenUrls = <String>{};

    void processLogicalLine(String line) {
      if (line.isEmpty) return;

      if (!headerProcessed) {
        headerProcessed = true;
        final lowerLine = line.toLowerCase();
        if (lowerLine.contains('url-tvg=') ||
            lowerLine.contains('x-tvg-url=') ||
            lowerLine.contains('tvg-url=')) {
          final urlMatch = _epgUrlRegex.firstMatch(line);
          if (urlMatch != null) {
            _epgUrl = urlMatch.group(1);
          }
        }
      }

      void processExtinfSegment(String segment) {
        final urlMatch = _lastUrlMatch(segment);
        final infoPart = urlMatch != null
            ? segment.substring(0, urlMatch.start).trimRight()
            : segment;
        currentInfo = _extractExtinfPayload(infoPart);
        if (currentInfo == null) return;
        currentAttributes = _parseAttributes(currentInfo!);

        if (urlMatch != null) {
          final inlineUrl = urlMatch.group(0) ?? '';
          if (inlineUrl.isNotEmpty) {
            if (!seenUrls.add(inlineUrl)) {
              currentInfo = null;
              currentAttributes = {};
              return;
            }
            final channelName = _extractChannelName(currentInfo!);
            final groupTitle = currentAttributes['group-title'] ?? '';
            final isVod = _isVodUrl(inlineUrl, groupTitle);
            final isSeries =
                isVod && _looksLikeSeriesFast(channelName, groupTitle);
            final isMovie = isVod && !isSeries;

            if (isSeries) {
              seriesMaps.add({
                'id': 'series_${channelName.hashCode.abs()}_$logicalIndex',
                'title': channelName,
                'videoUrl': inlineUrl,
                'imageUrl': currentAttributes['tvg-logo'],
                'type': 'series',
                'genres': [groupTitle],
                'sortOrder': logicalIndex,
              });
            } else if (isMovie) {
              movieMaps.add({
                'id': 'movie_${channelName.hashCode.abs()}_$logicalIndex',
                'title': channelName,
                'videoUrl': inlineUrl,
                'imageUrl': currentAttributes['tvg-logo'],
                'type': 'movie',
                'genres': [groupTitle],
                'sortOrder': logicalIndex,
              });
            } else {
              channelMaps.add({
                'id': currentAttributes['tvg-id'] ??
                    stableChannelId(
                        tvgId: currentAttributes['tvg-id'],
                        name: channelName,
                        url: inlineUrl),
                'name': channelName,
                'url': inlineUrl,
                'logoUrl': currentAttributes['tvg-logo'],
                'groupTitle': groupTitle,
                'tvgId': currentAttributes['tvg-id'],
                'attributes': currentAttributes,
                'sortOrder': channelCount,
                'isFavorite': false,
                'isHidden': false,
              });
              channelCount++;
              if (progressPort != null && channelCount % 50 == 0) {
                try {
                  progressPort
                      .send({'type': 'progress', 'channels': channelCount});
                } catch (_) {}
              }
            }
            currentInfo = null;
            currentAttributes = {};
            logicalIndex++;
          }
        }
      }

      if (line.contains('EXTINF:')) {
        for (final segment in _splitExtinfSegments(line)) {
          processExtinfSegment(segment);
        }
      } else if (!line.startsWith('#') && currentInfo != null) {
        final urlMatch = _lastUrlMatch(line);
        if (urlMatch == null) {
          currentInfo = null;
          currentAttributes = {};
          return;
        }
        final channelUrl = urlMatch.group(0) ?? '';
        if (channelUrl.isEmpty) {
          currentInfo = null;
          currentAttributes = {};
          return;
        }
        if (!seenUrls.add(channelUrl)) {
          currentInfo = null;
          currentAttributes = {};
          return;
        }
        final channelName = _extractChannelName(currentInfo!);
        final groupTitle = currentAttributes['group-title'] ?? '';

        // Fast classification - check URL patterns first (most reliable)
        final isVod = _isVodUrl(channelUrl, groupTitle);
        final isSeries = isVod && _looksLikeSeriesFast(channelName, groupTitle);
        final isMovie = isVod && !isSeries;

        if (isSeries) {
          seriesMaps.add({
            'id': 'series_${channelName.hashCode.abs()}_$logicalIndex',
            'title': channelName,
            'videoUrl': channelUrl,
            'imageUrl': currentAttributes['tvg-logo'],
            'type': 'series',
            'genres': [groupTitle],
            'sortOrder': logicalIndex,
          });
        } else if (isMovie) {
          movieMaps.add({
            'id': 'movie_${channelName.hashCode.abs()}_$logicalIndex',
            'title': channelName,
            'videoUrl': channelUrl,
            'imageUrl': currentAttributes['tvg-logo'],
            'type': 'movie',
            'genres': [groupTitle],
            'sortOrder': logicalIndex,
          });
        } else {
          // Live TV channel
          channelMaps.add({
            'id': currentAttributes['tvg-id'] ??
                stableChannelId(
                    tvgId: currentAttributes['tvg-id'],
                    name: channelName,
                    url: channelUrl),
            'name': channelName,
            'url': channelUrl,
            'logoUrl': currentAttributes['tvg-logo'],
            'groupTitle': groupTitle,
            'tvgId': currentAttributes['tvg-id'],
            'attributes': currentAttributes,
            'sortOrder': channelCount,
            'isFavorite': false,
            'isHidden': false,
          });
          channelCount++;
          if (progressPort != null && channelCount % 50 == 0) {
            try {
              progressPort.send({'type': 'progress', 'channels': channelCount});
            } catch (_) {}
          }
        }
        currentInfo = null;
        currentAttributes = {};
        logicalIndex++;
      }
    }

    await for (final rawLine in lineStream) {
      final trimmedRaw = rawLine.trim();
      if (trimmedRaw.isEmpty) continue;

      if (trimmedRaw.startsWith('#') ||
          trimmedRaw.contains('://') ||
          trimmedRaw.contains('EXTINF:')) {
        if (pendingLine != null) {
          processLogicalLine(pendingLine.trim());
        }
        pendingLine = trimmedRaw;
      } else if (pendingLine != null) {
        pendingLine = pendingLine + trimmedRaw;
      } else {
        pendingLine = trimmedRaw;
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
      debugLog('M3U Movie #$index: "$title"');
      debugLog('  group-title: "$groupTitle"');
      debugLog('  tvg-logo: "$imageUrl"');
      debugLog('  url: "$url"');
      debugLog('  genres: $genres');
    }

    return Content(
      id: 'movie_${title.hashCode.abs()}_$index',
      title: title,
      type: ContentType.movie,
      videoUrl: url,
      imageUrl: imageUrl,
      genres: genres,
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
      id: 'series_${_cleanSeriesTitle(title).hashCode.abs()}_$index',
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
    if (groupTitle == null || groupTitle.isEmpty) {
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
        return [entry.value];
      }
    }

    // If no match, use the group-title directly as the genre
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

  /// More robust VOD detection - checks URL patterns and group titles
  bool _isVodUrl(String url, [String? groupTitle]) {
    final lowerUrl = url.toLowerCase();
    final lowerGroup = groupTitle?.toLowerCase() ?? '';

    // 1. Explicit VOD keywords in group title (highly reliable)
    if (lowerGroup.contains('movie') ||
        lowerGroup.contains('series') ||
        lowerGroup.contains('vod') ||
        lowerGroup.contains('film') ||
        lowerGroup.contains('cinema') ||
        lowerGroup.contains('tv show') ||
        lowerGroup.contains('video on demand')) {
      // Avoid false positives for "Live Movies", "Movies Channel", etc.
      if (!lowerGroup.contains('channel') && !lowerGroup.contains('live')) {
        return true;
      }
    }

    // 2. Check for VOD file extensions
    final len = url.length;
    if (len >= 4) {
      final last4 = lowerUrl.substring(len - 4);
      final last5 = len >= 5 ? lowerUrl.substring(len - 5) : '';

      if (last4 == '.mp4' ||
          last4 == '.mkv' ||
          last4 == '.avi' ||
          last4 == '.mov' ||
          last4 == '.wmv' ||
          last4 == '.flv' ||
          last4 == '.mpg' ||
          last4 == '.m4v' ||
          last5 == '.mpeg' ||
          last5 == '.m2ts') {
        return true;
      }
    }

    // 3. Check for query parameters common in VOD
    if (lowerUrl.contains('type=movie') ||
        lowerUrl.contains('type=series') ||
        lowerUrl.contains('type=vod')) {
      return true;
    }

    // 4. Check for /movie/ /series/ /vod/ in URL path
    // These are common in Xtream and other formats even without extensions
    if (lowerUrl.contains('/movie/') ||
        lowerUrl.contains('/movies/') ||
        lowerUrl.contains('/series/') ||
        lowerUrl.contains('/vod/') ||
        lowerUrl.contains('/series_info/') ||
        lowerUrl.contains('/film/')) {
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
