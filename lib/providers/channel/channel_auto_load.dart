import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:iptv_player/models/saved_playlist.dart';
import 'package:iptv_player/providers/playlist_isolate.dart';
import 'package:iptv_player/services/local_db_service.dart';
import 'package:iptv_player/services/smart_cache_service.dart';
import 'package:iptv_player/services/xtream_credential_store.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/utils/startup_probe.dart';
import 'package:iptv_player/utils/url_redactor.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'channel_auto_load_deps.dart';
import 'channel_playlist_cache.dart';

part 'channel_auto_load_phases.dart';

/// Cache and playlist metadata gathered before load phases run.
class ChannelAutoLoadContext {
  const ChannelAutoLoadContext({
    required this.playlistType,
    required this.cacheFilePath,
    required this.cacheAge,
    required this.cachedPlaylistUrl,
    required this.cachedEpgUrl,
    required this.expectedChannels,
  });

  final String playlistType;
  final String? cacheFilePath;
  final int? cacheAge;
  final String? cachedPlaylistUrl;
  final String? cachedEpgUrl;
  final int? expectedChannels;
}

/// Startup auto-load: DB cache, file cache, prefs fallback, then network.
class ChannelAutoLoad {
  ChannelAutoLoad(this.deps);

  final ChannelAutoLoadDeps deps;

  Future<void> autoLoadPlaylist() async {
    logToSystem('=== autoLoadPlaylist START ===', name: 'ChannelProvider');
    if (deps.getHasLoadedPlaylist() && deps.channelMaps.isNotEmpty) {
      debugLog(
          'ChannelProvider: Playlist already loaded (${deps.channelMaps.length} channels), skipping');
      return;
    }
    if (deps.getAutoLoadInProgress() || deps.getIsLoading()) {
      debugLog('ChannelProvider: Auto-load already in progress, skipping');
      return;
    }
    deps.setIsColdStartLoad(deps.channelMaps.isEmpty);
    deps.setAutoLoadInProgress(true);
    var wakeLockEnabled = false;

    deps.setIsLoading(true);
    deps.setNoPlaylistConfigured(false);
    deps.setLoadingStatus('Checking local cache...');
    deps.setLoadingProgress(0.05);
    deps.notifyListenersThrottled();

    StartupProbe.mark('ChannelProvider.autoLoadPlaylist invoked');
    try {
      wakeLockEnabled = await deps.setWakeLock(true);
      await deps.loadWatchCounts();
      debugLog('ChannelProvider: Auto-loading playlist...');
      await _initializeAutoLoadDatabase();
      final prefs = await SharedPreferences.getInstance();
      await _migrateFlutterPrefFile(prefs);
      await _migrateFlutterPrefKeys(prefs);
      final playlistType = await _resolvePlaylistType(prefs);
      debugLog(
          'ChannelProvider: PREFS snapshot: playlist_type=${prefs.getString('playlist_type')}, m3u_url=${prefs.getString('m3u_url')}, active_playlist=${prefs.getString('active_playlist_id')}');
      if (playlistType == null) {
        await _handleNoPlaylistConfigured(prefs);
        return;
      }

      await _ensureFreshPlaylistCache(prefs);
      final ctx = _buildAutoLoadContext(prefs, playlistType);

      if (await tryLoadFromDatabase(prefs, ctx)) {
        return;
      }
      if (await tryLoadFromFileCache(prefs, ctx)) {
        return;
      }

      final restoredFromPrefs = await deps.restoreChannelsFromPrefsCache(
        prefs: prefs,
        playlistUrl: ctx.cachedPlaylistUrl,
        epgUrl: ctx.cachedEpgUrl,
        reason: 'startup fallback',
      );
      if (restoredFromPrefs) {
        unawaited(
            deps.backgroundSync(prefs: prefs, url: ctx.cachedPlaylistUrl));
        return;
      }

      await _loadPlaylistFromNetwork(prefs, playlistType);
    } catch (e) {
      debugLog('ChannelProvider: Auto-load playlist failed: $e');
      StartupProbe.mark('ChannelProvider.autoLoadPlaylist: failed ($e)');
      deps.setIsLoading(false);
      deps.notifyListeners();
    } finally {
      if (wakeLockEnabled) {
        await deps.setWakeLock(false);
      }
      deps.setAutoLoadInProgress(false);
      if (deps.getIsLoading() && !deps.getHasLoadedPlaylist()) {
        deps.setIsLoading(false);
        deps.notifyListeners();
      }
    }
  }

  Future<void> _migrateFlutterPrefKeys(SharedPreferences prefs) async {
    try {
      // Migrate keys stored with 'flutter.' prefix into legacy unprefixed keys
      final mappings = <String, String>{
        'flutter.playlist_type': 'playlist_type',
        'flutter.m3u_url': 'm3u_url',
        'flutter.active_playlist_id': 'active_playlist_id',
        'flutter.cached_playlist': 'cached_playlist',
        'flutter.cached_playlist_file': 'cached_playlist_file',
        'flutter.cache_timestamp': 'cache_timestamp',
      };
      for (final entry in mappings.entries) {
        final from = entry.key;
        final to = entry.value;
        final val = prefs.getString(from);
        if (val != null && prefs.getString(to) == null) {
          await prefs.setString(to, val);
          debugLog('ChannelProvider: Migrated pref $from -> $to');
        }
      }
    } catch (e) {
      debugLog('ChannelProvider: Pref migration failed: $e');
    }
  }

  Future<void> _migrateFlutterPrefFile(SharedPreferences prefs) async {
    try {
      final already = prefs.getBool('migrated_from_flutter_prefs') ?? false;
      if (already) return;

      final home = Platform.environment['HOME'] ?? '';
      if (home.isEmpty) return;
      final path = '$home/.local/share/com.risa.app/shared_preferences.json';
      final file = File(path);
      if (!await file.exists()) return;
      final content = await file.readAsString();
      final Map<String, dynamic> disk =
          jsonDecode(content) as Map<String, dynamic>;

      final mappings = <String, String>{
        'flutter.playlist_type': 'playlist_type',
        'flutter.m3u_url': 'm3u_url',
        'flutter.active_playlist_id': 'active_playlist_id',
        'flutter.cached_playlist': 'cached_playlist',
        'flutter.cached_playlist_file': 'cached_playlist_file',
        'flutter.cache_timestamp': 'cache_timestamp',
        'flutter.epg_url': 'epg_url',
        'flutter.custom_epg_url': 'custom_epg_url',
      };

      var migratedAny = false;
      for (final e in mappings.entries) {
        if (disk.containsKey(e.key)) {
          final val = disk[e.key];
          if (val is String) {
            if (prefs.getString(e.value) == null) {
              await prefs.setString(e.value, val);
              debugLog('ChannelProvider: FILE MIGRATE ${e.key} -> ${e.value}');
              migratedAny = true;
            }
          } else if (val is int) {
            if (prefs.getInt(e.value) == null) {
              await prefs.setInt(e.value, val);
              debugLog(
                  'ChannelProvider: FILE MIGRATE ${e.key} -> ${e.value} (int)');
              migratedAny = true;
            }
          }
        }
      }

      if (migratedAny) {
        await prefs.setBool('migrated_from_flutter_prefs', true);
        debugLog('ChannelProvider: Pref file migration complete, guard set');
      }
    } catch (e) {
      debugLog('ChannelProvider: Pref file migration failed: $e');
    }
  }

  Future<void> _initializeAutoLoadDatabase() async {
    try {
      deps.setLoadingStatus('Opening local database...');
      deps.setLoadingProgress(0.1);
      deps.notifyListenersThrottled();
      await deps.ensureDb().timeout(const Duration(seconds: 15));
    } catch (e) {
      debugLog('ChannelProvider: DB init timeout or failure: $e');
      deps.setDbReady(false);
    }
  }

  Future<String?> _resolvePlaylistType(SharedPreferences prefs) async {
    String? playlistType = prefs.getString('playlist_type');
    if (playlistType != null) {
      return playlistType;
    }

    final savedJson = prefs.getString('saved_playlists');
    if (savedJson == null || savedJson.trim().isEmpty) {
      return null;
    }

    try {
      final List<dynamic> decoded =
          await compute(jsonDecode, savedJson) as List<dynamic>;
      final saved = decoded
          .map((j) => SavedPlaylist.fromJson(Map<String, dynamic>.from(j)))
          .toList();
      if (saved.isEmpty) {
        return null;
      }

      final activeId = prefs.getString('active_playlist_id');
      final chosen =
          saved.firstWhere((p) => p.id == activeId, orElse: () => saved.first);
      playlistType = chosen.type;
      await prefs.setString('playlist_type', chosen.type);
      await prefs.setString('active_playlist_id', chosen.id);
      if (chosen.type == 'm3u') {
        await prefs.setString('m3u_url', chosen.url);
      } else {
        await prefs.setString('xtream_server', chosen.server ?? '');
        await prefs.setString('xtream_username', chosen.username ?? '');
        await XtreamCredentialStore.writeGlobalPassword(chosen.password ?? '');
      }
      if (chosen.epgUrl != null && chosen.epgUrl!.isNotEmpty) {
        await prefs.setString('epg_url', chosen.epgUrl!);
        await prefs.setString('custom_epg_url', chosen.epgUrl!);
      } else {
        await prefs.remove('custom_epg_url');
      }
      if (chosen.epgUrlSecondary != null &&
          chosen.epgUrlSecondary!.isNotEmpty) {
        await prefs.setString('secondary_epg_url', chosen.epgUrlSecondary!);
      } else {
        await prefs.remove('secondary_epg_url');
      }
      final playlistKey =
          chosen.type == 'xtream' ? (chosen.server ?? '') : chosen.url;
      unawaited(
        deps.ensureStablePlaylistIdentity(
          prefs,
          playlistUrl: playlistKey,
        ),
      );
      return playlistType;
    } catch (e) {
      debugLog('ChannelProvider: malformed saved playlist: $e');
      return null;
    }
  }

  Future<void> _handleNoPlaylistConfigured(SharedPreferences prefs) async {
    deps.setIsLoading(false);
    deps.setNoPlaylistConfigured(true);
    deps.notifyListeners();
    StartupProbe.mark('ChannelProvider.autoLoadPlaylist: no saved playlist');
    debugLog('ChannelProvider: No saved playlist found');
    if (deps.channelMaps.isNotEmpty) {
      deps.channelMaps.clear();
      deps.clearChannelCache();
      await deps.rebuildChannelCachesAsync();
      deps.clearCachedCategories();
      deps.notifyListeners();
    }
    await prefs.remove('cached_playlist');
    await prefs.remove('cache_timestamp');
  }

  Future<void> _ensureFreshPlaylistCache(SharedPreferences prefs) async {
    final cacheVersion = playlistCacheVersion(prefs);
    if (isPlaylistCacheVersionStale(prefs)) {
      debugLog(
          'ChannelProvider: Cache version changed ($cacheVersion -> ${ChannelPlaylistCache.version}), clearing caches');
      await clearPlaylistCache();
    }
  }

  ChannelAutoLoadContext _buildAutoLoadContext(
    SharedPreferences prefs,
    String playlistType,
  ) {
    final cacheTimestamp = prefs.getInt(ChannelPlaylistCache.timestampPrefsKey);
    final cacheFilePath = playlistCacheFilePath(prefs);
    final cacheAge = cacheTimestamp != null
        ? DateTime.now().millisecondsSinceEpoch - cacheTimestamp
        : null;
    final String? playlistUrlForCounts;
    if (playlistType == 'm3u') {
      playlistUrlForCounts = prefs.getString('m3u_url');
    } else if (playlistType == 'xtream') {
      playlistUrlForCounts = prefs.getString('xtream_server');
    } else {
      playlistUrlForCounts = null;
    }
    final storedCounts = deps.loadPlaylistCounts(
      prefs: prefs,
      playlistUrl: playlistUrlForCounts,
    );
    final expectedChannels = storedCounts?['channels'];
    final cachedPlaylistUrl = playlistType == 'm3u'
        ? prefs.getString('m3u_url')
        : prefs.getString('xtream_server');
    final cachedEpgUrl =
        prefs.getString('custom_epg_url') ?? prefs.getString('epg_url');

    return ChannelAutoLoadContext(
      playlistType: playlistType,
      cacheFilePath: cacheFilePath,
      cacheAge: cacheAge,
      cachedPlaylistUrl: cachedPlaylistUrl,
      cachedEpgUrl: cachedEpgUrl,
      expectedChannels: expectedChannels,
    );
  }

  Future<void> _loadPlaylistFromNetwork(
    SharedPreferences prefs,
    String playlistType,
  ) async {
    debugLog('ChannelProvider: Playlist type: $playlistType');
    deps.setNoPlaylistConfigured(false);

    try {
      String? playlistUrl;
      if (playlistType == 'm3u') {
        playlistUrl = prefs.getString('m3u_url');
        debugLog('ChannelProvider: M3U URL: ${redactUrl(playlistUrl ?? '')}');
      } else if (playlistType == 'xtream') {
        final server = prefs.getString('xtream_server');
        final username = prefs.getString('xtream_username');
        final password = await XtreamCredentialStore.readGlobalPassword();
        debugLog('ChannelProvider: Xtream account configured');
        if (server != null && username != null && password.isNotEmpty) {
          try {
            final cleaned = server.trim();
            Uri baseUri = Uri.parse(cleaned);
            if (baseUri.scheme.isEmpty || baseUri.host.isEmpty) {
              baseUri = Uri.parse(
                  'https://${cleaned.replaceAll(deps.httpPrefixRe, '')}');
            }
            final nativeLoaded = await deps.loadXtreamLiveStreamsNative(
              serverUrl: baseUri.toString(),
              username: username.replaceAll(' ', ''),
              password: password.replaceAll(' ', ''),
            );
            if (nativeLoaded) {
              deps.setIsLoading(false);
              deps.setHasLoadedPlaylist(true);
              deps.setIsColdStartLoad(false);
              deps.notifyListeners();
              StartupProbe.mark(
                  'ChannelProvider.autoLoadPlaylist: native Xtream load finished');
              return;
            }

            final playlistUri = baseUri.replace(
              path: (baseUri.path.trim().isEmpty)
                  ? 'get.php'
                  : '${baseUri.path.replaceAll(deps.leadingSlashRe, '')}/get.php',
              queryParameters: {
                'username': username.replaceAll(' ', ''),
                'password': password.replaceAll(' ', ''),
                'type': 'm3u_plus',
              },
            );
            playlistUrl = playlistUri.toString();

            final epgUri = baseUri.replace(
              path: (baseUri.path.trim().isEmpty)
                  ? 'xmltv.php'
                  : '${baseUri.path.replaceAll(deps.leadingSlashRe, '')}/xmltv.php',
              queryParameters: {
                'username': username.replaceAll(' ', ''),
                'password': password.replaceAll(' ', ''),
              },
            );

            final xtreamPrefs = await SharedPreferences.getInstance();
            final oldUrl = xtreamPrefs.getString('epg_url');
            final custom = xtreamPrefs.getString('custom_epg_url');
            final shouldSave = (oldUrl == null || oldUrl.isEmpty) ||
                (custom != null && oldUrl == custom);
            if (shouldSave) {
              await xtreamPrefs.setString('epg_url', epgUri.toString());
              debugLog('ChannelProvider: Saved computed epg_url for Xtream');
            }
          } catch (e) {
            debugLog(
                'ChannelProvider: Failed to compute/save epg_url for Xtream: $e');
          }
        }
      }

      if (playlistUrl == null || playlistUrl.isEmpty) {
        debugLog('ChannelProvider: Playlist URL is empty');
        StartupProbe.mark(
            'ChannelProvider.autoLoadPlaylist: playlist url empty');
        return;
      }

      if (!deps.getIsColdStartLoad() && deps.channelMaps.isEmpty) {
        deps.setIsColdStartLoad(true);
        deps.notifyListeners();
      }
      debugLog(
          'ChannelProvider: Loading playlist URL: ${redactUrl(playlistUrl)}');
      StartupProbe.mark(
          'ChannelProvider.autoLoadPlaylist: downloading playlist');
      await deps.loadPlaylistFromUrl(playlistUrl);
      if (deps.channelMaps.isNotEmpty) {
        deps.setHasLoadedPlaylist(true);
        debugLog(
            'ChannelProvider: Auto-load completed successfully (${deps.channelMaps.length} channels)');
        StartupProbe.mark(
            'ChannelProvider.autoLoadPlaylist: network load finished');
      } else {
        deps.setHasLoadedPlaylist(false);
        debugLog(
            'ChannelProvider: Auto-load finished without channels (error: ${deps.getErrorMessage()})');
        StartupProbe.mark(
            'ChannelProvider.autoLoadPlaylist: no channels loaded');
      }
    } catch (e) {
      debugLog('ChannelProvider: Auto-load playlist failed: $e');
      StartupProbe.mark('ChannelProvider.autoLoadPlaylist: failed ($e)');
    }
  }
}
