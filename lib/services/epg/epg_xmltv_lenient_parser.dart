import 'dart:convert';
import 'dart:io';

import 'package:iptv_player/services/epg/epg_programme_filter.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/utils/epg_matching_utils.dart';
import 'package:xml/xml_events.dart';

const int kEpgChannelHashFnvOffsetBasis = 0xcbf29ce484222325;
const int kEpgChannelHashFnvPrime = 0x100000001b3;

final RegExp kEpgProgrammeStartRe =
    RegExp(r'<(?:\w+:)?programme\b', caseSensitive: false);
final RegExp kEpgProgrammeEndRe =
    RegExp(r'</(?:\w+:)?programme\s*>', caseSensitive: false);
final RegExp kEpgChannelStartRe =
    RegExp(r'<(?:\w+:)?channel\b', caseSensitive: false);
final RegExp kEpgChannelEndRe =
    RegExp(r'</(?:\w+:)?channel\s*>', caseSensitive: false);

String decodeXmltvEntities(String input) {
  if (!input.contains('&')) return input;
  return input
      .replaceAll('&amp;', '&')
      .replaceAll('&lt;', '<')
      .replaceAll('&gt;', '>')
      .replaceAll('&quot;', '"')
      .replaceAll('&apos;', "'");
}

String? extractXmltvAttribute(String block, String name,
    Map<String, List<RegExp>> attrRegexCache) {
  var regexes = attrRegexCache[name];
  if (regexes == null) {
    regexes = [
      RegExp('$name\\s*=\\s*"([^"]*)"', caseSensitive: false),
      RegExp("$name\\s*=\\s*'([^']*)'", caseSensitive: false),
    ];
    attrRegexCache[name] = regexes;
  }
  final match = regexes[0].firstMatch(block) ?? regexes[1].firstMatch(block);
  if (match == null) return null;
  return match.group(1);
}

String? extractXmltvTagText(String block, String tag,
    Map<String, RegExp> tagRegexCache) {
  var regex = tagRegexCache[tag];
  if (regex == null) {
    regex = RegExp(
      '<$tag[^>]*>(.*?)</$tag>',
      caseSensitive: false,
      dotAll: true,
    );
    tagRegexCache[tag] = regex;
  }
  final match = regex.firstMatch(block);
  if (match == null) return null;
  final raw = match.group(1) ?? '';
  final cleaned = raw.replaceAll('<![CDATA[', '').replaceAll(']]>', '').trim();
  return decodeXmltvEntities(cleaned);
}

List<String> extractXmltvTagTexts(String block, String tag,
    Map<String, RegExp> tagRegexCache) {
  var regex = tagRegexCache[tag];
  if (regex == null) {
    regex = RegExp(
      '<$tag[^>]*>(.*?)</$tag>',
      caseSensitive: false,
      dotAll: true,
    );
    tagRegexCache[tag] = regex;
  }
  final matches = regex.allMatches(block);
  if (matches.isEmpty) return const [];
  final results = <String>[];
  for (final match in matches) {
    final raw = match.group(1) ?? '';
    final cleaned = raw.replaceAll('<![CDATA[', '').replaceAll(']]>', '').trim();
    final decoded = decodeXmltvEntities(cleaned);
    if (decoded.isNotEmpty) {
      results.add(decoded);
    }
  }
  return results;
}

/// Cap on how much of an unterminated block we keep buffered. A legitimate
/// `<channel>` or `<programme>` block is a few KB; anything past this is a corrupt
/// or never-closing tag, and retaining it would grow the buffer for the rest
/// of a multi-gigabyte file (OOM) while re-scanning it every chunk (quadratic
/// CPU).
const int kEpgMaxPartialBlock = 4 * 1024 * 1024;

/// Tail kept after draining so a start tag split across chunk boundaries
/// still matches on the next chunk.
const int kEpgDrainTailKeep = 65536;

/// Drains complete `<channel>` and `<programme>` blocks from [buffer] in
/// document order, so programme blocks interleaved between channel blocks are
/// never skipped. Returns the unconsumed tail to prepend to the next chunk.
String drainXmltvChannelAndProgrammeBlocks(
  String buffer,
  void Function(String block) onChannel,
  void Function(String block) onProgramme,
) {
  int cursor = 0;
  while (true) {
    final channelStart =
        kEpgChannelStartRe.allMatches(buffer, cursor).firstOrNull;
    final programmeStart =
        kEpgProgrammeStartRe.allMatches(buffer, cursor).firstOrNull;
    if (channelStart == null && programmeStart == null) break;

    final bool isChannel;
    if (channelStart == null) {
      isChannel = false;
    } else if (programmeStart == null) {
      isChannel = true;
    } else {
      isChannel = channelStart.start < programmeStart.start;
    }
    final absoluteStart = isChannel ? channelStart!.start : programmeStart!.start;
    final endRe = isChannel ? kEpgChannelEndRe : kEpgProgrammeEndRe;

    final endMatch = endRe.allMatches(buffer, absoluteStart).firstOrNull;
    if (endMatch == null) {
      var partial = buffer.substring(absoluteStart);
      if (partial.length > kEpgMaxPartialBlock) {
        // Abandon the oversized unterminated block; keep a tail so blocks
        // later in the stream still parse.
        partial = partial.substring(partial.length - kEpgDrainTailKeep);
      }
      return partial;
    }
    final absoluteEnd = endMatch.end;

    final block = buffer.substring(absoluteStart, absoluteEnd);
    if (isChannel) {
      onChannel(block);
    } else {
      onProgramme(block);
    }
    cursor = absoluteEnd;
  }

  var tail = buffer.substring(cursor);
  if (tail.length > kEpgDrainTailKeep) {
    tail = tail.substring(tail.length - kEpgDrainTailKeep);
  }
  return tail;
}

/// Returns null when the timestamp is unparseable, so corrupt entries can be
/// skipped instead of masquerading as currently-airing programmes.
DateTime? parseXmltvTime(String timeStr) {
  try {
    final trimmed = timeStr.trim();
    final m = EPGMatchingUtils.timeParseRe.firstMatch(trimmed);
    if (m == null) return null;

    final g1 = m.group(1);
    final g2 = m.group(2);
    final g3 = m.group(3);
    final g4 = m.group(4);
    final g5 = m.group(5);
    final g6 = m.group(6);

    if (g1 == null ||
        g2 == null ||
        g3 == null ||
        g4 == null ||
        g5 == null ||
        g6 == null) {
      return null;
    }

    final year = int.parse(g1);
    final month = int.parse(g2);
    final day = int.parse(g3);
    final hour = int.parse(g4);
    final minute = int.parse(g5);
    final second = int.parse(g6);

    DateTime dt = DateTime.utc(year, month, day, hour, minute, second);

    final offset = m.group(7);
    if (offset != null && offset.length == 5) {
      final sign = offset.startsWith('+') ? 1 : -1;
      final offH = int.tryParse(offset.substring(1, 3)) ?? 0;
      final offM = int.tryParse(offset.substring(3, 5)) ?? 0;
      final delta = Duration(hours: offH, minutes: offM);
      dt = dt.subtract(sign == 1 ? delta : -delta);
    }

    return dt.toLocal();
  } catch (e) {
    return null;
  }
}

void updateEpgChannelHash(
  Map<String, int> hashes,
  String channelId,
  int start,
  int end,
  String title,
  String? description,
  String? icon,
  String? category,
) {
  var hash = hashes[channelId] ?? kEpgChannelHashFnvOffsetBasis;
  final data =
      '$start|$end|$title|${description ?? ''}|${icon ?? ''}|${category ?? ''}';
  final bytes = utf8.encode(data);
  for (final b in bytes) {
    hash ^= b;
    hash = (hash * kEpgChannelHashFnvPrime) & 0xFFFFFFFFFFFFFFFF;
  }
  hashes[channelId] = hash;
}

void processXmltvProgrammeEvents(
  List<XmlEvent> events,
  Set<String> channelIds,
  Map<String, List<String>> normalizedChannels,
  IOSink sink,
  void Function() onProgram,
  Set<String> allowedNormalized,
  Map<String, int> catchupHoursByChannel,
  int nowMs,
  int futureEndMs,
  String Function(String input) normalize, {
  Map<String, String>? channelIcons,
  Map<String, int>? channelHashes,
  Set<String>? excludeChannels,
}) {
  final startEvent = events.first as XmlStartElementEvent;

  final rawChannelId = startEvent.attributes
      .firstWhere((a) => a.localName == 'channel',
          orElse: () =>
              XmlEventAttribute('channel', '', XmlAttributeType.DOUBLE_QUOTE))
      .value;
  final channelId = rawChannelId.trim();
  final startStr = startEvent.attributes
      .firstWhere((a) => a.localName == 'start',
          orElse: () =>
              XmlEventAttribute('start', '', XmlAttributeType.DOUBLE_QUOTE))
      .value;
  final stopStr = startEvent.attributes
      .firstWhere((a) => a.localName == 'stop',
          orElse: () =>
              XmlEventAttribute('stop', '', XmlAttributeType.DOUBLE_QUOTE))
      .value;

  if (channelId.isEmpty || startStr.isEmpty || stopStr.isEmpty) return;

  final startDt = parseXmltvTime(startStr);
  final endDt = parseXmltvTime(stopStr);
  if (startDt == null || endDt == null) return;
  final start = startDt.millisecondsSinceEpoch;
  final end = endDt.millisecondsSinceEpoch;
  final normalizedChannelId = normalize(channelId);

  channelIds.add(channelId);
  if (normalizedChannelId.isNotEmpty) {
    normalizedChannels.putIfAbsent(normalizedChannelId, () => []).add(channelId);
  }

  // Skip programmes for channels already covered by the primary EPG. The
  // channel id is still registered above so the callsign bridge sees it, but
  // we never build/encode/write the (redundant) programme body — this avoids
  // jsonEncode churn for ~96% of secondary programmes and the OOM cascade it
  // triggered on cold start.
  if (excludeChannels != null && excludeChannels.contains(channelId)) {
    return;
  }

  if (!shouldIncludeProgramme(
    channelId,
    start,
    end,
    allowedNormalized,
    catchupHoursByChannel,
    nowMs,
    futureEndMs,
    normalizedChannelId,
  )) {
    return;
  }

  String title = 'Unknown';
  String? description;
  String? category;
  String? icon;

  String? currentTag;
  StringBuffer? currentSb;

  for (var i = 1; i < events.length; i++) {
    final event = events[i];
    if (event is XmlStartElementEvent) {
      final name = event.localName;
      if (name == 'title' || name == 'desc' || name == 'category') {
        currentTag = name;
        currentSb = StringBuffer();
      } else if (name == 'icon') {
        final src = event.attributes
            .firstWhere((a) => a.localName == 'src',
                orElse: () => XmlEventAttribute(
                    'src', '', XmlAttributeType.DOUBLE_QUOTE))
            .value;
        if (src.isNotEmpty) icon = src;
      }
    } else if (event is XmlEndElementEvent) {
      final name = event.localName;
      if (name == currentTag) {
        if (currentSb != null) {
          final val = currentSb.toString().trim();
          if (val.isNotEmpty) {
            if (name == 'title' && title == 'Unknown') {
              title = val;
            } else if (name == 'desc' && description == null) {
              description = val;
            } else if (name == 'category' && category == null) {
              category = val;
            }
          }
        }
        currentTag = null;
        currentSb = null;
      }
    } else if (event is XmlTextEvent) {
      if (currentTag != null) {
        currentSb?.write(event.value);
      }
    } else if (event is XmlCDATAEvent) {
      if (currentTag != null) {
        currentSb?.write(event.value);
      }
    }
  }

  if ((icon == null || icon.isEmpty) && channelIcons != null) {
    icon = channelIcons[channelId];
  }

  final payload = {
    'epgId': channelId,
    'startTs': start,
    'endTs': end,
    'title': title,
    'description': description,
    'imageUrl': icon,
    'category': category,
  };
  if (channelHashes != null) {
    updateEpgChannelHash(
      channelHashes,
      channelId,
      start,
      end,
      title,
      description,
      icon,
      category,
    );
  }
  sink.writeln(jsonEncode(payload));
  onProgram();
}

Future<int> runLenientEpgParse({
  required Stream<List<int>> Function() rawStreamProvider,
  required String Function(String input) sanitizeXmlChunk,
  required String Function(String input) normalize,
  required Set<String> allowedChannels,
  required Map<String, int> catchupHoursByChannel,
  required int nowMs,
  required int futureEndMs,
  required IOSink sink,
  required Set<String> channelIds,
  required Map<String, List<String>> normalizedChannels,
  required Map<String, List<String>> displayNamesById,
  required Map<String, int> channelHashes,
  Set<String>? excludeChannels,
}) async {
  final stream =
      rawStreamProvider().transform(const Utf8Decoder(allowMalformed: true));
  var buffer = '';
  final channelIcons = <String, String>{};
  final rejectStats = <String, int>{};
  final attrRegexCache = <String, List<RegExp>>{};
  final tagRegexCache = <String, RegExp>{};
  var programCount = 0;
  var totalProgrammes = 0;

  await for (final chunk in stream) {
    buffer += sanitizeXmlChunk(chunk);

    buffer = drainXmltvChannelAndProgrammeBlocks(
      buffer,
      (block) {
        final id = extractXmltvAttribute(block, 'id', attrRegexCache)?.trim() ??
            '';
        if (id.isEmpty) return;
        final normalizedId = normalize(id);
        channelIds.add(id);
        if (normalizedId.isNotEmpty) {
          normalizedChannels.putIfAbsent(normalizedId, () => []).add(id);
        }
        final displays =
            extractXmltvTagTexts(block, 'display-name', tagRegexCache);
        if (displays.isNotEmpty) {
          displayNamesById[id] = List<String>.from(displays);
        }
        for (final display in displays) {
          final normalizedDisplay = normalize(display);
          if (normalizedDisplay.isNotEmpty) {
            normalizedChannels
                .putIfAbsent(normalizedDisplay, () => [])
                .add(id);
          }
        }
        final icon = extractXmltvAttribute(block, 'src', attrRegexCache);
        if (icon != null && icon.isNotEmpty) {
          channelIcons[id] = icon;
        }
      },
      (block) {
        final channelId =
            extractXmltvAttribute(block, 'channel', attrRegexCache)?.trim() ??
                '';
        final startStr =
            extractXmltvAttribute(block, 'start', attrRegexCache)?.trim() ??
                '';
        final stopStr =
            extractXmltvAttribute(block, 'stop', attrRegexCache)?.trim() ?? '';
        if (channelId.isEmpty || startStr.isEmpty || stopStr.isEmpty) {
          return;
        }
        // Register the channel id before any exclusion so the callsign bridge
        // sees it even when the programme body is skipped (matches the
        // event-path behaviour in processXmltvProgrammeEvents).
        final normalizedChannelId = normalize(channelId);
        channelIds.add(channelId);
        if (normalizedChannelId.isNotEmpty) {
          normalizedChannels
              .putIfAbsent(normalizedChannelId, () => [])
              .add(channelId);
        }
        // Skip programmes for channels already covered by the primary EPG —
        // we avoid building/encoding the redundant programme body.
        if (excludeChannels != null && excludeChannels.contains(channelId)) {
          return;
        }
        totalProgrammes++;
        final startDt = parseXmltvTime(startStr);
        final endDt = parseXmltvTime(stopStr);
        if (startDt == null || endDt == null) {
          rejectStats['badTimestamp'] = (rejectStats['badTimestamp'] ?? 0) + 1;
          return;
        }
        final start = startDt.millisecondsSinceEpoch;
        final end = endDt.millisecondsSinceEpoch;
        if (!shouldIncludeProgramme(
          channelId,
          start,
          end,
          allowedChannels,
          catchupHoursByChannel,
          nowMs,
          futureEndMs,
          normalizedChannelId,
          rejectStats: rejectStats,
        )) {
          return;
        }
        final title =
            extractXmltvTagText(block, 'title', tagRegexCache) ?? 'Unknown';
        final description =
            extractXmltvTagText(block, 'desc', tagRegexCache);
        final category =
            extractXmltvTagText(block, 'category', tagRegexCache);
        var icon = extractXmltvAttribute(block, 'src', attrRegexCache);
        if ((icon == null || icon.isEmpty) &&
            channelIcons.containsKey(channelId)) {
          icon = channelIcons[channelId];
        }

        final payload = {
          'epgId': channelId,
          'startTs': start,
          'endTs': end,
          'title': title,
          'description': description,
          'imageUrl': icon,
          'category': category,
        };
        updateEpgChannelHash(
          channelHashes,
          channelId,
          start,
          end,
          title,
          description,
          icon,
          category,
        );
        sink.writeln(jsonEncode(payload));
        programCount++;
      },
    );
  }

  await sink.flush();
  await sink.close();

  debugLog(
      'EPG: Lenient parse stats - total programmes in file: $totalProgrammes, accepted: $programCount');
  debugLog('EPG: Reject stats: $rejectStats');
  if (totalProgrammes > 0 && programCount == 0) {
    debugLog(
        'EPG: All programs rejected! nowMs=$nowMs, futureEndMs=$futureEndMs');
  }

  return programCount;
}
