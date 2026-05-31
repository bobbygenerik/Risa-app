import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/services/epg/epg_channel_list_loader_helpers.dart';
import 'package:iptv_player/services/epg/epg_file_cache.dart';
import 'package:iptv_player/services/epg/epg_xmltv_isolate_parser.dart';
import 'package:iptv_player/utils/debug_helper.dart';

/// Callbacks into [IncrementalEpgService] for secondary EPG merge.
class EpgSecondaryLoaderDeps {
  const EpgSecondaryLoaderDeps({
    required this.secondaryEpgUrl,
    required this.lastSecondaryDownloadTime,
    required this.setLastSecondaryDownloadTime,
    required this.secondaryMergeInFlight,
    required this.setSecondaryMergeInFlight,
    required this.fileCache,
    required this.epgFutureHours,
    required this.catchupHoursByNormalizedId,
    required this.programsByChannel,
    required this.getNormalizedChannels,
    required this.setNormalizedChannels,
    required this.mergeDisplayNames,
    required this.addAvailableChannels,
    required this.rebuildEpgIdIndex,
    required this.rebuildFuzzyCandidates,
    required this.clearInternalMapping,
    required this.saveNormalizedMappingToPrefs,
    required this.saveDisplayNamesToPrefs,
    required this.getDisplayNames,
    required this.ingestProgramsFromFile,
    required this.persistProgramsToDb,
    required this.isDbDisabled,
    required this.notifyListeners,
  });

  final String? Function() secondaryEpgUrl;
  final DateTime? Function() lastSecondaryDownloadTime;
  final void Function(DateTime? value) setLastSecondaryDownloadTime;
  final bool Function() secondaryMergeInFlight;
  final void Function(bool value) setSecondaryMergeInFlight;
  final EpgFileCache fileCache;
  final int Function() epgFutureHours;
  final Map<String, int> Function() catchupHoursByNormalizedId;
  final Map<String, List<Program>> Function() programsByChannel;
  final Map<String, List<String>>? Function() getNormalizedChannels;
  final void Function(Map<String, List<String>>? value) setNormalizedChannels;
  final void Function(Map<String, List<String>> displayNames) mergeDisplayNames;
  final void Function(Iterable<String> ids) addAvailableChannels;
  final void Function() rebuildEpgIdIndex;
  final void Function() rebuildFuzzyCandidates;
  final void Function() clearInternalMapping;
  final Future<void> Function(Map<String, List<String>>? mapping)
      saveNormalizedMappingToPrefs;
  final Future<void> Function(Map<String, List<String>>? names)
      saveDisplayNamesToPrefs;
  final Map<String, List<String>> Function() getDisplayNames;
  final Future<void> Function(
    String? path, {
    Set<String>? skipChannels,
    bool skipDbWrites,
  }) ingestProgramsFromFile;
  final Future<void> Function() persistProgramsToDb;
  final bool Function() isDbDisabled;
  final void Function() notifyListeners;
}

/// Downloads, parses, and merges a secondary XMLTV source into the primary EPG.
class EpgSecondaryLoader {
  EpgSecondaryLoader({required EpgSecondaryLoaderDeps deps}) : _deps = deps;

  final EpgSecondaryLoaderDeps _deps;

  static const int _pastWindowHours = 2;
  static const int _futureWindowHours = 36;

  void scheduleMerge({bool forceRefresh = false}) {
    final url = _deps.secondaryEpgUrl()?.trim();
    if (url == null || url.isEmpty) return;
    unawaited(mergeIfConfigured(forceRefresh: forceRefresh));
  }

  Future<void> mergeIfConfigured({bool forceRefresh = false}) async {
    final url = _deps.secondaryEpgUrl()?.trim();
    if (url == null || url.isEmpty) return;
    if (_deps.secondaryMergeInFlight()) {
      debugLog('EPG: Secondary merge already in flight.');
      return;
    }

    _deps.setSecondaryMergeInFlight(true);
    final mergeStart = DateTime.now();
    try {
      _deps.setLastSecondaryDownloadTime(
        await _deps.fileCache.downloadSecondaryIfNeeded(
          epgUrl: url,
          forceRefresh: forceRefresh,
          lastDownloadTime: _deps.lastSecondaryDownloadTime(),
        ),
      );

      final file = await _deps.fileCache.getSecondaryCacheFile();
      if (!await file.exists() || await file.length() < 100) {
        debugLog('EPG: Secondary cache missing after download.');
        return;
      }

      debugLog(
          'EPG: Parsing secondary EPG (${(await file.length()) ~/ (1024 * 1024)}MB)...');
      final now = DateTime.now();
      final windowStart =
          now.subtract(Duration(hours: _pastWindowHours));
      final windowEnd = now.add(Duration(hours: _futureWindowHours));

      final parseResult = await compute(parseEpgInIsolate, {
        'filePath': file.path,
        'allowedChannels': const <String>[],
        'nowMs': windowStart.millisecondsSinceEpoch,
        'futureEndMs': windowEnd.millisecondsSinceEpoch,
        'catchupHoursByChannel': _deps.catchupHoursByNormalizedId(),
        'currentDayOnly': false,
      });

      final parsedProgramCount = parseResult['programCount'] as int? ?? 0;
      final channelIds =
          (parseResult['channelIds'] as List<dynamic>).cast<String>();
      if (channelIds.isEmpty) {
        debugLog('EPG: Secondary parse produced no channels.');
        return;
      }

      final incomingNormalized = normalizedChannelsFromParse(parseResult);
      final incomingDisplayNames = displayNamesFromParse(parseResult);
      _mergeNormalizedChannels(incomingNormalized);
      _deps.mergeDisplayNames(incomingDisplayNames);
      _deps.addAvailableChannels(channelIds);
      _deps.rebuildEpgIdIndex();
      _deps.rebuildFuzzyCandidates();
      _deps.clearInternalMapping();

      final programFilePath = parseResult['programFilePath'] as String?;
      if (programFilePath != null &&
          programFilePath.isNotEmpty &&
          parsedProgramCount > 0) {
        final skipChannels = _primaryProgramChannelIds();
        await _deps.ingestProgramsFromFile(
          programFilePath,
          skipChannels: skipChannels,
          skipDbWrites: parsedProgramCount >= 50000,
        );
        if (!_deps.isDbDisabled()) {
          unawaited(_deps.persistProgramsToDb());
        }
      }

      await _deps.saveNormalizedMappingToPrefs(_deps.getNormalizedChannels());
      await _deps.saveDisplayNamesToPrefs(_deps.getDisplayNames());
      _deps.notifyListeners();

      debugLog(
          'EPG: Secondary merge complete (+${channelIds.length} channel ids, ~$parsedProgramCount programs, ${DateTime.now().difference(mergeStart).inMilliseconds}ms)');
    } catch (e, stack) {
      debugLog('EPG: Secondary merge failed: $e');
      debugLog(stack.toString());
    } finally {
      _deps.setSecondaryMergeInFlight(false);
    }
  }

  void _mergeNormalizedChannels(Map<String, List<String>> incoming) {
    final target = _deps.getNormalizedChannels() ?? <String, List<String>>{};
    for (final entry in incoming.entries) {
      final list = target.putIfAbsent(entry.key, () => <String>[]);
      for (final id in entry.value) {
        if (!list.contains(id)) list.add(id);
      }
    }
    _deps.setNormalizedChannels(target);
  }

  Set<String> _primaryProgramChannelIds() {
    final programs = _deps.programsByChannel();
    return {
      for (final entry in programs.entries)
        if (entry.value.isNotEmpty) entry.key,
    };
  }
}
