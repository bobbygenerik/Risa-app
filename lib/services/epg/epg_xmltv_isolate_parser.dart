import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:iptv_player/services/epg/epg_normalize_cache.dart';
import 'package:iptv_player/services/epg/epg_xmltv_lenient_parser.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/utils/epg_matching_utils.dart';
import 'package:xml/xml_events.dart';

export 'package:iptv_player/services/epg/epg_programme_filter.dart'
    show shouldIncludeProgramme;

const bool _kEnableLenientParserFallback = true;

void processXmltvChannelEvents(
  List<XmlEvent> events,
  Set<String> channelIds,
  Map<String, List<String>> normalizedChannels, {
  required String Function(String input) normalize,
  Map<String, String>? channelIcons,
  Map<String, List<String>>? displayNamesById,
}) {
  if (events.isEmpty || events.first is! XmlStartElementEvent) return;
  final startEvent = events.first as XmlStartElementEvent;

  final id = startEvent.attributes
      .firstWhere((a) => a.localName == 'id',
          orElse: () =>
              XmlEventAttribute('id', '', XmlAttributeType.DOUBLE_QUOTE))
      .value
      .trim();

  if (id.isEmpty) return;

  channelIds.add(id);
  final normalizedId = normalize(id);
  if (normalizedId.isNotEmpty) {
    normalizedChannels.putIfAbsent(normalizedId, () => []).add(id);
  }

  final displayNames = <String>[];
  String? currentTag;
  StringBuffer? currentSb;

  for (var i = 1; i < events.length; i++) {
    final event = events[i];
    if (event is XmlStartElementEvent) {
      final name = event.localName;
      if (name == 'display-name') {
        currentTag = 'display-name';
        currentSb = StringBuffer();
      } else if (name == 'icon') {
        final src = event.attributes
            .firstWhere((a) => a.localName == 'src',
                orElse: () => XmlEventAttribute(
                    'src', '', XmlAttributeType.DOUBLE_QUOTE))
            .value;
        if (src.isNotEmpty) {
          channelIcons?[id] = src;
        }
      }
    } else if (event is XmlEndElementEvent) {
      if (event.localName == 'display-name' && currentTag == 'display-name') {
        if (currentSb != null) {
          final val = currentSb.toString().trim();
          if (val.isNotEmpty) displayNames.add(val);
        }
        currentTag = null;
        currentSb = null;
      }
    } else if (event is XmlTextEvent) {
      if (currentTag == 'display-name') {
        currentSb?.write(event.value);
      }
    } else if (event is XmlCDATAEvent) {
      if (currentTag == 'display-name') {
        currentSb?.write(event.value);
      }
    }
  }

  if (displayNames.isNotEmpty) {
    displayNamesById?[id] = List<String>.from(displayNames);
    for (final displayName in displayNames) {
      final normalizedDisplay = normalize(displayName);
      if (normalizedDisplay.isNotEmpty) {
        normalizedChannels.putIfAbsent(normalizedDisplay, () => []).add(id);
      }
    }
  }
}

Future<Map<String, dynamic>> parseEpgInIsolate(
    Map<String, dynamic> args) async {
  final filePath = args['filePath'] as String? ?? '';
  final allowedList = (args['allowedChannels'] as List<dynamic>? ?? const [])
      .map((e) => e.toString())
      .toSet();
  final excludeChannels =
      (args['excludeChannels'] as List<dynamic>? ?? const [])
          .map((e) => e.toString())
          .toSet();
  final nowMs = args['nowMs'] as int? ?? 0;
  final futureEndMs = args['futureEndMs'] as int? ?? 0;
  final currentDayOnly = args['currentDayOnly'] as bool? ?? false;
  final catchupMapRaw =
      (args['catchupHoursByChannel'] as Map<String, dynamic>? ?? {});
  final catchupHoursByChannel = catchupMapRaw
      .map((key, value) => MapEntry(key.toString(), (value as num).toInt()));
  final file = File(filePath);
  if (!await file.exists()) {
    throw Exception('EPG cache file not found in isolate');
  }

  final normalizeCache = <String, String>{};
  String normalizeCached(String input) {
    final cached = normalizeCache[input];
    if (cached != null) return cached;
    if (normalizeCache.length > 50000) {
      normalizeCache.clear();
    }
    final normalized = EpgNormalizeCache.normalizeForFilter(input);
    normalizeCache[input] = normalized;
    return normalized;
  }

  final channelIds = <String>{};
  final normalizedChannels = <String, List<String>>{};
  final displayNamesById = <String, List<String>>{};
  final channelHashes = <String, int>{};
  var tempFile = File(
      '${Directory.systemTemp.path}/epg_programs_${DateTime.now().millisecondsSinceEpoch}.jsonl');
  int programCount = 0;
  var hadXmlErrors = false;

  final startTime = DateTime.fromMillisecondsSinceEpoch(nowMs);
  final endTime = DateTime.fromMillisecondsSinceEpoch(futureEndMs);
  debugLog(
      'EPG: Parsing ${currentDayOnly ? "current day" : "full"} programs from ${startTime.toString()} to ${endTime.toString()}');

  Stream<List<int>> rawStreamProvider() {
    final base = file.openRead();
    if (file.path.toLowerCase().endsWith('.gz')) {
      return base.transform(gzip.decoder);
    }
    return base;
  }

  String sanitizeXmlChunk(String input) {
    var out = input.replaceAll(EPGMatchingUtils.invalidXmlCharRe, '');
    out = out.replaceAll(EPGMatchingUtils.unbrokenEntityRe, '&amp;');
    return out;
  }

  StreamTransformer<String, String> sanitizeXmlStream() {
    const int tailKeep = 16;
    var buffer = '';
    return StreamTransformer<String, String>.fromHandlers(
      handleData: (chunk, sink) {
        buffer += chunk;
        if (buffer.length <= tailKeep) {
          return;
        }
        final emit = buffer.substring(0, buffer.length - tailKeep);
        buffer = buffer.substring(buffer.length - tailKeep);
        sink.add(sanitizeXmlChunk(emit));
      },
      handleDone: (sink) {
        if (buffer.isNotEmpty) {
          sink.add(sanitizeXmlChunk(buffer));
        }
        sink.close();
      },
    );
  }

  Future<void> runParseWithDecoder(
      StreamTransformer<List<int>, String> decoder,
      {bool useSanitizer = false}) async {
    final sink = tempFile.openWrite();
    final channelIcons = <String, String>{};
    var charStream = rawStreamProvider().transform(decoder);
    if (useSanitizer) {
      charStream = charStream.transform(sanitizeXmlStream());
    }

    final eventStream = charStream.toXmlEvents();

    List<XmlEvent>? currentEvents;
    bool inChannel = false;
    bool inProgramme = false;
    int depth = 0;

    void triggerProcess() {
      if (currentEvents == null || currentEvents!.isEmpty) return;
      if (inChannel) {
        processXmltvChannelEvents(
          currentEvents!,
          channelIds,
          normalizedChannels,
          normalize: normalizeCached,
          channelIcons: channelIcons,
          displayNamesById: displayNamesById,
        );
        inChannel = false;
      } else if (inProgramme) {
        processXmltvProgrammeEvents(
          currentEvents!,
          channelIds,
          normalizedChannels,
          sink,
          () {
            programCount++;
          },
          allowedList,
          catchupHoursByChannel,
          nowMs,
          futureEndMs,
          normalizeCached,
          channelIcons: channelIcons,
          channelHashes: channelHashes,
          excludeChannels: excludeChannels.isEmpty ? null : excludeChannels,
        );
        inProgramme = false;
      }
      currentEvents = null;
      depth = 0;
    }

    try {
      await for (final chunk in eventStream) {
        for (final event in chunk) {
          if (event is XmlStartElementEvent) {
            final isTopLevel = event.localName == 'channel' ||
                event.localName == 'programme';

            if (isTopLevel && (inChannel || inProgramme) && depth == 1) {
              triggerProcess();
            }

            if (!inChannel && !inProgramme) {
              if (event.localName == 'channel') {
                inChannel = true;
                currentEvents = [event];
                depth = 1;
              } else if (event.localName == 'programme') {
                inProgramme = true;
                currentEvents = [event];
                depth = 1;
              }
            } else {
              if (!event.isSelfClosing) {
                depth++;
              }
              currentEvents?.add(event);
            }
          } else if (event is XmlEndElementEvent) {
            if (inChannel || inProgramme) {
              currentEvents?.add(event);
              depth--;

              if (depth <= 0) {
                triggerProcess();
              }
            }
          } else if (inChannel || inProgramme) {
            currentEvents?.add(event);
          }
        }
      }
    } catch (e) {
      debugLog(
          'EPG: Stream error during parse (keeping $programCount programs): $e');
      hadXmlErrors = true;
    } finally {
      try {
        await sink.flush();
        await sink.close();
      } catch (_) {}
    }
  }

  Future<void> runLenientParse() async {
    final sink = tempFile.openWrite();
    programCount = await runLenientEpgParse(
      rawStreamProvider: rawStreamProvider,
      sanitizeXmlChunk: sanitizeXmlChunk,
      normalize: normalizeCached,
      allowedChannels: allowedList,
      catchupHoursByChannel: catchupHoursByChannel,
      nowMs: nowMs,
      futureEndMs: futureEndMs,
      sink: sink,
      channelIds: channelIds,
      normalizedChannels: normalizedChannels,
      displayNamesById: displayNamesById,
      channelHashes: channelHashes,
      excludeChannels: excludeChannels.isEmpty ? null : excludeChannels,
    );
  }

  var usedLenient = false;
  try {
    final attemptTimer = Stopwatch()..start();
    await runParseWithDecoder(const Utf8Decoder(allowMalformed: true),
        useSanitizer: false);
    debugLog(
        'EPG: Fast parse (utf8, no sanitize) took ${attemptTimer.elapsedMilliseconds}ms; programs=$programCount channels=${channelIds.length}');
  } catch (e) {
    final msg = e.toString().toLowerCase();
    final isXmlFormatError = msg.contains('format') || msg.contains('xml');

    if (isXmlFormatError) {
      debugLog('EPG: Fast parse failed ($e) - retrying with sanitization...');
    } else {
      debugLog('EPG: Fast parse failed: $e');
    }

    hadXmlErrors = true;
    channelIds.clear();
    normalizedChannels.clear();
    programCount = 0;

    try {
      final attemptTimer = Stopwatch()..start();
      await runParseWithDecoder(const Utf8Decoder(allowMalformed: true),
          useSanitizer: true);
      debugLog(
          'EPG: Sanitized UTF-8 parse took ${attemptTimer.elapsedMilliseconds}ms; programs=$programCount channels=${channelIds.length}');
    } catch (e2) {
      debugLog('EPG: Sanitized UTF-8 failed ($e2) - retrying Latin1...');
      channelIds.clear();
      normalizedChannels.clear();
      programCount = 0;

      try {
        final attemptTimer = Stopwatch()..start();
        await runParseWithDecoder(latin1.decoder, useSanitizer: true);
        debugLog(
            'EPG: Latin1 parse took ${attemptTimer.elapsedMilliseconds}ms; programs=$programCount channels=${channelIds.length}');
      } catch (e3, s3) {
        debugLog('EPG: Latin1 retry also failed: $e3');
        debugLog(s3.toString());
        if (_kEnableLenientParserFallback) {
          debugLog('EPG: Falling back to lenient parser after XML errors.');
          channelIds.clear();
          normalizedChannels.clear();
          channelHashes.clear();
          programCount = 0;
          try {
            await tempFile.delete();
          } catch (_) {}
          tempFile = File(
              '${Directory.systemTemp.path}/epg_programs_${DateTime.now().millisecondsSinceEpoch}_lenient.jsonl');
          usedLenient = true;
          final attemptTimer = Stopwatch()..start();
          await runLenientParse();
          debugLog(
              'EPG: Lenient parse took ${attemptTimer.elapsedMilliseconds}ms; programs=$programCount channels=${channelIds.length}');
        } else {
          debugLog(
              'EPG: Lenient parser fallback disabled; keeping XML error result.');
        }
      }
    }
  }

  if (!usedLenient &&
      (programCount == 0 || (hadXmlErrors && programCount < 1000))) {
    try {
      final sample =
          await file.openRead(0, 512).transform(utf8.decoder).first;
      debugLog(
          'EPG: Parse failed/empty. File header preview:\n$sample\n(End of preview)');
    } catch (e) {
      debugLog('EPG: Computed file header preview failed: $e');
    }

    if (_kEnableLenientParserFallback) {
      debugLog(
          'EPG: Low program count ($programCount). Falling back to lenient parser.');
      channelIds.clear();
      normalizedChannels.clear();
      channelHashes.clear();
      programCount = 0;
      try {
        await tempFile.delete();
      } catch (_) {}
      tempFile = File(
          '${Directory.systemTemp.path}/epg_programs_${DateTime.now().millisecondsSinceEpoch}_lenient.jsonl');
      final attemptTimer = Stopwatch()..start();
      await runLenientParse();
      debugLog(
          'EPG: Lenient parse took ${attemptTimer.elapsedMilliseconds}ms; programs=$programCount channels=${channelIds.length}');
    } else {
      debugLog(
          'EPG: Lenient parser fallback disabled; keeping low-count result ($programCount).');
    }
  }

  final channelHashStrings = channelHashes.map(
    (key, value) => MapEntry(key, value.toRadixString(16)),
  );

  return {
    'programFilePath': tempFile.path,
    'programCount': programCount,
    'channelIds': channelIds.toList(),
    'normalizedChannels': normalizedChannels,
    'displayNamesById': displayNamesById,
    'channelHashes': channelHashStrings,
    'hadXmlErrors': hadXmlErrors,
  };
}
