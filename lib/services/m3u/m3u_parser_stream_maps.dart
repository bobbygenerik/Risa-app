part of '../m3u_parser_service.dart';

extension M3UParserStreamMaps on M3UParserService {
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
        debugLog(
            'M3UParser: First logical line: ${line.length > 200 ? '${line.substring(0, 200)}...' : line}');
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
            if (_isVodEntry(
              channelName: channelName,
              groupTitle: groupTitle,
              url: inlineUrl,
            )) {
              currentInfo = null;
              currentAttributes = {};
              return;
            }

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
                progressPort
                    .send({'type': 'progress', 'channels': channelCount});

                // CRITICAL: Send the actual chunk of data!
                // We send the last 200 items (or all since last send)
                // Actually, since we are adding to a main list, we can just slice it?
                // Or better: maintain a temporary buffer for the current chunk.
                // But since we already added to 'channelMaps', let's just slice the last 200.
                final int chunkStart =
                    (channelCount - 200).clamp(0, channelCount);
                final chunk = channelMaps.sublist(chunkStart, channelCount);
                progressPort
                    .send({'type': 'channels_chunk', 'channels': chunk});
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
        if (_isVodEntry(
          channelName: channelName,
          groupTitle: groupTitle,
          url: channelUrl,
        )) {
          currentInfo = null;
          currentAttributes = {};
          return;
        }

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
            if (_isLikelyVodUrl(channelUrl)) {
              return;
            }
            debugLog(
                'M3UParser: Found bare URL, auto-adding: ${redactUrl(channelUrl)}');
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
      'movies': const <Map<String, dynamic>>[], // VOD detection skipped
      'series': const <Map<String, dynamic>>[], // VOD detection skipped
      'channelCount': channelCount,
      'epgUrl': _epgUrl,
    };
  }
}
