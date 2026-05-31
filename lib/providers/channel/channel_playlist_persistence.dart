import 'dart:convert';
import 'dart:io';

import 'package:iptv_player/models/saved_playlist.dart';
import 'package:iptv_player/services/local_db_service.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/services/xtream_credential_store.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/utils/hash_utils.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'channel_playlist_persistence_deps.dart';

/// Playlist identity, counts, saved-playlist prefs, and deferred DB writes.
class ChannelPlaylistPersistence {
  ChannelPlaylistPersistence(this.deps);

  final ChannelPlaylistPersistenceDeps deps;

  String playlistCountsKey(SharedPreferences prefs, String? playlistUrl) {
    final keySource = prefs.getString('active_playlist_id')?.trim();
    final keyBase = (keySource != null && keySource.isNotEmpty)
        ? keySource
        : (playlistUrl?.trim().isNotEmpty == true
            ? playlistUrl!.trim()
            : 'default');
    return 'playlist_counts_${Uri.encodeComponent(keyBase)}';
  }

  Future<String?> ensureStablePlaylistIdentity(
    SharedPreferences prefs, {
    String? playlistUrl,
  }) async {
    final type = prefs.getString('playlist_type') ?? 'm3u';
    final normalizedType = type.trim().toLowerCase();
    String? server;
    String? username;
    String? url = playlistUrl;
    if (normalizedType == 'xtream') {
      server = prefs.getString('xtream_server');
      username = prefs.getString('xtream_username');
      url ??= server;
    } else {
      url ??= prefs.getString('m3u_url');
    }

    final stableId = stablePlaylistId(
      type: normalizedType,
      url: url,
      server: server,
      username: username,
    );

    final activeId = prefs.getString('active_playlist_id');
    if (activeId != stableId) {
      await prefs.setString('active_playlist_id', stableId);
    }

    await migrateSavedPlaylistIds(
      prefs,
      normalizedType: normalizedType,
      url: url,
      server: server,
      username: username,
      stableId: stableId,
    );

    deps.getEpgService()?.setPlaylistIdentity(stableId);
    return stableId;
  }

  Future<void> migrateSavedPlaylistIds(
    SharedPreferences prefs, {
    required String normalizedType,
    required String? url,
    required String? server,
    required String? username,
    required String stableId,
  }) async {
    final playlistsJson = prefs.getString('saved_playlists');
    if (playlistsJson == null || playlistsJson.trim().isEmpty) return;
    final List<dynamic> decoded = jsonDecode(playlistsJson);
    final saved = decoded
        .map((j) => SavedPlaylist.fromJson(Map<String, dynamic>.from(j)))
        .toList();

    var updated = false;
    final next = <SavedPlaylist>[];
    for (final playlist in saved) {
      final type = playlist.type.trim().toLowerCase();
      final matches = type == normalizedType &&
          (type == 'xtream'
              ? (playlist.server ?? '').trim().toLowerCase() ==
                      (server ?? '').trim().toLowerCase() &&
                  (playlist.username ?? '').trim().toLowerCase() ==
                      (username ?? '').trim().toLowerCase()
              : playlist.url.trim().toLowerCase() ==
                  (url ?? '').trim().toLowerCase());
      if (matches && playlist.id != stableId) {
        next.add(SavedPlaylist(
          id: stableId,
          name: playlist.name,
          type: playlist.type,
          url: playlist.url,
          server: playlist.server,
          username: playlist.username,
          password: playlist.password,
          epgUrl: playlist.epgUrl,
          epgUrlSecondary: playlist.epgUrlSecondary,
          addedDate: playlist.addedDate,
        ));
        updated = true;
      } else {
        next.add(playlist);
      }
    }

    if (updated) {
      await prefs.setString(
        'saved_playlists',
        jsonEncode(next.map((p) => p.toJson()).toList()),
      );
    }
  }

  Future<void> persistPlaylistCounts({
    required SharedPreferences prefs,
    required String? playlistUrl,
    required int channelCount,
  }) async {
    try {
      final key = playlistCountsKey(prefs, playlistUrl);
      final payload = json.encode({
        'channels': channelCount,
        'timestamp': DateTime.now().millisecondsSinceEpoch,
      });
      await prefs.setString(key, payload);
    } catch (e) {
      debugLog('ChannelProvider: Failed to persist playlist counts: $e');
    }
  }

  Map<String, int>? loadPlaylistCounts({
    required SharedPreferences prefs,
    required String? playlistUrl,
  }) {
    try {
      final key = playlistCountsKey(prefs, playlistUrl);
      final stored = prefs.getString(key);
      if (stored == null || stored.trim().isEmpty) return null;
      final decoded = json.decode(stored) as Map<String, dynamic>;
      final channels = _asInt(decoded['channels']) ?? 0;
      return {
        'channels': channels,
      };
    } catch (e) {
      debugLog('ChannelProvider: Failed to read playlist counts: $e');
      return null;
    }
  }

  Future<void> deferredDbInsert() async {
    if (!deps.getDbReady()) {
      debugLog(
          'ChannelProvider: _deferredDbInsert found DB not ready, retrying init...');
      await deps.ensureDb();
    }

    if (!deps.getDbReady() || deps.channelMaps.isEmpty) {
      debugLog(
          'ChannelProvider: _deferredDbInsert skipped. Ready: ${deps.getDbReady()}, Channels: ${deps.channelMaps.length}');
      return;
    }

    final start = DateTime.now();
    debugLog(
        'ChannelProvider: Starting deferred DB insert for ${deps.channelMaps.length} channels');
    final epgService = deps.getEpgService();
    final db = deps.getDb();
    epgService?.setExternalDbBusy(true);
    db.beginBulkWrite();

    try {
      await db.clearChannels();
      await db.insertChannels(deps.channelMaps);

      final duration = DateTime.now().difference(start);
      debugLog(
          'ChannelProvider: Deferred DB insert completed in ${duration.inMilliseconds}ms');
      try {
        final count = await db.channelCount();
        debugLog('ChannelProvider: DB channel count after insert: $count');
      } catch (e) {
        debugLog('ChannelProvider: DB channel count query failed: $e');
      }
    } catch (e) {
      debugLog('ChannelProvider: Deferred DB insert failed: $e');
      deps.handleDbError(e);
    } finally {
      db.endBulkWrite();
      epgService?.setExternalDbBusy(false);
    }
  }

  Future<String?> stageChannelsJsonl(String source) async {
    final dir = await getApplicationDocumentsDirectory();
    final target = File('${dir.path}/channels_cache.jsonl');
    final sourceFile = File(source);
    if (!await sourceFile.exists()) return null;
    try {
      if (await target.exists()) {
        await target.delete();
      }
      await sourceFile.rename(target.path);
    } catch (e) {
      debugLog('ChannelProvider: cache file rename failed: $e');
      await sourceFile.copy(target.path);
      try {
        await sourceFile.delete();
      } catch (e) {
        debugLog('ChannelProvider: cleanup source file failed: $e');
      }
    }
    return target.path;
  }

  Future<void> upsertSavedPlaylist({
    required String sourceUrl,
    String? epgUrl,
  }) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final type = prefs.getString('playlist_type') ?? 'm3u';
      final existingJson = prefs.getString('saved_playlists');
      List<SavedPlaylist> list = [];
      if (existingJson != null && existingJson.trim().isNotEmpty) {
        try {
          final decoded = jsonDecode(existingJson) as List<dynamic>;
          list = decoded
              .map((j) => SavedPlaylist.fromJson(Map<String, dynamic>.from(j)))
              .toList();
        } catch (e) {
          debugLog('ChannelProvider: decode saved playlists failed: $e');
        }
      }

      String? name;
      String? server;
      String? username;
      String? password;
      String url = sourceUrl;

      if (type == 'xtream') {
        server = prefs.getString('xtream_server') ?? '';
        username = prefs.getString('xtream_username') ?? '';
        password = await XtreamCredentialStore.readGlobalPassword();
        name = server.isNotEmpty
            ? (Uri.tryParse(server)?.host ?? server)
            : 'Xtream';
      } else {
        name = Uri.tryParse(sourceUrl)?.host ?? 'M3U Playlist';
      }

      final primaryEpg = epgUrl ??
          prefs.getString('custom_epg_url') ??
          prefs.getString('epg_url');
      final secondaryEpg = prefs.getString('secondary_epg_url');

      int existingIndex = -1;
      if (type == 'm3u') {
        existingIndex = list
            .indexWhere((p) => p.type == 'm3u' && p.url.trim() == url.trim());
      } else {
        existingIndex = list.indexWhere((p) =>
            p.type == 'xtream' &&
            (p.server ?? '').trim() == (server ?? '').trim() &&
            (p.username ?? '').trim() == (username ?? '').trim());
      }

      final now = DateTime.now();
      final stableId = stablePlaylistId(
        type: type,
        url: url,
        server: server,
        username: username,
      );
      final existingId = existingIndex >= 0 ? list[existingIndex].id : null;
      final id =
          (existingId != null && existingId.isNotEmpty) ? existingId : stableId;

      final normalized = SavedPlaylist(
        id: id,
        name: name,
        type: type,
        url: url,
        server: server,
        username: username,
        password: password,
        epgUrl: primaryEpg,
        epgUrlSecondary: secondaryEpg,
        addedDate: existingIndex >= 0 ? list[existingIndex].addedDate : now,
      );

      if (existingIndex >= 0) {
        list[existingIndex] = normalized.id == stableId
            ? normalized
            : SavedPlaylist(
                id: stableId,
                name: normalized.name,
                type: normalized.type,
                url: normalized.url,
                server: normalized.server,
                username: normalized.username,
                password: normalized.password,
                epgUrl: normalized.epgUrl,
                epgUrlSecondary: normalized.epgUrlSecondary,
                addedDate: normalized.addedDate,
              );
      } else {
        list.add(normalized.id == stableId
            ? normalized
            : SavedPlaylist(
                id: stableId,
                name: normalized.name,
                type: normalized.type,
                url: normalized.url,
                server: normalized.server,
                username: normalized.username,
                password: normalized.password,
                epgUrl: normalized.epgUrl,
                epgUrlSecondary: normalized.epgUrlSecondary,
                addedDate: normalized.addedDate,
              ));
      }

      await prefs.setString(
          'saved_playlists', jsonEncode(list.map((p) => p.toJson()).toList()));
      await prefs.setString('active_playlist_id', stableId);
      deps.getEpgService()?.setPlaylistIdentity(stableId);
    } catch (e) {
      debugLog('ChannelProvider: Failed to upsert saved playlist: $e');
    }
  }

  int? _asInt(dynamic value) {
    if (value is int) return value;
    if (value is num) return value.toInt();
    if (value is String) return int.tryParse(value);
    return null;
  }
}
