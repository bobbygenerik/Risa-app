import 'dart:async';
import 'dart:convert';
import 'dart:isolate';

import 'package:iptv_player/utils/debug_helper.dart';
import '../models/channel.dart';
import '../utils/hash_utils.dart';

// Top-level function for isolate-based M3U parsing.
Future<Map<String, dynamic>> parseM3UInIsolate(String content) async {
  final parser = M3UParserService();
  final bytes = utf8.encode(content);
  return await parser.parseM3UStreamToMaps(Stream.value(bytes));
}

class M3UParserService {
  String? _epgUrl; // Store EPG URL from M3U header

  // Pre-compiled regex patterns for performance (avoid recreating per-line)

  // Simpler, analyzer-safe regexes to avoid raw-string delimiter issues
  static final RegExp _epgUrlRegex = RegExp(
    r"""(?:url-tvg|x-tvg-url|tvg-url)=["']?([^"']+)""",
    caseSensitive: false,
  );

  static final RegExp _urlRegex =
      RegExp(r'(?:[a-z0-9+\.\-]+)://\S+', caseSensitive: false);

  /// Gets the EPG URL extracted from the last parsed M3U
  String? get epgUrl => _epgUrl;

  bool _tryCaptureEpgUrl(String line) {
    if (_epgUrl != null) return true;
    final match = _epgUrlRegex.firstMatch(line);
    if (match != null) {
      _epgUrl = match.group(1);
      if (_epgUrl != null) {
        debugLog('M3UParser: Captured EPG URL: $_epgUrl');
        return true;
      }
    }
    return false;
  }

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

    if (rawLines.isNotEmpty) {
      _tryCaptureEpgUrl(rawLines[0]);
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
    final scanLimit = lines.length < 50 ? lines.length : 50;
    for (int i = 0; i < scanLimit; i++) {
      if (_tryCaptureEpgUrl(lines[i])) {
        debugLog(
            'M3UParser: Found EPG URL in logical line ${i + 1}: $_epgUrl');
        break;
      }
    }

    String? currentInfo;
    Map<String, String> currentAttributes = {};
    int channelCount = 0;
    int tvgIdCount = 0;

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
          if ((channel.tvgId?.trim().isNotEmpty ?? false)) {
            tvgIdCount++;
          }
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
          if ((channel.tvgId?.trim().isNotEmpty ?? false)) {
            tvgIdCount++;
          }
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
    debugLog('M3UParser: Channels with tvg-id: $tvgIdCount');
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

  /// Optimized parser that directly returns maps (avoids object creation/conversion overhead)
  /// Used by isolate parsing for better performance with large playlists
  /// VOD detection is SKIPPED for maximum speed - all entries treated as live channels.
  Future<Map<String, dynamic>> parseM3UStreamToMaps(
      Stream<List<int>> byteStream,
      {SendPort? progressPort}) async {
    final List<Map<String, dynamic>> channelMaps = [];
    final lineStream =
        byteStream.transform(utf8.decoder).transform(const LineSplitter());

    _epgUrl = null;
    String? pendingLine;
    String? currentInfo;
    Map<String, String> currentAttributes = {};
    int channelCount = 0;
    int tvgIdCount = 0;
    bool headerProcessed = false;
    final seenUrls = <String>{};
    int epgLinesChecked = 0;
    const int epgScanLimit = 25;

    void processLogicalLine(String line) {
      if (line.isEmpty) return;

      if (!headerProcessed) {
        headerProcessed = true;
        debugLog('M3UParser: First logical line: ${line.length > 200 ? '${line.substring(0, 200)}...' : line}');
        _tryCaptureEpgUrl(line);
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

            // FAST PATH: Skip all VOD detection - treat everything as live channel
            final tvgId = currentAttributes['tvg-id'];
            channelMaps.add({
              'id': (tvgId != null && tvgId.trim().isNotEmpty)
                  ? tvgId
                  : stableChannelId(
                      tvgId: tvgId, name: channelName, url: inlineUrl),
              'name': channelName,
              'url': inlineUrl,
              'logoUrl': currentAttributes['tvg-logo'],
              'groupTitle': groupTitle,
              'tvgId': tvgId,
              'attributes': currentAttributes,
              'sortOrder': channelCount,
              'isFavorite': false,
              'isHidden': false,
            });
            channelCount++;
            if ((tvgId?.trim().isNotEmpty ?? false)) {
              tvgIdCount++;
            }
            if (progressPort != null && channelCount % 200 == 0) {
              try {
                // Send progress count
                progressPort.send({'type': 'progress', 'channels': channelCount});
                
                // CRITICAL: Send the actual chunk of data!
                // We send the last 200 items (or all since last send)
                // Actually, since we are adding to a main list, we can just slice it?
                // Or better: maintain a temporary buffer for the current chunk.
                // But since we already added to 'channelMaps', let's just slice the last 200.
                final int chunkStart = (channelCount - 200).clamp(0, channelCount);
                final chunk = channelMaps.sublist(chunkStart, channelCount);
                progressPort.send({'type': 'channels_chunk', 'channels': chunk});
              } catch (_) {}
            }
            currentInfo = null;
            currentAttributes = {};
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

        // FAST PATH: Skip all VOD detection - treat everything as live channel
        final tvgId = currentAttributes['tvg-id'];
        channelMaps.add({
          'id': (tvgId != null && tvgId.trim().isNotEmpty)
              ? tvgId
              : stableChannelId(
                  tvgId: tvgId, name: channelName, url: channelUrl),
          'name': channelName,
          'url': channelUrl,
          'logoUrl': currentAttributes['tvg-logo'],
          'groupTitle': groupTitle,
          'tvgId': tvgId,
          'attributes': currentAttributes,
          'sortOrder': channelCount,
          'isFavorite': false,
          'isHidden': false,
        });
        channelCount++;
        if ((tvgId?.trim().isNotEmpty ?? false)) {
          tvgIdCount++;
        }
        if (progressPort != null && channelCount % 200 == 0) {
          try {
            progressPort.send({'type': 'progress', 'channels': channelCount});
            // CRITICAL: Send chunk
            final int chunkStart = (channelCount - 200).clamp(0, channelCount);
            final chunk = channelMaps.sublist(chunkStart, channelCount);
            progressPort.send({'type': 'channels_chunk', 'channels': chunk});
          } catch (_) {}
        }
      } else if (!line.startsWith('#') && currentInfo == null) {
        // Handle bare URLs without EXTINF context
        final urlMatch = _lastUrlMatch(line);
        if (urlMatch != null) {
          final channelUrl = urlMatch.group(0) ?? '';
          if (channelUrl.isNotEmpty && seenUrls.add(channelUrl)) {
             debugLog('M3UParser: Found bare URL, auto-adding: $channelUrl');
             // Fallback name from URL
             String fallbackName = 'Channel ${channelCount + 1}';
             try {
               final uri = Uri.parse(channelUrl);
               fallbackName = uri.pathSegments.last;
             } catch (_) {}
             
             channelMaps.add({
                'id': stableChannelId(name: fallbackName, url: channelUrl),
                'name': fallbackName,
                'url': channelUrl,
                'groupTitle': 'Uncategorized',
                'attributes': <String, String>{},
                'sortOrder': channelCount,
                'isFavorite': false,
                'isHidden': false,
             });
             channelCount++;
          }
        }
      }
    }

    await for (final rawLine in lineStream) {
      final trimmedRaw = rawLine.trim();
      if (_epgUrl == null && epgLinesChecked < epgScanLimit) {
        epgLinesChecked++;
        _tryCaptureEpgUrl(trimmedRaw);
      }
      if (trimmedRaw.isEmpty) continue;

      if (trimmedRaw.startsWith('#EXTM3U')) {
        if (_epgUrl == null) {
          debugLog('M3UParser: (maps) EPG URL not found in header line.');
        }
        pendingLine = trimmedRaw;
        continue;
      }

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


    
    // Send any remaining channels as a final chunk (if not already sent in batches)
    // CRITICAL FIX: Always send ALL channels at the end to ensure nothing is lost
    // This handles playlists with <200 channels or exact multiples of 200
    if (progressPort != null && channelMaps.isNotEmpty) {
       try {
         // Just send everything - the receiver will deduplicate if needed
         // Or better: only send what hasn't been sent yet
         final int lastSentIndex = (channelCount ~/ 200) * 200;
         if (lastSentIndex < channelMaps.length) {
           final chunk = channelMaps.sublist(lastSentIndex);
           if (chunk.isNotEmpty) {
             progressPort.send({'type': 'channels_chunk', 'channels': chunk});
           }
         }
       } catch (_) {}
    }

    debugLog('M3UParser: (maps) Total channels parsed: $channelCount');
    debugLog('M3UParser: (maps) Channels with tvg-id: $tvgIdCount');
    return {
      'channels': channelMaps,
      'movies': const <Map<String, dynamic>>[],  // VOD detection skipped
      'series': const <Map<String, dynamic>>[],  // VOD detection skipped
      'channelCount': channelCount,
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
