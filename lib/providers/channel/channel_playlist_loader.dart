import 'dart:async';
import 'dart:convert';

import 'package:iptv_player/providers/playlist_loader.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/utils/performance_monitor.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'channel_playlist_cache.dart';
import 'channel_playlist_loader_alt.dart';
import 'channel_playlist_loader_deps.dart';
import 'channel_playlist_loader_errors.dart';

/// Downloads, parses, and applies M3U/Xtream playlists for [ChannelProvider].
class ChannelPlaylistLoader {
  ChannelPlaylistLoader(this.deps) : _alt = ChannelPlaylistLoaderAlt(deps);

  final ChannelPlaylistLoaderDeps deps;
  final ChannelPlaylistLoaderAlt _alt;
  PlaylistLoader _playlistLoader = PlaylistLoader();

  void cancelCurrent() => _playlistLoader.cancelCurrent();

  /// Load channels from M3U URL.
  Future<void> loadPlaylistFromUrl(String url) async {
    PerformanceMonitor.start('PLAYLIST_LOAD_TOTAL');
    PerformanceMonitor.trackMemoryUsage('Before playlist load');
    deps.setLastPlaylistUrl(url);
    deps.setNoPlaylistConfigured(false);

    try {
      await loadPlaylistFromUrlImpl(url);
      PerformanceMonitor.trackChannelLoad(
        deps.channelMaps.length,
        DateTime.now().difference(DateTime.now()),
      );
    } catch (e) {
      if (isPlaylistHandshakeError(e)) {
        debugLog(
          'ChannelProvider: Handshake error detected, retrying with direct HttpClient: $e',
        );
        await _alt.loadWithDirectClient(url);
      } else {
        rethrow;
      }
    }
  }

  /// Implementation of [loadPlaylistFromUrl] using standard http.Client.
  Future<void> loadPlaylistFromUrlImpl(
    String url, {
    bool isBackground = false,
  }) async {
    PerformanceMonitor.start('PLAYLIST_LOAD_TOTAL');

    if (!isBackground) {
      deps.setIsLoading(true);
      deps.setIsColdStartLoad(deps.channelMaps.isEmpty);
      deps.setErrorMessage(null);
      deps.clearLastM3UContent();
      deps.notifyListeners();
      deps.setErrorMessage(null);
      deps.clearLastM3UContent();
      deps.notifyListeners();
    } else {
      deps.setIsBackgroundSyncing(true);
      deps.notifyListeners();
      debugLog('ChannelProvider: Running background playlist update...');
    }

    try {
      await deps.setWakeLock(true);
      debugLog(
        'ChannelProvider: Loading playlist from URL: $url (using PlaylistLoader)',
      );
      _playlistLoader.cancelCurrent();
      _playlistLoader = PlaylistLoader();

      final List<Map<String, dynamic>> loadingTarget =
          isBackground ? <Map<String, dynamic>>[] : deps.channelMaps;

      if (!isBackground) {
        deps.prepareForegroundLoad();
        deps.setLoadingStatus('Starting download...');
        deps.setLoadingProgress(0.0);
        deps.notifyListeners();
      }

      DateTime lastUiUpdate = DateTime.now();

      final parsed = await _playlistLoader.loadFromUrl(
        url,
        onProgress: (count) {
          if (!isBackground) {
            deps.setLoadingStatus('Parsing playlist: $count channels');
            deps.setLoadingProgress(0.5 + (count / 20000).clamp(0.0, 0.45));
            final now = DateTime.now();
            if (now.difference(lastUiUpdate).inMilliseconds > 500) {
              lastUiUpdate = now;
              deps.notifyListeners();
            }
          }
        },
        onChannelsChunk: (chunk) {
          loadingTarget.addAll(chunk);

          if (!isBackground) {
            final startIndex = loadingTarget.length - chunk.length;
            deps.buildIndicesForChunk(chunk, startIndex);
          }

          final now = DateTime.now();
          final bool shouldUpdate =
              now.difference(lastUiUpdate).inMilliseconds > 500;

          if (loadingTarget.length >= 200 &&
              (shouldUpdate || loadingTarget.length % 2000 == 0)) {
            if (!isBackground) {
              deps.setChannelCountDb(loadingTarget.length);
              deps.invalidateCategoryCaches();
              lastUiUpdate = now;
              deps.notifyListenersSafe();
            }
          }
        },
      );

      var channelsFile = parsed['channelsFile'] as String?;

      if (channelsFile != null && channelsFile.isNotEmpty) {
        final staged = await deps.stageChannelsJsonl(channelsFile);
        if (staged != null && staged.isNotEmpty) {
          channelsFile = staged;
          parsed['channelsFile'] = staged;
        }
      }

      if ((channelsFile == null || channelsFile.isEmpty) &&
          (parsed['channels'] == null ||
              (parsed['channels'] as List).isEmpty)) {
        deps.setErrorMessage(
          'The playlist file could not be parsed or contains no channels. Please check your playlist source.',
        );
        deps.setIsLoading(false);
        deps.notifyListeners();
        throw Exception('Parsed playlist is empty or invalid');
      }

      final prefs = await SharedPreferences.getInstance();

      final epgUrl = parsed['epgUrl'] as String?;
      if (epgUrl != null && epgUrl.isNotEmpty) {
        final oldUrl = prefs.getString('epg_url');
        final urlChanged = oldUrl != epgUrl;
        debugLog(
          'ChannelProvider: Found EPG URL in playlist: $epgUrl (changed: $urlChanged)',
        );
        await prefs.setString('epg_url', epgUrl);
        if (deps.getEpgService() != null) {
          debugLog(
            'ChannelProvider: Initializing EPG service with URL from M3U',
          );
          deps.scheduleEpgRefresh(forceRefresh: urlChanged);
        }
      }

      if (!isBackground) {
        deps.setLoadingStatus('Finishing up...');
        deps.setLoadingProgress(0.8);
        deps.notifyListeners();
      }

      await deps.setCurrentEpgMapSignature(
        prefs: prefs,
        playlistUrl: url,
        epgUrl: epgUrl,
        channelCount: parsed['channelCount'] as int? ?? loadingTarget.length,
        channelsFile: channelsFile,
      );
      await deps.applyXtreamEpgMapFromCache();
      unawaited(deps.primeXtreamLiveMetadata(url));

      if (loadingTarget.length < 15000) {
        try {
          final playlistJson = json.encode(loadingTarget);
          await prefs.setString('flutter.cached_playlist', playlistJson);
        } catch (e) {
          debugLog(
            'ChannelProvider: SharedPreferences playlist cache write failed: $e',
          );
        }
      } else {
        debugLog(
          'ChannelProvider: Playlist too large for SharedPreferences cache (Android Auto), skipping string encode.',
        );
      }

      deps.clearCachedCategories();
      unawaited(deps.computeCategoriesAsync());

      debugLog(
        'ChannelProvider: Parsed ${loadingTarget.length} channels (isolate)',
      );

      unawaited(deps.rebuildChannelCachesAsync());

      if (!isBackground) {
        deps.setLoadingStatus('Finalizing...');
        deps.setLoadingProgress(0.95);
        deps.notifyListeners();
      } else {
        deps.finalizeBackgroundLoad(loadingTarget);
      }

      final dir = await getApplicationDocumentsDirectory();
      if (loadingTarget.isNotEmpty) {
        try {
          final jsonString = json.encode(loadingTarget);
          await persistPlaylistCacheJson(
            dir: dir,
            jsonString: jsonString,
            prefs: prefs,
          );
        } catch (e) {
          debugLog('ChannelProvider: Failed to write cacheFile to disk: $e');
        }
      }

      if (!isBackground) {
        deps.setLoadingProgress(1.0);
        deps.setIsLoading(false);
        deps.setHasLoadedPlaylist(true);
        deps.setIsColdStartLoad(false);
      } else {
        deps.setIsBackgroundSyncing(false);
      }

      deps.notifyListeners();

      unawaited(deps.deferredDbInsert());
      deps.updateEpgAllowedChannels();
      deps.refreshSmartChannelCache();

      PerformanceMonitor.end('PLAYLIST_LOAD_TOTAL');
      PerformanceMonitor.trackMemoryUsage('After playlist load');
      debugLog(
        'ChannelProvider: Loaded ${loadingTarget.length} channels',
      );

      deps.scheduleEpgRefresh(forceRefresh: false);
      unawaited(deps.buildEpgMapping());
      unawaited(deps.upsertSavedPlaylist(sourceUrl: url, epgUrl: epgUrl));
      unawaited(deps.persistPlaylistCounts(
        prefs: prefs,
        playlistUrl: url,
        channelCount: loadingTarget.length,
      ));
    } catch (e, stackTrace) {
      debugLog('ChannelProvider: Error loading playlist: $e');
      debugLog('ChannelProvider: Stack trace: $stackTrace');

      deps.setLoadingProgress(0.0);
      deps.setLoadingStatus('');

      final errorInfo = classifyPlaylistLoadError(e);
      if (errorInfo.message.isNotEmpty) {
        deps.setErrorMessage(errorInfo.message);
      }

      if (!isBackground && deps.channelMaps.isEmpty) {
        final prefs = await SharedPreferences.getInstance();
        final lastUrl = deps.getLastPlaylistUrl();
        final restored = await deps.restoreChannelsFromPrefsCache(
          prefs: prefs,
          playlistUrl: (lastUrl?.isNotEmpty ?? false) ? lastUrl : url,
          epgUrl:
              prefs.getString('custom_epg_url') ?? prefs.getString('epg_url'),
          reason: 'network error recovery',
        );
        if (restored) {
          deps.setErrorMessage(
            'Network error while refreshing playlist. Showing cached channels.',
          );
          deps.notifyListeners();
          return;
        }
      }

      if (!isBackground) {
        deps.setIsLoading(false);
        deps.setIsColdStartLoad(false);
      } else {
        deps.setIsBackgroundSyncing(false);
      }
      deps.notifyListeners();
      if (errorInfo.shouldRethrow) {
        rethrow;
      }
    } finally {
      await deps.setWakeLock(false);
    }
  }

  /// Background sync: updates channel list without blocking UI.
  Future<void> backgroundSync({
    required SharedPreferences prefs,
    required String? url,
  }) async {
    if (url == null || url.isEmpty) return;
    debugLog('ChannelProvider: Starting background sync for $url');
    await reloadPlaylistBackground(url);
  }

  Future<void> reloadPlaylistBackground(String url) async {
    debugLog('ChannelProvider: _reloadPlaylistBackground started');
    try {
      await loadPlaylistFromUrlImpl(url, isBackground: true);
    } catch (e) {
      debugLog('ChannelProvider: Background sync failed: $e');
    }
  }

  /// Load channels from M3U content string without blocking the UI isolate.
  Future<void> loadPlaylistFromString(String content) =>
      _alt.loadFromString(content);
}
