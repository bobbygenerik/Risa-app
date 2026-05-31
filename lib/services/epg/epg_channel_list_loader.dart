export 'epg_channel_list_loader_deps.dart';

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:iptv_player/services/epg/epg_channel_list_loader_deps.dart';
import 'package:iptv_player/services/epg/epg_channel_list_loader_helpers.dart';
import 'package:iptv_player/services/epg/epg_file_cache.dart';
import 'package:iptv_player/services/epg/epg_xmltv_isolate_parser.dart';
import 'package:iptv_player/services/smart_cache_service.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Loads the full EPG channel list from DB cache or XML parse.
class EpgChannelListLoader {
  EpgChannelListLoader({
    required EpgChannelListLoaderDeps deps,
    this.maxRetries = 3,
    this.epgPastWindowHours = 2,
    this.epgFutureWindowHours = 8,
  }) : _deps = deps;

  final EpgChannelListLoaderDeps _deps;
  final int maxRetries;
  final int epgPastWindowHours;
  final int epgFutureWindowHours;

  Future<void> loadChannelList({
    bool forceRefresh = false,
    bool allowStaleCache = false,
    bool fromBackgroundRefresh = false,
    bool skipDbLoad = false,
    bool currentDayOnly = false,
  }) async {
    await _deps.restoreDbIfClosed();
    if (!_deps.hasEpgUrl()) return;

    if (_deps.isLoading() || _deps.isDownloading() || _deps.isParsing()) {
      if (!forceRefresh) {
        debugLog('EPG: Load already in progress, skipping concurrent request.');
        return;
      }
      debugLog('EPG: Force refresh interrupting in-flight load.');
      _deps.resetLoadingState();
      _deps.notifyListeners();
    }

    final loadStart = DateTime.now();
    _deps.setLoading(true);
    _deps.setError(null);
    _deps.setEpgProgress(0.02, label: 'Loading EPG');
    _deps.notifyListeners();
    _deps.resetMatchDiagnostics();

    var retryCount = 0;
    var forceRefreshAfterParseFailure = false;
    while (retryCount < maxRetries) {
      try {
        var deferRefresh = false;
        if (!forceRefresh && allowStaleCache) {
          final cacheFile = await _deps.getCacheFile();
          if (await cacheFile.exists() && await cacheFile.length() > 0) {
            final hasAnyCache = await _deps.isCacheValid(allowStale: true);
            if (hasAnyCache) {
              final isFreshCache = await _deps.isCacheValid(allowStale: false);
              if (!isFreshCache) {
                deferRefresh = true;
                debugLog(
                    'EPG: Using stale cache for fast load; refresh in background.');
              }
            }
          }
        }

        if (!deferRefresh) {
          final downloadStart = DateTime.now();
          final effectiveForceRefresh =
              forceRefresh || forceRefreshAfterParseFailure;
          await _deps.downloadEpgIfNeeded(forceRefresh: effectiveForceRefresh);
          debugLog(
              'EPG: Download phase took ${DateTime.now().difference(downloadStart).inMilliseconds}ms');
        }

        if (!_deps.isDbDisabled() && _deps.isDbReady()) {
          try {
            final dbOutcome = await tryLoadProgramsFromDb(
              forceRefresh: forceRefresh,
              skipDbLoad: skipDbLoad,
              dbDisabled: _deps.isDbDisabled(),
              dbReady: _deps.isDbReady(),
              epgFutureHours: _deps.epgFutureHours(),
              allowedCount: _deps.allowedChannelCount(),
              expectedCount: _deps.expectedChannelCount(),
              enableMatchingDiagnostics: _deps.enableMatchingDiagnostics(),
              programCount: _deps.dbProgramCount,
              getAllProgramsByChannel: _deps.getAllProgramsByChannel,
              getNormalizedChannels: _deps.getNormalizedChannels,
              setNormalizedChannels: _deps.setNormalizedChannels,
              loadNormalizedMappingFromPrefs:
                  _deps.loadNormalizedMappingFromPrefs,
              normalize: _deps.normalize,
              clearProgramsByChannel: _deps.clearProgramsByChannel,
              invalidateProgramIndexCache: _deps.invalidateProgramIndexCache,
              setChannelPrograms: _deps.setChannelPrograms,
              clearAvailableChannels: _deps.clearAvailableChannels,
              addAvailableChannels: _deps.addAvailableChannels,
              clearInternalMapping: _deps.clearInternalMapping,
              rebuildEpgIdIndex: _deps.rebuildEpgIdIndex,
              hydrateFuzzyMatchIndexFromDisk: _deps.hydrateFuzzyMatchIndexFromDisk,
              epgIdsRawCount: _deps.epgIdsRawCount,
            );

            if (dbOutcome == EpgDbLoadOutcome.loaded) {
              debugLog(
                  'EPG: EPG channel ids count (DB load): ${_deps.availableChannelCount()}');
              debugLog(
                  'EPG: Load from DB total ${DateTime.now().difference(loadStart).inMilliseconds}ms');
              _deps.setHasParsed(true);
              _deps.setLoading(false);
              _deps.setParsing(false);
              _deps.setError(null);
              _deps.notifyListeners();

              unawaited(SmartCacheService.instance.cacheEpgData(
                _deps.programsByChannel(),
                overwriteDb: false,
              ));

              _deps.scheduleEpgWindowExtension(
                fromBackgroundRefresh: fromBackgroundRefresh,
              );

              if (deferRefresh) {
                unawaited(_deps.refreshFromNetwork());
              }
              _deps.scheduleSecondaryMerge(forceRefresh: forceRefresh);
              return;
            }

            if (dbOutcome == EpgDbLoadOutcome.cacheTooSmall && deferRefresh) {
              debugLog(
                  'EPG: DB too small + stale cache -> forcing fresh download before parse.');
              deferRefresh = false;
              final downloadStart = DateTime.now();
              await _deps.downloadEpgIfNeeded(forceRefresh: true);
              debugLog(
                  'EPG: Forced download took ${DateTime.now().difference(downloadStart).inMilliseconds}ms');
            }
          } catch (e) {
            _deps.handleDbError(e);
          }
        }

        final skippedParse = await trySkipXmlParseWithMappings(
          forceRefresh: forceRefresh,
          dbDisabled: _deps.isDbDisabled(),
          dbReady: _deps.isDbReady(),
          hasLoadedPrograms: _deps.hasLoadedPrograms(),
          normalizedChannels: _deps.getNormalizedChannels(),
          programChannelKeyCount: _deps.programsByChannelKeyCount(),
          allowedCount: _deps.allowedChannelCount(),
          expectedCount: _deps.expectedChannelCount(),
          mappingCount: _deps.dbMappingCount,
          addAvailableChannels: _deps.addAvailableChannels,
          rebuildEpgIdIndex: _deps.rebuildEpgIdIndex,
          hydrateFuzzyMatchIndexFromDisk: _deps.hydrateFuzzyMatchIndexFromDisk,
        );
        if (skippedParse) {
          _deps.setHasParsed(true);
          _deps.setLoading(false);
          _deps.setParsing(false);
          _deps.setError(null);
          _deps.notifyListeners();
          debugLog(
              'EPG: EPG channel ids count (mapping-only): ${_deps.availableChannelCount()}');
          _deps.scheduleSecondaryMerge(forceRefresh: forceRefresh);
          return;
        }

        final file = await _deps.getCacheFile();
        if (!await file.exists()) {
          debugLog(
              'EPG: No cache file available after download; aborting load.');
          _deps.resetLoadingState();
          _deps.notifyListeners();
          return;
        }

        var existingHashes = <String, String>{};
        if (!_deps.isDbDisabled() && _deps.isDbReady()) {
          try {
            existingHashes = await _deps.getEpgChannelHashes();
          } catch (e) {
            debugLog('EPG: Failed to load channel hashes: $e');
            _deps.handleDbError(e);
          }
        }

        final cacheSizeBytes = await file.length();
        debugLog(
            'EPG: Starting background parsing (cacheSize=${(cacheSizeBytes / (1024 * 1024)).toStringAsFixed(2)}MB, allowedSet=${_deps.allowedChannelCount()}, dayOnly=$currentDayOnly, futureHours=$epgFutureWindowHours)');
        _deps.setParsing(true);
        _deps.notifyListeners();
        _deps.startParseProgressTimer();

        final effectiveAllowedChannels = <String>{};
        debugLog('EPG: Parsing full EPG (no channel filter).');

        Future<Map<String, dynamic>> parseEpg(
          Set<String> allowedChannels, {
          required bool dayOnly,
          required int futureHours,
        }) async {
          final now = DateTime.now();
          final windowStart = dayOnly
              ? DateTime(now.year, now.month, now.day)
                  .subtract(Duration(hours: epgPastWindowHours))
              : now.subtract(Duration(hours: epgPastWindowHours));
          // dayOnly covers today + tomorrow so the cached window always spans
          // more than 24h ahead of `now` and never ages out mid-evening.
          final windowEnd = dayOnly
              ? DateTime(now.year, now.month, now.day)
                  .add(const Duration(days: 2))
              : now.add(Duration(hours: futureHours));

          return compute(parseEpgInIsolate, {
            'filePath': file.path,
            'allowedChannels': allowedChannels.toList(),
            'nowMs': windowStart.millisecondsSinceEpoch,
            'futureEndMs': windowEnd.millisecondsSinceEpoch,
            'catchupHoursByChannel': _deps.catchupHoursByNormalizedId(),
            'currentDayOnly': dayOnly,
          });
        }

        final parseStart = DateTime.now();
        var effectiveDayOnly = currentDayOnly;
        var effectiveFutureHours = epgFutureWindowHours;
        var parseResult = await parseEpg(
          effectiveAllowedChannels,
          dayOnly: effectiveDayOnly,
          futureHours: effectiveFutureHours,
        );
        _deps.stopParseProgressTimer();
        _deps.setLastParseDurationMs(
            DateTime.now().difference(parseStart).inMilliseconds);
        debugLog(
            'EPG: Parse compute took ${DateTime.now().difference(parseStart).inMilliseconds}ms');
        var initialProgramCount = parseResult['programCount'] as int? ?? 0;
        var initialChannelIds =
            (parseResult['channelIds'] as List<dynamic>).cast<String>();
        debugLog(
            'EPG: Initial parse result: $initialProgramCount programs, ${initialChannelIds.length} channels');

        final allowedCount = _deps.allowedChannelCount();
        if (effectiveDayOnly &&
            allowedCount >= 500 &&
            initialChannelIds.length * 5 < allowedCount) {
          debugLog(
              'EPG: Current-day parse matched only ${initialChannelIds.length}/$allowedCount channels; expanding window.');
          effectiveDayOnly = false;
          parseResult = await parseEpg(
            effectiveAllowedChannels,
            dayOnly: effectiveDayOnly,
            futureHours: effectiveFutureHours,
          );
          initialProgramCount = parseResult['programCount'] as int? ?? 0;
          initialChannelIds =
              (parseResult['channelIds'] as List<dynamic>).cast<String>();
        }

        final parsedProgramCount = parseResult['programCount'] as int? ?? 0;
        final hadXmlErrors = parseResult['hadXmlErrors'] as bool? ?? false;
        final channelIds =
            (parseResult['channelIds'] as List<dynamic>).cast<String>();
        final programFilePath = parseResult['programFilePath'] as String?;
        final channelHashes = channelHashesFromParse(parseResult);
        await logProgramTempFileSize(programFilePath, parsedProgramCount);

        if (programFilePath == null ||
            programFilePath.isEmpty ||
            parsedProgramCount == 0) {
          final emptyAction = await resolveEmptyParseResult(
            programFilePath: programFilePath,
            parsedProgramCount: parsedProgramCount,
            hadXmlErrors: hadXmlErrors,
            forceRefreshAfterParseFailure: forceRefreshAfterParseFailure,
            channelIds: channelIds,
            hasLoadedPrograms: _deps.hasLoadedPrograms(),
            hasAllowedChannels: _deps.hasAllowedChannels(),
            existingChannelCount: _deps.programsByChannelKeyCount(),
            purgeCacheFiles: _deps.purgeCacheFiles,
            setParsing: _deps.setParsing,
            setError: _deps.setError,
          );
          if (emptyAction == EpgEmptyParseLoopAction.retryDownload) {
            forceRefreshAfterParseFailure = true;
            retryCount++;
            continue;
          }
          break;
        }

        final normalizedChannels = normalizedChannelsFromParse(parseResult);
        final displayNamesById = displayNamesFromParse(parseResult);
        final hashSkip = buildHashSkipState(
          channelHashes: channelHashes,
          existingHashes: existingHashes,
          programsByChannel: _deps.programsByChannel(),
        );
        final skipChannels = hashSkip.skipChannels;
        final stagedPrograms = hashSkip.staged;

        _deps.replaceAvailableChannels(channelIds);
        _deps.setNormalizedChannels(normalizedChannels);
        _deps.setDisplayNames(displayNamesById);
        _deps.rebuildFuzzyCandidates();
        _deps.rebuildEpgIdIndex();
        debugLog(
            'EPG: Total EPG channel IDs collected: ${_deps.availableChannelCount()}');
        if (_deps.enableMatchingDiagnostics()) {
          debugLog(
              'EPG: Diagnostics - parsedChannels=${_deps.availableChannelCount()} rawIds=${_deps.epgIdsRawCount()}');
        }

        final ingestStart = DateTime.now();
        _deps.setEpgProgress(0.7, label: 'Ingesting EPG');
        final deferDbWrites = parsedProgramCount >= 50000;
        if (deferDbWrites) {
          debugLog(
              'EPG: Deferring DB writes during ingest (programs=$parsedProgramCount)');
        }
        await _deps.ingestProgramsFromFile(
          programFilePath,
          target: fromBackgroundRefresh ? stagedPrograms : null,
          skipChannels: skipChannels,
          totalPrograms: parsedProgramCount,
          skipDbWrites: deferDbWrites,
          onProgress: (processed, total) {
            if (total <= 0) return;
            final ratio = (processed / total).clamp(0.0, 1.0);
            _deps.setEpgProgress(0.7 + (0.3 * ratio));
          },
        );
        debugLog(
            'EPG: Program ingest took ${DateTime.now().difference(ingestStart).inMilliseconds}ms');

        if (fromBackgroundRefresh) {
          _deps.replaceProgramsByChannel(stagedPrograms);
        }

        _deps.setHasParsed(true);
        _deps.setParsing(false);
        _deps.setEpgProgress(1.0, label: 'EPG ready');
        _deps.setError(null);
        debugLog(
            'EPG: Load (parse+ingest) total ${DateTime.now().difference(loadStart).inMilliseconds}ms');

        final prefs = await SharedPreferences.getInstance();
        await prefs.setString(
            EpgFileCache.epgCacheTimeKey, DateTime.now().toIso8601String());
        final epgUrl = _deps.epgUrl();
        if (epgUrl != null && epgUrl.isNotEmpty) {
          await prefs.setString(EpgFileCache.epgCacheUrlKey, epgUrl);
        }
        _deps.clearInternalMapping();

        await _deps.saveNormalizedMappingToPrefs(_deps.getNormalizedChannels());
        await _deps.saveDisplayNamesToPrefs(displayNamesById);
        await _deps.backupCacheFile();

        debugLog(
            'EPG: Successfully parsed ${_deps.loadedProgramChannelCount()} channels and ${_deps.availableChannelCount()} IDs with ~$parsedProgramCount programs');
        debugLog(
            'EPG: EPG channel ids count (parsed): ${_deps.availableChannelCount()}');

        unawaited(SmartCacheService.instance.cacheEpgData(
          _deps.programsByChannel(),
          overwriteDb: false,
        ));

        if (channelHashes.isNotEmpty && !_deps.isDbDisabled()) {
          try {
            await _deps.upsertEpgChannelHashes(channelHashes);
          } catch (e) {
            debugLog('EPG: Failed to persist channel hashes: $e');
          }
        }

        if (!_deps.isDbDisabled() && _deps.hasLoadedPrograms()) {
          unawaited(_deps.persistProgramsToDb());
        }

        if (deferRefresh && !fromBackgroundRefresh) {
          unawaited(_deps.refreshFromNetwork());
        }
        _deps.scheduleEpgWindowExtension(
          fromBackgroundRefresh: fromBackgroundRefresh,
        );
        _deps.scheduleSecondaryMerge(forceRefresh: forceRefresh);
        break;
      } catch (e, stack) {
        retryCount++;
        debugLog('EPG: Error loading (attempt $retryCount): $e');
        debugLog(stack.toString());
        _deps.stopParseProgressTimer();

        if (retryCount >= maxRetries) {
          _deps.setError('Failed to load EPG: $e');
          _deps.setParsing(false);
          _deps.setLoading(false);

          await _deps.loadNormalizedMappingFromPrefs();
          final normalized = _deps.getNormalizedChannels();
          if (normalized != null && normalized.isNotEmpty) {
            _deps.addAvailableChannels(
                normalized.values.expand((list) => list));
            _deps.rebuildEpgIdIndex();
          }
          break;
        }
        await Future.delayed(Duration(seconds: retryCount * 2));
      }
    }

    _deps.clearLoadingFlags();
    // Channels requested by the UI while parsing was in flight were marked
    // "attempted" before their programs existed in memory/DB, which would
    // otherwise block them from ever reloading. Clear that guard and flush the
    // deferred requests so they reload now that programs are available.
    _deps.clearAttemptedLoads();
    _deps.flushDeferredChannelRequests();
    _deps.notifyListeners();
  }
}
