import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/screens/live_tv/category_state.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/utils/json_offload.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LiveTvSnapshotData {
  const LiveTvSnapshotData({
    required this.names,
    required this.channelCache,
    required this.programSnapshot,
  });

  final List<String> names;
  final Map<String, List<Channel>> channelCache;
  final Map<String, List<Program>> programSnapshot;
}

/// Persists and restores a lightweight Live TV grid snapshot for fast cold start.
class LiveTvSnapshotStore {
  LiveTvSnapshotStore._();

  static const String prefsKey = 'live_tv_snapshot_v2';
  static const Duration ttl = Duration(hours: 6);
  static const int categoryLimit = 6;
  static const int rowLimit = 12;

  static Future<String?> readPlaylistIdentity() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString('active_playlist_id') ??
          prefs.getString('m3u_url') ??
          prefs.getString('xtream_server');
    } catch (e) {
      debugLog('LiveTvSnapshotStore: readPlaylistIdentity failed: $e');
      return null;
    }
  }

  static List<Program> currentAndNextPrograms(
    Channel channel,
    IncrementalEpgService epgService,
  ) {
    final channelId = channel.epgLookupId;
    final programs = epgService.getProgramsForChannel(
      channelId,
      channelName: channel.epgLookupNameFallback,
      groupTitle: channel.groupTitle,
    );
    if (programs.isEmpty) return const [];
    final now = DateTime.now();
    Program? current;
    Program? next;
    for (final program in programs) {
      if (program.startTime.isBefore(now) && program.endTime.isAfter(now)) {
        current = program;
      } else if (program.startTime.isAfter(now)) {
        final nextProgram = next;
        if (nextProgram == null ||
            program.startTime.isBefore(nextProgram.startTime)) {
          next = program;
        }
      }
    }
    final snapshot = <Program>[];
    if (current != null) snapshot.add(current);
    if (next != null) snapshot.add(next);
    return snapshot;
  }

  static Future<LiveTvSnapshotData?> load() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final raw = prefs.getString(prefsKey);
      if (raw == null || raw.isEmpty) return null;
      final decoded = await compute(jsonDecode, raw);
      if (decoded is! Map<String, dynamic>) return null;
      final savedAt = decoded['savedAt'] as int?;
      if (savedAt == null) return null;
      final age = DateTime.now()
          .difference(DateTime.fromMillisecondsSinceEpoch(savedAt));
      if (age > ttl) return null;
      final playlistId = decoded['playlistId'] as String?;
      final currentPlaylistId = await readPlaylistIdentity();
      if (playlistId != null &&
          currentPlaylistId != null &&
          playlistId != currentPlaylistId) {
        return null;
      }
      final categories = decoded['categories'];
      if (categories is! List) return null;

      final names = <String>[];
      final cache = <String, List<Channel>>{};
      final programSnapshot = <String, List<Program>>{};
      for (final entry in categories) {
        if (entry is! Map<String, dynamic>) continue;
        final name = (entry['name'] as String?)?.trim();
        if (name == null || name.isEmpty) continue;
        final channels = <Channel>[];
        final channelList = entry['channels'];
        if (channelList is List) {
          for (final c in channelList) {
            if (c is! Map<String, dynamic>) continue;
            final id = (c['id'] as String?) ?? '';
            final cname = (c['name'] as String?) ?? '';
            final url = (c['url'] as String?) ?? '';
            if (id.isEmpty || cname.isEmpty || url.isEmpty) continue;
            final channel = Channel(
              id: id,
              name: cname,
              url: url,
              logoUrl: c['logoUrl'] as String?,
              groupTitle: c['groupTitle'] as String?,
              tvgId: c['tvgId'] as String?,
              channelNumber: c['channelNumber'] as int?,
              language: c['language'] as String?,
              country: c['country'] as String?,
              attributes: c['attributes'] is Map
                  ? Map<String, String>.from(c['attributes'] as Map)
                  : null,
            );
            channels.add(channel);
            final programsRaw = c['programs'];
            if (programsRaw is List) {
              final epgId = channel.epgLookupId;
              final programs = <Program>[];
              for (final p in programsRaw) {
                if (p is! Map<String, dynamic>) continue;
                final startTs = p['startTs'] as int? ?? 0;
                final endTs = p['endTs'] as int? ?? 0;
                if (startTs == 0 || endTs == 0) continue;
                final title = (p['title'] as String?) ?? '';
                if (title.isEmpty) continue;
                programs.add(Program(
                  id: '${epgId}_$startTs',
                  channelId: epgId,
                  title: title,
                  description: p['description'] as String?,
                  startTime: DateTime.fromMillisecondsSinceEpoch(startTs),
                  endTime: DateTime.fromMillisecondsSinceEpoch(endTs),
                  imageUrl: p['imageUrl'] as String?,
                ));
              }
              if (programs.isNotEmpty) {
                programSnapshot[epgId] = programs;
              }
            }
          }
        }
        if (channels.isEmpty) continue;
        names.add(name);
        cache[name] = channels;
      }
      if (names.isEmpty || cache.isEmpty) return null;
      return LiveTvSnapshotData(
        names: names,
        channelCache: cache,
        programSnapshot: programSnapshot,
      );
    } catch (e) {
      debugLog('LiveTvSnapshotStore: load failed: $e');
      return null;
    }
  }

  static void applyToCategoryState(
    LiveTvSnapshotData data,
    LiveTvCategoryState categoryState,
  ) {
    categoryState.replaceNames(data.names);
    categoryState.channelCache
      ..clear()
      ..addAll(data.channelCache);
    categoryState.offsets
      ..clear()
      ..addEntries(data.channelCache.entries
          .map((entry) => MapEntry(entry.key, entry.value.length)));
    categoryState.hasMore
      ..clear()
      ..addEntries(data.channelCache.entries.map((entry) => MapEntry(
          entry.key, entry.value.length >= rowLimit)));
    categoryState.visibleCount = categoryState.names.length;
  }

  static Future<void> save({
    required LiveTvCategoryState categoryState,
    required IncrementalEpgService epgService,
    required int channelCount,
    required void Function(List<Channel> channels, {int limit}) onPrefetchRow,
  }) async {
    if (categoryState.names.isEmpty || categoryState.channelCache.isEmpty) {
      return;
    }
    try {
      final prefs = await SharedPreferences.getInstance();
      final playlistId = await readPlaylistIdentity();
      final categories = <Map<String, dynamic>>[];
      for (final category in categoryState.names.take(categoryLimit)) {
        final channels = categoryState.channelCache[category];
        if (channels == null || channels.isEmpty) continue;
        onPrefetchRow(
          channels.take(rowLimit).toList(),
          limit: 15,
        );
        final payload = <Map<String, dynamic>>[];
        for (final channel in channels.take(rowLimit)) {
          final programs = currentAndNextPrograms(channel, epgService);
          final programPayload = programs
              .map((program) => {
                    'startTs': program.startTime.millisecondsSinceEpoch,
                    'endTs': program.endTime.millisecondsSinceEpoch,
                    'title': program.title,
                    'description': program.description,
                    'imageUrl': program.imageUrl,
                  })
              .toList();
          payload.add({
            'id': channel.id,
            'name': channel.name,
            'url': channel.url,
            'logoUrl': channel.logoUrl,
            'groupTitle': channel.groupTitle,
            'tvgId': channel.tvgId,
            'channelNumber': channel.channelNumber,
            'language': channel.language,
            'country': channel.country,
            if (channel.attributes != null && channel.attributes!.isNotEmpty)
              'attributes': channel.attributes,
            if (programPayload.isNotEmpty) 'programs': programPayload,
          });
        }
        if (payload.isEmpty) continue;
        categories.add({
          'name': category,
          'channels': payload,
        });
      }
      if (categories.isEmpty) return;
      final snapshot = {
        'savedAt': DateTime.now().millisecondsSinceEpoch,
        'playlistId': playlistId,
        'channelCount': channelCount,
        'categories': categories,
      };
      // Encode off-main: this snapshot (categories x channels x programs) is
      // large enough that a synchronous jsonEncode here showed up as ~12% of
      // main-isolate CPU and a periodic frame spike every debounced save.
      await prefs.setString(prefsKey, await jsonEncodeOffMain(snapshot));
    } catch (e) {
      debugLog('LiveTvSnapshotStore: save failed: $e');
    }
  }
}
