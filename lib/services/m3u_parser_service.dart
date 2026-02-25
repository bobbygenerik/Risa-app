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

  /// Parses M3U playlist content and returns a list of channels with streaming processing
  List<Channel> parseM3U(String content) {
    final List<Channel> channels = [];
    final seenUrls = <String>{};

    // Optimized: Use LineSplitter to stream lines instead of splitting into a huge list
    final rawLines = LineSplitter.split(content);

    _epgUrl = null; // Reset EPG URL

    debugLog('M3UParser: Parsing M3U content...');

    // State for reassembling lines (Pass 1 logic)
    String? pendingLine;

    // State for channel parsing (Pass 2 logic)
    String? currentInfo;
    Map<String, String> currentAttributes = {};
    int channelCount = 0;
    int tvgIdCount = 0;

    // EPG detection state
    int logicalLinesChecked = 0;
    const int epgScanLimit = 50;

    // Helper to process a complete logical line
    void processLogicalLine(String line) {
      if (line.isEmpty) return;

      // EPG Detection
      if (_epgUrl == null && logicalLinesChecked < epgScanLimit) {
        _tryCaptureEpgUrl(line); // Log is inside _tryCaptureEpgUrl
        logicalLinesChecked++;
      }

      // Channel Parsing Logic
      if (line.contains('EXTINF:')) {
        for (final segment in _splitExtinfSegments(line)) {
           // Inline processExtinfSegment logic to access closure variables
           final urlMatch = _lastUrlMatch(segment);
           final infoPart = urlMatch != null
              ? segment.substring(0, urlMatch.start).trimRight()
              : segment;
           currentInfo = _extractExtinfPayload(infoPart);
           if (currentInfo == null) continue;
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
                    continue;
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

    // Single-pass processing
    int processedCount = 0;
    for (final rawLine in rawLines) {
        processedCount++;
        final trimmedRaw = rawLine.trim();
        if (trimmedRaw.isEmpty) continue;

        // Pass 1 reassembly logic
        if (trimmedRaw.startsWith('#') ||
            trimmedRaw.contains('://') ||
            trimmedRaw.contains('EXTINF:')) {

            if (pendingLine != null) {
                processLogicalLine(pendingLine!);
            }
            pendingLine = trimmedRaw;
        } else if (pendingLine != null) {
            pendingLine = pendingLine! + trimmedRaw;
        } else {
            // Fallback for files not starting with # (treat as start of new line)
            if (pendingLine != null) {
                processLogicalLine(pendingLine!);
            }
            pendingLine = trimmedRaw;
        }

        // Show progress occasionally
        if (processedCount % 50000 == 0) {
           debugLog('M3UParser: Processed $processedCount raw lines...');
        }
    }

    // Process final pending line
    if (pendingLine != null) {
        processLogicalLine(pendingLine!);
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
    int searchEnd = line.length;
    while (true) {
      if (searchEnd <= 0) return null;
      // Find '://' backwards
      final idx = line.lastIndexOf('://', searchEnd - 1);
      if (idx == -1) return null;

      // Found '://' at idx. Check scheme backwards from idx-1
      int schemeStart = idx;
      bool validScheme = false;

      if (schemeStart > 0) {
        int i = schemeStart - 1;
        while (i >= 0) {
          final code = line.codeUnitAt(i);
          if (!_isSchemeChar(code)) break;
          i--;
        }
        schemeStart = i + 1;
        if (schemeStart < idx) {
          validScheme = true;
        }
      }

      if (!validScheme) {
        searchEnd = idx; // Continue search before '://'
        continue;
      }

      // Check pre-conditions (quote/equals)
      bool isAttribute = false;
      if (schemeStart > 0) {
        final prevChar = line[schemeStart - 1];
        if (prevChar == '"' || prevChar == "'" || prevChar == '=') {
          isAttribute = true;
        } else if (schemeStart >= 2) {
          final prefix = line.substring(schemeStart - 2, schemeStart);
          if (prefix == '="' || prefix == "='") {
            isAttribute = true;
          }
        }
      }

      if (isAttribute) {
        searchEnd = schemeStart;
        continue;
      }

      // SHADOW CHECK: Ensure this match is not part of a larger match to the left.
      bool isShadowed = false;
      if (schemeStart > 0) {
        if (!_isWhitespace(line.codeUnitAt(schemeStart - 1))) {
          int leftScan = schemeStart - 1;
          while (leftScan >= 0) {
            final code = line.codeUnitAt(leftScan);
            if (_isWhitespace(code)) {
              break;
            }

            // Check for '://'
            if (code == 58 && leftScan + 2 < schemeStart) {
              // : is 58
              if (leftScan + 2 < line.length &&
                  line.codeUnitAt(leftScan + 1) == 47 &&
                  line.codeUnitAt(leftScan + 2) == 47) {
                // Found '://' at leftScan.
                // Check scheme for this one.
                int sStart = leftScan;
                bool vScheme = false;
                if (sStart > 0) {
                  int j = sStart - 1;
                  while (j >= 0) {
                    final c = line.codeUnitAt(j);
                    if (!_isSchemeChar(c)) break;
                    j--;
                  }
                  sStart = j + 1;
                  if (sStart < leftScan) {
                    vScheme = true;
                  }
                }
                if (vScheme) {
                  isShadowed = true;
                  break;
                }
              }
            }
            leftScan--;
          }
        }
      }

      if (isShadowed) {
        searchEnd = idx;
        continue;
      }

      // Find end of URL
      int afterSchemeIdx = idx + 3;
      int k = afterSchemeIdx;
      final len = line.length;
      while (k < len) {
        final code = line.codeUnitAt(k);
        if (_isWhitespace(code)) {
          break;
        }
        k++;
      }

      int urlEnd = k;
      if (urlEnd > afterSchemeIdx) {
        return _SimpleMatch(
            schemeStart, urlEnd, line, line.substring(schemeStart, urlEnd));
      } else {
        searchEnd = idx;
        continue;
      }
    }
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

bool _isSchemeChar(int code) {
  return (code >= 97 && code <= 122) || // a-z
      (code >= 65 && code <= 90) || // A-Z
      (code >= 48 && code <= 57) || // 0-9
      code == 43 ||
      code == 46 ||
      code == 45; // + . -
}

bool _isWhitespace(int code) {
  return code == 32 || (code >= 9 && code <= 13);
}

class _SimpleMatch implements RegExpMatch {
  @override
  final int start;
  @override
  final int end;
  @override
  final String input;
  final String _match;

  _SimpleMatch(this.start, this.end, this.input, this._match);

  @override
  String? group(int group) {
    if (group == 0) return _match;
    return null;
  }

  @override
  String? operator [](int group) => this.group(group);

  @override
  List<String?> groups(List<int> groupIndices) {
    return groupIndices.map(group).toList();
  }

  @override
  int get groupCount => 0;

  @override
  RegExp get pattern => throw UnimplementedError();

  @override
  Iterable<String> get groupNames => [];

  @override
  String? namedGroup(String name) => null;
}
