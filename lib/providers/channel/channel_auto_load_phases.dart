part of 'channel_auto_load.dart';

/// DB and file-cache load phases for [ChannelAutoLoad].
extension ChannelAutoLoadCachePhases on ChannelAutoLoad {
  Future<bool> tryLoadFromDatabase(
    SharedPreferences prefs,
    ChannelAutoLoadContext ctx,
  ) async {
    if (!deps.getDbReady()) {
      debugLog('ChannelProvider: DB not ready, retrying ensureDb...');
      await deps.ensureDb();
      if (!deps.getDbReady()) {
        debugLog('ChannelProvider: DB still not ready, falling through to M3U cache');
        return false;
      }
    }

    var skipDbLoad = false;
    var count = 0;
    try {
      deps.setLoadingStatus('Loading from database...');
      deps.setLoadingProgress(0.15);
      deps.notifyListeners();
      count =
          await deps.getDb().channelCount().timeout(const Duration(seconds: 4));
      final expectedChannels = ctx.expectedChannels;
      if (expectedChannels != null && expectedChannels > 0) {
        final minExpected = (expectedChannels * 0.9).round();
        if (count > 0 && count < minExpected) {
          debugLog(
              'ChannelProvider: DB cache incomplete ($count/$expectedChannels), but loading anyway to prevent placeholder');
        }
      }
    } catch (e) {
      skipDbLoad = true;
      debugLog('ChannelProvider: DB load timeout/failure: $e');
    }
    if (skipDbLoad) {
      deps.setLoadingStatus('Cache incomplete, reloading playlist...');
      deps.setLoadingProgress(0.2);
      deps.notifyListeners();
    }
    if (skipDbLoad || count <= 0) {
      logToSystem('Skipping DB load (skipDbLoad=$skipDbLoad, count=$count)',
          name: 'ChannelProvider');
      return false;
    }

    logToSystem('Found $count channels in DB, loading first chunk...',
        name: 'ChannelProvider');
    const initialLimit = 1000;
    List<Map<String, dynamic>> channels = const [];
    try {
      channels = await deps
          .getDb()
          .getChannelsPage(offset: 0, limit: initialLimit)
          .timeout(const Duration(seconds: 6));
      logToSystem('DB returned ${channels.length} channels',
          name: 'ChannelProvider');
    } catch (e) {
      logToSystem('DB initial page load timeout/failure: $e',
          name: 'ChannelProvider');
      channels = const [];
      skipDbLoad = true;
    }

    if (channels.isEmpty) {
      logToSystem('DB query returned empty, falling through to M3U cache',
          name: 'ChannelProvider');
      return false;
    }

    logToSystem('DB load successful, setting up channels...',
        name: 'ChannelProvider');
    deps.channelMaps
      ..clear()
      ..addAll(channels);
    deps.setChannelCountDb(count);
    await deps.rebuildChannelCachesAsync();

    await deps.setCurrentEpgMapSignature(
      prefs: prefs,
      playlistUrl: ctx.cachedPlaylistUrl,
      epgUrl: ctx.cachedEpgUrl,
      channelCount: count,
    );

    deps.invalidateCategoryCaches();

    await deps.loadCachedCategoriesFromPrefs();
    try {
      final cachedCategories = deps.getCachedCategories();
      if (cachedCategories == null || cachedCategories.isEmpty) {
        logToSystem('Computing categories...', name: 'ChannelProvider');
        await deps.computeCategoriesAsync();
        logToSystem('Categories: ${deps.getCachedCategories()?.length ?? 0}',
            name: 'ChannelProvider');
      }
    } catch (e) {
      logToSystem('Category error: $e', name: 'ChannelProvider');
      deps.setCachedCategories(const []);
    }

    deps.setIsLoading(false);
    deps.setHasLoadedPlaylist(true);
    deps.setIsColdStartLoad(false);
    deps.notifyListeners();

    deps.updateEpgAllowedChannels();
    deps.scheduleEpgRefresh(forceRefresh: false);

    unawaited(
        SmartCacheService.instance.markChannelCacheFresh(channelCount: count));
    StartupProbe.mark(
        'ChannelProvider.autoLoadPlaylist: initial chunk loaded from DB');

    unawaited(() async {
      await deps.computeCategoriesAsync();
      deps.notifyListeners();
    }());

    if (count > initialLimit) {
      debugLog(
        'ChannelProvider: Keeping startup DB-first '
        '($initialLimit/$count channels in memory; remaining rows stay paged)',
      );
    }

    final skipBgSync = await SmartCacheService.instance
        .isChannelCacheFresh(expectedCount: count);
    if (skipBgSync) {
      debugLog(
        'ChannelProvider: Skipping background sync — channel cache fresh '
        '($count channels)',
      );
    } else {
      unawaited(deps.backgroundSync(prefs: prefs, url: ctx.cachedPlaylistUrl));
    }
    return true;
  }

  Future<bool> tryLoadFromFileCache(
    SharedPreferences prefs,
    ChannelAutoLoadContext ctx,
  ) async {
    if (deps.getDbReady()) {
      try {
        final dbCount = await deps
            .getDb()
            .channelCount()
            .timeout(const Duration(seconds: 4));
        final expected = ctx.expectedChannels;
        final minExpected =
            expected != null && expected > 0 ? (expected * 0.9).round() : 500;
        if (dbCount >= minExpected) {
          debugLog(
            'ChannelProvider: DB has $dbCount channels — preferring DB-first '
            'over file cache re-parse',
          );
          return tryLoadFromDatabase(prefs, ctx);
        }
      } catch (e) {
        debugLog('ChannelProvider: DB count pre-check failed: $e');
      }
    }

    final cacheFilePath = ctx.cacheFilePath;
    final cacheAge = ctx.cacheAge;
    if (cacheFilePath == null || cacheAge == null) {
      debugLog(
          'ChannelProvider: File cache expired or not found, loading from network');
      return false;
    }

    try {
      final file = File(cacheFilePath);
      if (!await file.exists()) {
        debugLog(
            'ChannelProvider: File cache expired or not found, loading from network');
        return false;
      }

      debugLog(
          'ChannelProvider: Loading from M3U file cache (streaming parser)...');
      deps.setLoadingStatus('Loading cached playlist...');
      deps.setLoadingProgress(0.3);
      deps.notifyListeners();
      final cacheLoadStart = DateTime.now();

      final parseStart = DateTime.now();
      final List<Map<String, dynamic>> allChannels = [];
      String? epgUrlFromCache;

      try {
        final randomAccessFile = await file.open();
        final firstByte = await randomAccessFile.readByte();
        await randomAccessFile.close();

        if (firstByte == 91) {
          debugLog(
              'ChannelProvider: Cache file is JSON array, parsing via compute...');
          final jsonString = await file.readAsString();
          final List<dynamic> decoded =
              await compute(jsonDecode, jsonString) as List<dynamic>;
          allChannels.addAll(decoded.map((e) => Map<String, dynamic>.from(e)));
        } else {
          debugLog(
              'ChannelProvider: Cache file is M3U, parsing via Streaming Parser...');
          var lastCacheUiUpdate = DateTime.now();
          final parsed = await parsePlaylistCancelable(
            filePath: cacheFilePath,
            onProgress: (count) {
              deps.setLoadingStatus('Parsing cached playlist: $count channels');
              deps.setLoadingProgress(0.3 + (count / 20000).clamp(0.0, 0.6));
              final now = DateTime.now();
              if (now.difference(lastCacheUiUpdate).inMilliseconds > 500) {
                lastCacheUiUpdate = now;
                deps.notifyListeners();
              }
            },
            onChannelsChunk: (chunk) => allChannels.addAll(chunk),
          );
          epgUrlFromCache = parsed['epgUrl'];
        }
      } catch (e) {
        debugLog('ChannelProvider: Failed to parse cache file: $e');
      }

      final parseDuration = DateTime.now().difference(parseStart);
      debugLog(
          'ChannelProvider: Cache isolate parsing took ${parseDuration.inMilliseconds}ms. Found ${allChannels.length} channels.');

      final epgUrl = epgUrlFromCache;
      if (epgUrl != null && epgUrl.isNotEmpty) {
        final epgPrefs = await SharedPreferences.getInstance();
        final oldUrl = epgPrefs.getString('epg_url');
        final urlChanged = oldUrl != epgUrl;

        await epgPrefs.setString('epg_url', epgUrl);
        if (deps.getEpgService() != null) {
          deps.scheduleEpgRefresh(forceRefresh: urlChanged);
        }
      }

      final mapStart = DateTime.now();
      deps.channelMaps
        ..clear()
        ..addAll(allChannels);
      deps.clearChannelCache();
      await deps.rebuildChannelCachesAsync();
      deps.setChannelCountDb(deps.channelMaps.length);
      deps.updateEpgAllowedChannels();
      await deps.setCurrentEpgMapSignature(
        prefs: prefs,
        playlistUrl: deps.getLastPlaylistUrl(),
        epgUrl: epgUrlFromCache,
        channelCount: allChannels.length,
        channelsFile: null,
      );
      if (deps.getDbReady()) {
        try {
          final existingCount = await deps.getDb().channelCount();
          if (existingCount >= (allChannels.length * 0.95).round()) {
            debugLog(
              'ChannelProvider: Skipping DB re-insert '
              '($existingCount channels already persisted)',
            );
          } else {
            deps.setLoadingStatus('Saving to database... don\'t close the app.');
            deps.setLoadingProgress(0.6);
            deps.notifyListeners();
            await deps.getDb().clearChannels();
            await deps.getDb().insertChannels(deps.channelMaps);
            debugLog(
              'ChannelProvider: Persisted ${deps.channelMaps.length} channels to DB (cache load)',
            );
          }
        } catch (e) {
          debugLog('ChannelProvider: Failed to persist channels to DB: $e');
        }
      }

      final mapDuration = DateTime.now().difference(mapStart);
      debugLog(
          'ChannelProvider: Cache map conversion took ${mapDuration.inMilliseconds}ms');

      deps.invalidateCategoryCaches();
      unawaited(deps.computeCategoriesAsync());

      deps.setIsLoading(false);
      deps.setHasLoadedPlaylist(true);
      deps.setIsColdStartLoad(false);
      deps.notifyListeners();
      deps.refreshSmartChannelCache();
      final totalCacheLoad = DateTime.now().difference(cacheLoadStart);
      debugLog(
          'ChannelProvider: File cache loaded in ${totalCacheLoad.inMilliseconds}ms with ${deps.channelMaps.length} channels');
      StartupProbe.mark(
          'ChannelProvider.autoLoadPlaylist: file cache load finished');
      deps.scheduleEpgRefresh(forceRefresh: false);

      final skipBgSync = await SmartCacheService.instance
          .isChannelCacheFresh(expectedCount: deps.channelMaps.length);
      if (skipBgSync) {
        debugLog(
          'ChannelProvider: Skipping background sync after file cache — '
          'channel cache fresh (${deps.channelMaps.length} channels)',
        );
      } else {
        unawaited(deps.backgroundSync(prefs: prefs, url: ctx.cachedPlaylistUrl));
      }
      return true;
    } catch (e) {
      debugLog(
          'ChannelProvider: File cache load failed: $e, loading from network');
      debugLog(
          'ChannelProvider: File cache expired or not found, loading from network');
      return false;
    }
  }
}
