import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:io';

/// Whether loaded channel count is too small relative to allowed/expected counts.
bool epgCacheTooSmall({
  required int loadedChannels,
  required int allowedCount,
  required int expectedCount,
}) {
  return (allowedCount >= 500 && loadedChannels * 5 < allowedCount) ||
      (expectedCount >= 1000 && loadedChannels * 5 < expectedCount) ||
      (expectedCount == 0 && loadedChannels < 1000);
}

enum EpgDbLoadOutcome { loaded, cacheTooSmall, notAvailable }

/// Attempt to hydrate in-memory programs from the DB fast path.
Future<EpgDbLoadOutcome> tryLoadProgramsFromDb({
  required bool forceRefresh,
  required bool skipDbLoad,
  required bool dbDisabled,
  required bool dbReady,
  required int epgFutureHours,
  required int allowedCount,
  required int expectedCount,
  required bool enableMatchingDiagnostics,
  required Future<int> Function() programCount,
  required Future<Map<String, List<Map<String, dynamic>>>> Function({
    required int pastHours,
    required int futureHours,
  }) getAllProgramsByChannel,
  required Map<String, List<String>>? Function() getNormalizedChannels,
  required void Function(Map<String, List<String>>? value) setNormalizedChannels,
  required Future<void> Function() loadNormalizedMappingFromPrefs,
  required String Function(String text) normalize,
  required void Function() clearProgramsByChannel,
  required void Function() invalidateProgramIndexCache,
  required void Function(String epgId, List<Program> programs) setChannelPrograms,
  required void Function() clearAvailableChannels,
  required void Function(Iterable<String> ids) addAvailableChannels,
  required void Function() clearInternalMapping,
  required void Function() rebuildEpgIdIndex,
  required void Function() rebuildFuzzyCandidates,
  required int Function() epgIdsRawCount,
}) async {
  if (forceRefresh || dbDisabled || skipDbLoad || !dbReady) {
    return EpgDbLoadOutcome.notAvailable;
  }

  try {
    final dbCountStart = DateTime.now();
    final count = await programCount();
    debugLog(
        'EPG: DB programCount took ${DateTime.now().difference(dbCountStart).inMilliseconds}ms');
    if (count <= 0) return EpgDbLoadOutcome.notAvailable;

    debugLog('EPG: Found $count programs in DB, loading...');
    final dbLoadStart = DateTime.now();
    final dbPrograms = await getAllProgramsByChannel(
      pastHours: 12,
      futureHours: epgFutureHours,
    );
    debugLog(
        'EPG: DB getAllProgramsByChannel took ${DateTime.now().difference(dbLoadStart).inMilliseconds}ms');
    if (dbPrograms.isEmpty) return EpgDbLoadOutcome.notAvailable;

    clearProgramsByChannel();
    invalidateProgramIndexCache();
    for (final entry in dbPrograms.entries) {
      final epgId = entry.key;
      final programs = entry.value
          .map((row) => Program(
                id: '${epgId}_${row['startTs']}',
                channelId: epgId,
                title: row['title'] as String? ?? '',
                description: row['description'] as String?,
                startTime: DateTime.fromMillisecondsSinceEpoch(
                    row['startTs'] as int),
                endTime:
                    DateTime.fromMillisecondsSinceEpoch(row['endTs'] as int),
                imageUrl: row['imageUrl'] as String?,
              ))
          .toList();
      setChannelPrograms(epgId, programs);
    }

    clearAvailableChannels();
    addAvailableChannels(dbPrograms.keys);

    var normalized = getNormalizedChannels();
    if (normalized == null || normalized.isEmpty) {
      debugLog(
          'EPG: Normalized mapping missing during DB load, attempting reload...');
      await loadNormalizedMappingFromPrefs();
      normalized = getNormalizedChannels();
    }

    if (normalized != null) {
      addAvailableChannels(normalized.values.expand((list) => list));
      debugLog(
          'EPG: Added ${normalized.length} normalized entries to availableChannels.');
    } else {
      debugLog(
          'EPG: _normalizedAvailableChannels is null even after reload attempt');
    }

    rebuildEpgIdIndex();
    clearInternalMapping();

    if (normalized == null || normalized.isEmpty) {
      debugLog('EPG: Rebuilding normalized mapping from DB keys...');
      final rebuilt = <String, List<String>>{};
      for (final epgId in dbPrograms.keys) {
        final norm = normalize(epgId);
        if (norm.isNotEmpty) {
          rebuilt.putIfAbsent(norm, () => []).add(epgId);
        }
      }
      setNormalizedChannels(rebuilt);
      debugLog(
          'EPG: Built normalized mapping with ${rebuilt.length} entries from ${dbPrograms.length} channels');
    }

    final loadedChannels = dbPrograms.length;
    debugLog(
        'EPG: Loaded $loadedChannels channels from DB cache (${dbPrograms.values.fold<int>(0, (sum, list) => sum + list.length)} programs)');
    if (enableMatchingDiagnostics) {
      debugLog(
          'EPG: Diagnostics - dbChannels=$loadedChannels rawIds=${epgIdsRawCount()}');
    }

    rebuildFuzzyCandidates();

    if (epgCacheTooSmall(
      loadedChannels: loadedChannels,
      allowedCount: allowedCount,
      expectedCount: expectedCount,
    )) {
      debugLog(
          'EPG: DB cache too small ($loadedChannels/$allowedCount); falling through to XML parse.');
      return EpgDbLoadOutcome.cacheTooSmall;
    }

    return EpgDbLoadOutcome.loaded;
  } catch (e) {
    debugLog('EPG: Failed to load programs from DB: $e');
    rethrow;
  }
}

/// Skip XML parse when mappings + in-memory programs are sufficient.
Future<bool> trySkipXmlParseWithMappings({
  required bool forceRefresh,
  required bool dbDisabled,
  required bool dbReady,
  required bool hasLoadedPrograms,
  required Map<String, List<String>>? normalizedChannels,
  required int programChannelKeyCount,
  required int allowedCount,
  required int expectedCount,
  required Future<int> Function() mappingCount,
  required void Function(Iterable<String> ids) addAvailableChannels,
  required void Function() rebuildEpgIdIndex,
}) async {
  if (forceRefresh ||
      normalizedChannels == null ||
      normalizedChannels.isEmpty ||
      dbDisabled ||
      !dbReady) {
    return false;
  }

  try {
    final count = await mappingCount();
    final cacheTooSmall = epgCacheTooSmall(
      loadedChannels: programChannelKeyCount,
      allowedCount: allowedCount,
      expectedCount: expectedCount,
    );
    if (count > 0 && hasLoadedPrograms && !cacheTooSmall) {
      debugLog(
          'EPG: Skipping XML parse - using ${normalizedChannels.length} cached channels and $count DB mappings.');
      addAvailableChannels(normalizedChannels.values.expand((list) => list));
      rebuildEpgIdIndex();
      return true;
    }
  } catch (e) {
    debugLog('EPG: Failed to read mapping count: $e');
    rethrow;
  }
  return false;
}

enum EpgEmptyParseLoopAction { keepExisting, retryDownload, fail }

/// Decide how to handle a parse that produced no usable programs.
Future<EpgEmptyParseLoopAction> resolveEmptyParseResult({
  required String? programFilePath,
  required int parsedProgramCount,
  required bool hadXmlErrors,
  required bool forceRefreshAfterParseFailure,
  required List<String> channelIds,
  required bool hasLoadedPrograms,
  required bool hasAllowedChannels,
  required int existingChannelCount,
  required Future<void> Function() purgeCacheFiles,
  required void Function(bool value) setParsing,
  required void Function(String? value) setError,
}) async {
  debugLog(
      'EPG: Parse produced no programs; checking if we should use fallback data.');

  if (hasLoadedPrograms && hasAllowedChannels && existingChannelCount >= 500) {
    debugLog(
        'EPG: Keeping existing data ($existingChannelCount channels) due to filtered empty result');
    setParsing(false);
    setError(null);
    return EpgEmptyParseLoopAction.keepExisting;
  }

  if (hadXmlErrors && !forceRefreshAfterParseFailure) {
    debugLog(
        'EPG: Parse failed with XML errors; purging cache and retrying download.');
    await purgeCacheFiles();
    return EpgEmptyParseLoopAction.retryDownload;
  }

  if (!forceRefreshAfterParseFailure &&
      !hadXmlErrors &&
      channelIds.isNotEmpty &&
      parsedProgramCount == 0) {
    debugLog(
        'EPG: Cache appears stale (${channelIds.length} channels but 0 programs accepted). Purging and re-downloading.');
    await purgeCacheFiles();
    return EpgEmptyParseLoopAction.retryDownload;
  }

  setParsing(false);
  setError('No EPG data available.');
  debugLog('EPG: Parse produced no programs; clearing data.');
  if (programFilePath != null && programFilePath.isNotEmpty) {
    try {
      final tempFile = File(programFilePath);
      if (await tempFile.exists()) {
        await tempFile.delete();
      }
    } catch (e) {
      debugLog('EPG: temp file cleanup after no programs failed: $e');
    }
  }
  return EpgEmptyParseLoopAction.fail;
}

Future<void> logProgramTempFileSize(String? programFilePath, int count) async {
  if (programFilePath == null || programFilePath.isEmpty) return;
  try {
    final tempFile = File(programFilePath);
    if (await tempFile.exists()) {
      final tempSize = await tempFile.length();
      debugLog(
          'EPG: Program temp file size ${(tempSize / (1024 * 1024)).toStringAsFixed(2)}MB (programs=$count)');
    }
  } catch (e) {
    debugLog('EPG: temp file stat failed: $e');
  }
}

Map<String, List<String>> normalizedChannelsFromParse(Map<String, dynamic> r) {
  return (r['normalizedChannels'] as Map).map((k, v) => MapEntry(
      k.toString(), (v as List<dynamic>).map((e) => e.toString()).toList()));
}

Map<String, List<String>> displayNamesFromParse(Map<String, dynamic> r) {
  return (r['displayNamesById'] as Map?)
          ?.map((k, v) => MapEntry(k.toString(), (v as List).cast<String>())) ??
      <String, List<String>>{};
}

Map<String, String> channelHashesFromParse(Map<String, dynamic> r) {
  return (r['channelHashes'] as Map?)
          ?.map((k, v) => MapEntry(k.toString(), v.toString())) ??
      <String, String>{};
}

({Set<String> skipChannels, Map<String, List<Program>> staged})
    buildHashSkipState({
  required Map<String, String> channelHashes,
  required Map<String, String> existingHashes,
  required Map<String, List<Program>> programsByChannel,
}) {
  final stagedPrograms = <String, List<Program>>{};
  final skipChannels = <String>{};
  if (channelHashes.isEmpty || existingHashes.isEmpty) {
    return (skipChannels: skipChannels, staged: stagedPrograms);
  }
  for (final entry in channelHashes.entries) {
    final existingHash = existingHashes[entry.key];
    if (existingHash != null &&
        existingHash.isNotEmpty &&
        existingHash == entry.value) {
      final existingPrograms = programsByChannel[entry.key];
      if (existingPrograms != null && existingPrograms.isNotEmpty) {
        skipChannels.add(entry.key);
        stagedPrograms[entry.key] = existingPrograms;
      }
    }
  }
  return (skipChannels: skipChannels, staged: stagedPrograms);
}
