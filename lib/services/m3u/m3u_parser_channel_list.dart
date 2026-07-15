part of '../m3u_parser_service.dart';

extension M3UParserChannelList on M3UParserService {
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
          debugLog('M3UParser: Channel URL: ${redactUrl(line)}');
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
          debugLog(
              'M3UParser: WARNING - Found URL without EXTINF: ${redactUrl(line)}');
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
          processLogicalLine(pendingLine);
        }
        pendingLine = trimmedRaw;
      } else if (pendingLine != null) {
        pendingLine = pendingLine + trimmedRaw;
      } else {
        // Fallback for files not starting with # (treat as start of new line)
        if (pendingLine != null) {
          processLogicalLine(pendingLine);
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
      processLogicalLine(pendingLine);
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

  _SimpleMatch? _lastUrlMatch(String line) {
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
        return _SimpleMatch(schemeStart, urlEnd, line);
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

}
