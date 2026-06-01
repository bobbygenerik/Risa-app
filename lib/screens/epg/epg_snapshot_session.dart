import 'dart:async';
import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/state/epg_screen_state.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Persists and restores EPG guide snapshot for faster cold start.
class EpgSnapshotSession {
  EpgSnapshotSession({
    required this.epgState,
    required this.isMounted,
    required this.requestRebuild,
    required this.getContext,
  });

  static const String snapshotKey = 'epg_snapshot_v2';
  static const Duration snapshotTtl = Duration(hours: 6);
  static const int snapshotChannelLimit = 60;

  final EPGScreenState epgState;
  final bool Function() isMounted;
  final void Function() requestRebuild;
  final BuildContext Function() getContext;

  bool applied = false;
  Timer? _saveDebounce;

  void dispose() {
    _saveDebounce?.cancel();
  }

  Future<String?> readPlaylistIdentity() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString('active_playlist_id') ??
          prefs.getString('m3u_url') ??
          prefs.getString('xtream_server');
    } catch (e) {
      debugLog('EPGScreen: readPlaylistIdentity failed: $e');
      return null;
    }
  }

  Future<void> load() async {
    if (applied) return;
    try {
      final prefs = await SharedPreferences.getInstance();
      final raw = prefs.getString(snapshotKey);
      if (raw == null || raw.isEmpty) return;
      final decoded = jsonDecode(raw);
      if (decoded is! Map<String, dynamic>) return;
      final savedAt = decoded['savedAt'] as int?;
      if (savedAt == null) return;
      final age = DateTime.now()
          .difference(DateTime.fromMillisecondsSinceEpoch(savedAt));
      if (age > snapshotTtl) return;
      final playlistId = decoded['playlistId'] as String?;
      final snapshotChannelCount = decoded['channelCount'] as int?;
      final currentPlaylistId = await readPlaylistIdentity();
      if (!isMounted()) return;
      if (playlistId != null &&
          currentPlaylistId != null &&
          playlistId != currentPlaylistId) {
        return;
      }
      final context = getContext();
      final provider = Provider.of<ChannelProvider>(context, listen: false);
      if (snapshotChannelCount != null &&
          provider.channelCount > 0 &&
          (snapshotChannelCount - provider.channelCount).abs() >
              math.max(20, (provider.channelCount * 0.1).round())) {
        return;
      }
      final channelsRaw = decoded['channels'];
      if (channelsRaw is! List) return;
      final selectedCategory = decoded['selectedCategory'] as String?;
      final favoriteIdsRaw = decoded['favoriteIds'];
      final favoriteIds = <String>{};
      if (favoriteIdsRaw is List) {
        for (final id in favoriteIdsRaw) {
          if (id is String && id.isNotEmpty) favoriteIds.add(id);
        }
      }
      final channels = <Channel>[];
      final programSnapshot = <String, List<Program>>{};
      for (final c in channelsRaw) {
        if (c is! Map<String, dynamic>) continue;
        final id = (c['id'] as String?) ?? '';
        final name = (c['name'] as String?) ?? '';
        final url = (c['url'] as String?) ?? '';
        if (id.isEmpty || name.isEmpty || url.isEmpty) continue;
        final channel = Channel(
          id: id,
          name: name,
          url: url,
          logoUrl: c['logoUrl'] as String?,
          groupTitle: c['groupTitle'] as String?,
          tvgId: c['tvgId'] as String?,
          channelNumber: c['channelNumber'] as int?,
          attributes: c['attributes'] is Map
              ? Map<String, String>.from(c['attributes'] as Map)
              : null,
          language: c['language'] as String?,
          country: c['country'] as String?,
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
      if (channels.isEmpty) return;

      applied = true;
      if (selectedCategory != null && selectedCategory.isNotEmpty) {
        epgState.setSelectedCategory(selectedCategory);
      }
      if (favoriteIds.isNotEmpty) {
        epgState.setEpgFavoriteChannelIds(favoriteIds);
      }
      if (programSnapshot.isNotEmpty) {
        final epgService =
            Provider.of<IncrementalEpgService>(context, listen: false);
        epgService.applyProgramSnapshot(programSnapshot);
      }
      if (isMounted()) {
        requestRebuild();
      }
    } catch (e) {
      debugLog('EPGScreen: loadEpgSnapshot failed: $e');
    }
  }

  void scheduleSave(List<Channel> channels) {
    if (channels.isEmpty) return;
    _saveDebounce?.cancel();
    _saveDebounce =
        Timer(const Duration(seconds: 3), () => save(channels));
  }

  List<Program> _programsForChannel(
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
    if (current != null) {
      snapshot.add(current);
    }
    if (next != null) {
      snapshot.add(next);
    }
    return snapshot;
  }

  Future<void> save(List<Channel> channels) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final playlistId = await readPlaylistIdentity();
      if (!isMounted()) return;
      final context = getContext();
      final epgService =
          Provider.of<IncrementalEpgService>(context, listen: false);
      final payload = <Map<String, dynamic>>[];
      for (final channel in channels.take(snapshotChannelLimit)) {
        final programs = _programsForChannel(channel, epgService);
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
          if (channel.attributes != null && channel.attributes!.isNotEmpty)
            'attributes': channel.attributes,
          'language': channel.language,
          'country': channel.country,
          if (programPayload.isNotEmpty) 'programs': programPayload,
        });
      }
      if (payload.isEmpty) return;
      final provider = Provider.of<ChannelProvider>(context, listen: false);
      final snapshot = {
        'savedAt': DateTime.now().millisecondsSinceEpoch,
        'playlistId': playlistId,
        'channelCount': provider.channelCount,
        'selectedCategory': epgState.selectedCategory,
        'favoriteIds': epgState.epgFavoriteChannelIds.toList(),
        'channels': payload,
      };
      await prefs.setString(snapshotKey, jsonEncode(snapshot));
    } catch (e) {
      debugLog('EPGScreen: saveEpgSnapshot failed: $e');
    }
  }
}
