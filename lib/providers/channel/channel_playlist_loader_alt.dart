import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:iptv_player/providers/playlist_isolate.dart';
import 'package:iptv_player/services/ssl_handler.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/utils/url_redactor.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'channel_playlist_cache.dart';
import 'channel_playlist_loader_deps.dart';

/// Direct HttpClient and in-memory string playlist sources.
class ChannelPlaylistLoaderAlt {
  ChannelPlaylistLoaderAlt(this.deps);

  final ChannelPlaylistLoaderDeps deps;

  /// Load playlist using direct HttpClient with SSL bypass (handshake fallback).
  Future<void> loadWithDirectClient(String url) async {
    deps.setIsLoading(true);
    deps.setIsColdStartLoad(deps.channelMaps.isEmpty);
    deps.setErrorMessage(null);
    deps.setNoPlaylistConfigured(false);
    deps.notifyListeners();

    final httpClient =
        HttpClient(context: SecurityContext(withTrustedRoots: true))
          ..badCertificateCallback =
              (X509Certificate cert, String host, int port) {
            return SSLHandler.shouldAcceptCertificate(cert, host, port);
          }
          ..connectionTimeout = const Duration(seconds: 90)
          ..idleTimeout = const Duration(seconds: 90);

    try {
      httpClient.findProxy = (uri) => 'DIRECT';
    } catch (e) {
      debugLog('ChannelProvider: Could not set proxy: $e');
    }

    try {
      await deps.setWakeLock(true);
      debugLog(
        'ChannelProvider: Using direct HttpClient with improved TLS handling',
      );

      final request = await httpClient.getUrl(Uri.parse(url));
      request.headers.add(
        'User-Agent',
        'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36',
      );
      request.headers.add('Accept', '*/*');

      final response = await request.close().timeout(
        const Duration(seconds: 90),
        onTimeout: () {
          throw Exception(
            'Connection timeout - server took too long to respond (90s limit)',
          );
        },
      );

      if (response.statusCode != 200) {
        throw Exception('HTTP ${response.statusCode}: Failed to load playlist');
      }

      final dir = await getApplicationDocumentsDirectory();
      final tempFile = File('${dir.path}/temp_playlist.m3u');
      final sink = tempFile.openWrite();
      int totalBytes = 0;

      try {
        await for (final chunk in response) {
          totalBytes += chunk.length;
          sink.add(chunk);
        }
        await sink.flush();
      } finally {
        await sink.close();
      }

      debugLog(
        'ChannelProvider: Downloaded $totalBytes bytes to temp file (direct client)',
      );

      final List<Map<String, dynamic>> allChannels = [];
      final parsed = await parsePlaylistCancelable(
        filePath: tempFile.path,
        onChannelsChunk: (chunk) => allChannels.addAll(chunk),
      );

      deps.channelMaps
        ..clear()
        ..addAll(allChannels);
      deps.clearChannelCache();
      await deps.rebuildChannelCachesAsync();
      deps.setChannelCountDb(deps.channelMaps.length);
      deps.updateEpgAllowedChannels();
      unawaited(deps.primeXtreamLiveMetadata(url));

      if (deps.getDbReady()) {
        try {
          deps.setLoadingStatus('Saving to database... don\'t close the app.');
          deps.setLoadingProgress(0.7);
          deps.notifyListeners();
          await deps.clearDbChannels();
          await deps.insertDbChannels(deps.channelMaps);
          debugLog(
            'ChannelProvider: Persisted ${deps.channelMaps.length} channels to DB (direct client)',
          );
        } catch (e) {
          debugLog('ChannelProvider: Failed to persist channels to DB: $e');
        }
      }

      deps.clearCachedCategories();
      unawaited(deps.computeCategoriesAsync());

      debugLog(
        'ChannelProvider: Parsed ${deps.channelMaps.length} channels (direct client)',
      );
      await deps.applyXtreamEpgMapFromCache();
      deps.updateEpgAllowedChannels();

      final prefs = await SharedPreferences.getInstance();
      await persistPlaylistCacheFromTempFile(
        tempFile: tempFile,
        dir: dir,
        prefs: prefs,
        totalBytes: totalBytes,
      );

      final epgUrl = parsed['epgUrl'] as String?;
      if (epgUrl != null && epgUrl.isNotEmpty) {
        debugLog(
          'ChannelProvider: Found EPG URL: ${redactUrl(epgUrl)} (auto-saving)',
        );
        await prefs.setString('custom_epg_url', epgUrl);
        try {
          final enc = base64Url.encode(utf8.encode(url));
          await prefs.setString('m3u_epg_url_$enc', epgUrl);
          await prefs.remove('m3u_epg_url_$url');
        } catch (e) {
          debugLog('ChannelProvider: per-playlist EPG URL save failed: $e');
        }
        try {
          await deps.getEpgService()?.initialize(forceRefresh: true);
          debugLog(
            'ChannelProvider: EPG initialized (auto-save). Available channels: ${deps.getEpgService()?.availableChannels.length}, Error: ${deps.getEpgService()?.error}',
          );
        } catch (e) {
          debugLog(
            'ChannelProvider: EPG initialization failed after auto-save: $e',
          );
        }
      }

      deps.setIsLoading(false);
      deps.setHasLoadedPlaylist(true);
      deps.setIsColdStartLoad(false);
      deps.notifyListeners();
      deps.refreshSmartChannelCache();

      deps.scheduleEpgRefresh(forceRefresh: false);
      unawaited(deps.persistPlaylistCounts(
        prefs: prefs,
        playlistUrl: url,
        channelCount: deps.channelMaps.length,
      ));
    } catch (e, stackTrace) {
      debugLog('ChannelProvider: Error with direct client: $e');
      debugLog('ChannelProvider: Stack trace: $stackTrace');
      deps.setErrorMessage(e.toString());
      deps.setIsLoading(false);
      deps.setIsColdStartLoad(false);
      deps.notifyListeners();
      deps.refreshSmartChannelCache();
      rethrow;
    } finally {
      await deps.setWakeLock(false);
      httpClient.close();
    }
  }

  /// Load channels from M3U content string without blocking the UI isolate.
  Future<void> loadFromString(String content) async {
    deps.setIsLoading(true);
    deps.setIsColdStartLoad(deps.channelMaps.isEmpty);
    deps.setErrorMessage(null);
    deps.setNoPlaylistConfigured(false);
    deps.notifyListeners();

    try {
      final bytes = utf8.encode(content);
      final parsed = await compute(parsePlaylistInIsolate, bytes);

      deps.channelMaps
        ..clear()
        ..addAll(
          (parsed['channels'] as List<dynamic>? ?? [])
              .map((channel) => Map<String, dynamic>.from(channel as Map)),
        );
      deps.clearChannelCache();
      await deps.rebuildChannelCachesAsync();
      deps.setChannelCountDb(deps.channelMaps.length);
      await deps.applyXtreamEpgMapFromCache();
      deps.updateEpgAllowedChannels();

      deps.clearCachedCategories();

      final epgUrl = parsed['epgUrl'] as String?;
      if (epgUrl != null && epgUrl.isNotEmpty) {
        debugLog(
          'ChannelProvider: Found EPG URL in M3U: $epgUrl (auto-saving)',
        );
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('custom_epg_url', epgUrl);
        try {
          await deps.getEpgService()?.initialize(forceRefresh: true);
          debugLog(
            'ChannelProvider: EPG initialized (M3U). Available channels: ${deps.getEpgService()?.availableChannels.length}, Error: ${deps.getEpgService()?.error}',
          );
        } catch (e) {
          debugLog(
            'ChannelProvider: EPG initialization failed after M3U save: $e',
          );
        }
      }

      deps.setIsLoading(false);
      deps.setIsColdStartLoad(false);
      deps.notifyListeners();

      deps.scheduleEpgRefresh(forceRefresh: false);
    } catch (e, stackTrace) {
      debugLog('ChannelProvider: Error parsing playlist string: $e');
      debugLog('ChannelProvider: Stack trace: $stackTrace');
      deps.setErrorMessage(e.toString());
      deps.setIsLoading(false);
      deps.notifyListeners();
    }
  }
}
