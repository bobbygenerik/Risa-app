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
  // Fast path check to avoid unnecessary string allocations when no entities are present
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

String drainXmltvBlocks(
  String buffer,
  RegExp startRe,
  RegExp endRe,
  void Function(String block) onBlock,
) {
  int cursor = 0;
  while (true) {
    final startMatches = startRe.allMatches(buffer, cursor);
    if (startMatches.isEmpty) break;
    final startMatch = startMatches.first;
    final absoluteStart = startMatch.start;

    final endMatches = endRe.allMatches(buffer, absoluteStart);
    if (endMatches.isEmpty) {
      return buffer.substring(absoluteStart);
    }
    final endMatch = endMatches.first;
    final absoluteEnd = endMatch.end;

    final block = buffer.substring(absoluteStart, absoluteEnd);
    onBlock(block);
    cursor = absoluteEnd;
  }

  var tail = buffer.substring(cursor);
  if (tail.length > 65536) {
    tail = tail.substring(tail.length - 65536);
  }
  return tail;
}

DateTime parseXmltvTime(String timeStr) {
  try {
    final trimmed = timeStr.trim();
    final m = EPGMatchingUtils.timeParseRe.firstMatch(trimmed);
    if (m == null) return DateTime.now();

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
      return DateTime.now();
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
    return DateTime.now();
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

  final start = parseXmltvTime(startStr).millisecondsSinceEpoch;
  final end = parseXmltvTime(stopStr).millisecondsSinceEpoch;
  final normalizedChannelId = normalize(channelId);

  channelIds.add(channelId);
  if (normalizedChannelId.isNotEmpty) {
    normalizedChannels.putIfAbsent(normalizedChannelId, () => []).add(channelId);
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

  if ((icon == null || icon.isEmpty) &&
      channelIcons != null &&
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

    buffer = drainXmltvBlocks(
      buffer,
      kEpgChannelStartRe,
      kEpgChannelEndRe,
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
    );

    buffer = drainXmltvBlocks(
      buffer,
      kEpgProgrammeStartRe,
      kEpgProgrammeEndRe,
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
        totalProgrammes++;
        final start = parseXmltvTime(startStr).millisecondsSinceEpoch;
        final end = parseXmltvTime(stopStr).millisecondsSinceEpoch;
        final normalizedChannelId = normalize(channelId);
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
        channelIds.add(channelId);
        if (normalizedChannelId.isNotEmpty) {
          normalizedChannels
              .putIfAbsent(normalizedChannelId, () => [])
              .add(channelId);
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
