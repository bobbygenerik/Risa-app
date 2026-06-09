import 'dart:async';
import 'dart:io';
import 'dart:math' as math;

import 'package:flutter/foundation.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/services/local_db_service.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'channel_category_cache.dart';
import 'channel_xtream_epg_map.dart';

/// Callbacks bridging [ChannelEpgIntegration] and [ChannelProvider] EPG state.
class ChannelEpgIntegrationDeps {
  const ChannelEpgIntegrationDeps({
    required this.channelMaps,
    required this.getEpgService,
    required this.getDb,
    required this.getDbReady,
    required this.handleDbError,
    required this.xtreamEpgMapStore,
    required this.categoryCache,
    required this.extractStreamIdFromUrl,
    required this.clearChannelCache,
    required this.notifyListeners,
    required this.ensureStablePlaylistIdentity,
    required this.getCurrentEpgMapSignature,
    required this.setCurrentEpgMapSignature,
    required this.getCurrentEpgMapSignatureKey,
    required this.setCurrentEpgMapSignatureKey,
    required this.getCurrentEpgMapCountKey,
    required this.setCurrentEpgMapCountKey,
    required this.getEpgAllowedChannelsFromDbInFlight,
    required this.setEpgAllowedChannelsFromDbInFlight,
  });

  final List<Map<String, dynamic>> channelMaps;
  final IncrementalEpgService? Function() getEpgService;
  final LocalDbService Function() getDb;
  final bool Function() getDbReady;
  final void Function(Object error) handleDbError;
  final ChannelXtreamEpgMapStore xtreamEpgMapStore;
  final ChannelCategoryCache categoryCache;
  final String? Function(String url) extractStreamIdFromUrl;
  final void Function() clearChannelCache;
  final void Function() notifyListeners;
  final Future<String?> Function(
    SharedPreferences prefs, {
    String? playlistUrl,
  }) ensureStablePlaylistIdentity;

  final String? Function() getCurrentEpgMapSignature;
  final void Function(String? value) setCurrentEpgMapSignature;
  final String? Function() getCurrentEpgMapSignatureKey;
  final void Function(String? value) setCurrentEpgMapSignatureKey;
  final String? Function() getCurrentEpgMapCountKey;
  final void Function(String? value) setCurrentEpgMapCountKey;
  final bool Function() getEpgAllowedChannelsFromDbInFlight;
  final void Function(bool value) setEpgAllowedChannelsFromDbInFlight;
}

/// EPG allowed-channel sync, Xtream map cache, and mapping persistence.
class ChannelEpgIntegration {
  ChannelEpgIntegration(this.deps);

  final ChannelEpgIntegrationDeps deps;
  bool _epgRefreshPending = false;
  bool _epgRefreshForce = false;

  static const String epgMapSignaturePrefix = 'epg_map_signature_';
  static const String epgMapCountPrefix = 'epg_map_count_';

  void updateEpgAllowedChannels() async {
    final service = deps.getEpgService();
    if (service == null) return;
    if (deps.channelMaps.isEmpty) {
      unawaited(loadAllowedChannelsFromDb());
      return;
    }

    try {
      if (deps.getDbReady()) {
        final dbCount = await deps.getDb().channelCount();
        if (dbCount > deps.channelMaps.length) {
          debugLog(
            'ChannelProvider: Loading EPG allowed set from DB '
            '($dbCount rows, ${deps.channelMaps.length} in memory)',
          );
          unawaited(loadAllowedChannelsFromDb());
          return;
        }
      }

      final allowed = <String>{};
      const batchSize = 20000;
      for (var start = 0; start < deps.channelMaps.length; start += batchSize) {
        final end = math.min(start + batchSize, deps.channelMaps.length);
        final batch = List<Map<String, dynamic>>.from(
          deps.channelMaps.sublist(start, end),
        );
        final partial = await compute(buildAllowedSet, batch);
        allowed.addAll(partial);
      }
      debugLog('ChannelProvider: Allowed set size=${allowed.length}');
      service.setAllowedChannelIds(allowed, triggerRefresh: true);
    } catch (e) {
      debugLog('ChannelProvider: compute(buildAllowedSet) failed: $e');
    }
  }

  static Set<String> buildAllowedSet(List<Map<String, dynamic>> maps) {
    final allowed = <String>{};
    for (final map in maps) {
      final attrs = map['attributes'];
      final tvgNameRaw = extractTvgNameFromAttributes(attrs);
      final tvgIdRaw = (map['tvgId'] as String?) ??
          (attrs is Map ? (attrs['tvg-id'] as String?) : null) ??
          (map['tvg-id'] as String?) ??
          '';
      final tvgId = tvgIdRaw.trim();
      final id = (map['id'] as String?)?.trim() ?? '';
      final name = (map['name'] as String?)?.trim() ?? '';
      if (tvgId.isNotEmpty) {
        allowed.add(IncrementalEpgService.normalizeForAllowedId(tvgId));
      } else if (id.isNotEmpty) {
        allowed.add(IncrementalEpgService.normalizeForAllowedId(id));
      }
      final tvgName = tvgNameRaw?.trim() ?? '';
      if (tvgName.isNotEmpty) {
        allowed.add(IncrementalEpgService.normalizeForAllowedId(tvgName));
      } else if (tvgId.isEmpty) {
        if (id.isNotEmpty) {
          allowed.add(IncrementalEpgService.normalizeForAllowedId(name));
        } else if (name.isNotEmpty) {
          allowed.add(IncrementalEpgService.normalizeForAllowedId(name));
        }
      }
    }
    return allowed;
  }

  static String? extractTvgNameFromAttributes(dynamic attrs) {
    if (attrs is! Map) return null;
    for (final entry in attrs.entries) {
      final key = entry.key.toString().toLowerCase();
      if (key == 'tvg-name' || key == 'tvg_name') {
        final value = entry.value?.toString().trim() ?? '';
        if (value.isNotEmpty) return value;
      }
    }
    return null;
  }

  Future<void> loadAllowedChannelsFromDb() async {
    if (!deps.getDbReady() || deps.getEpgAllowedChannelsFromDbInFlight()) {
      return;
    }
    deps.setEpgAllowedChannelsFromDbInFlight(true);
    try {
      final service = deps.getEpgService();
      if (service == null) return;
      final allowed = <String>{};
      const int pageSize = 1000;
      int offset = 0;
      while (true) {
        final rows = await deps.getDb().getChannelIdentifiersPage(
              offset: offset,
              limit: pageSize,
            );
        if (rows.isEmpty) break;
        allowed.addAll(buildAllowedSet(rows));
        if (rows.length < pageSize) break;
        offset += pageSize;
      }
      if (allowed.isNotEmpty) {
        debugLog('ChannelProvider: Allowed set (DB) size=${allowed.length}');
        service.setAllowedChannelIds(allowed, triggerRefresh: true);
      }
    } catch (e) {
      debugLog(
          'ChannelProvider: Failed to load EPG allowed channels from DB: $e');
    } finally {
      deps.setEpgAllowedChannelsFromDbInFlight(false);
    }
  }

  Future<int> applyXtreamEpgMapFromCache() async {
    if (deps.channelMaps.isEmpty) return 0;
    final maps = await deps.xtreamEpgMapStore.loadOnce();
    final byStreamId = maps['byStreamId'] ?? const {};
    final byName = maps['byName'] ?? const {};
    final mapped = ChannelXtreamEpgMapStore.applyToChannelMaps(
      channelMaps: deps.channelMaps,
      byStreamId: byStreamId,
      byName: byName,
      extractStreamIdFromUrl: deps.extractStreamIdFromUrl,
    );
    if (mapped > 0) {
      deps.clearChannelCache();
      updateEpgAllowedChannels();
      deps.notifyListeners();
    }
    return mapped;
  }

  void scheduleEpgRefresh({bool forceRefresh = false}) {
    final service = deps.getEpgService();
    if (service == null) return;
    if (forceRefresh) {
      _epgRefreshForce = true;
    }
    if (service.isLoading || service.isDownloading || service.isParsing) {
      _epgRefreshPending = true;
      debugLog('ChannelProvider: EPG refresh queued (service busy)');
      return;
    }

    final force = forceRefresh || _epgRefreshForce;
    _epgRefreshPending = false;
    _epgRefreshForce = false;

    unawaited(service.initialize(forceRefresh: force).whenComplete(() {
      if (!_epgRefreshPending) return;
      _epgRefreshPending = false;
      final retryForce = _epgRefreshForce;
      _epgRefreshForce = false;
      scheduleEpgRefresh(forceRefresh: retryForce);
    }).catchError((e) {
      debugLog('ChannelProvider: EPG refresh failed: $e');
    }));
  }

  Future<void> buildEpgMapping() async {
    final epgService = deps.getEpgService();
    if (epgService == null) return;
    if (deps.channelMaps.isEmpty) return;
    if (await tryReuseEpgMapping()) {
      return;
    }

    for (int i = 0; i < 5; i++) {
      if (!epgService.isLoading &&
          !epgService.isParsing &&
          epgService.availableChannels.isNotEmpty) {
        break;
      }
      await Future.delayed(const Duration(seconds: 1));
    }
    if (epgService.availableChannels.isEmpty) {
      debugLog('ChannelProvider: Skipping EPG mapping - no EPG channels');
      return;
    }

    const int batchSize = 500;
    const int yieldEvery = 50;
    final Map<String, String> batch = {};
    int totalChannels = 0;
    int channelsWithTvgId = 0;
    int idBasedMatches = 0;
    epgService.resetMatchDiagnostics();

    for (int i = 0; i < deps.channelMaps.length; i++) {
      final map = deps.channelMaps[i];
      totalChannels++;
      final tvgId = (map['tvgId'] as String?)?.trim() ?? '';
      final id = (map['id'] as String?)?.trim() ?? '';
      final url = (map['url'] as String?)?.trim() ?? '';
      final channelId = tvgId.isNotEmpty ? tvgId : (id.isNotEmpty ? id : url);
      final channelNameForLookup =
          (extractTvgNameFromAttributes(map['attributes']) ??
                  (map['name'] as String?) ??
                  '')
              .trim();
      if (channelId.isEmpty) continue;

      if (tvgId.isNotEmpty) {
        channelsWithTvgId++;
      }

      final epgId = epgService.resolveEpgId(
        channelId,
        channelName:
            channelNameForLookup.isNotEmpty ? channelNameForLookup : null,
        cache: true,
        allowLoose: true,
      );
      if (epgId != null) {
        batch[channelId] = epgId;
        if (tvgId.isNotEmpty) {
          idBasedMatches++;
        }
      }

      if (deps.getDbReady() && batch.length >= batchSize) {
        try {
          await deps.getDb().upsertEpgMapping(Map<String, String>.from(batch));
          batch.clear();
        } catch (e) {
          debugLog('ChannelProvider: Failed to persist EPG mapping batch: $e');
          deps.handleDbError(e);
        }
        await Future.delayed(Duration.zero);
      }

      if (!deps.getDbReady() && i > 0 && i % yieldEvery == 0) {
        await Future.delayed(Duration.zero);
      }
    }

    if (deps.getDbReady() && batch.isNotEmpty) {
      try {
        await deps.getDb().upsertEpgMapping(batch);
      } catch (e) {
        debugLog(
            'ChannelProvider: Failed to persist final EPG mapping batch: $e');
        deps.handleDbError(e);
      }
    }

    debugLog('ChannelProvider: Completed EPG mapping build');
    debugLog(
        'ChannelProvider: EPG mapping stats - total=$totalChannels tvgId=$channelsWithTvgId idMatches=$idBasedMatches');
    epgService.logMatchDiagnostics();
    if (deps.getDbReady()) {
      try {
        await epgService.loadMappingsFromDb();
      } catch (e) {
        debugLog(
            'ChannelProvider: Failed to load mappings into EPG service: $e');
        deps.handleDbError(e);
      }
    }

    await persistEpgMappingSignature();
  }

  Future<bool> tryReuseEpgMapping() async {
    if (!deps.getDbReady()) return false;
    final signature = deps.getCurrentEpgMapSignature();
    final signatureKey = deps.getCurrentEpgMapSignatureKey();
    if (signature == null || signatureKey == null) {
      return false;
    }
    try {
      final prefs = await SharedPreferences.getInstance();
      final stored = prefs.getString(signatureKey);
      if (stored == null || stored != signature) {
        return false;
      }
      final count = await deps.getDb().mappingCount();
      if (count <= 0) return false;
      final countKey = deps.getCurrentEpgMapCountKey() ??
          signatureKey.replaceFirst(epgMapSignaturePrefix, epgMapCountPrefix);
      deps.setCurrentEpgMapCountKey(countKey);
      debugLog(
          'ChannelProvider: Reusing persisted EPG mapping ($count entries)');
      await deps.getEpgService()?.loadMappingsFromDb();
      return true;
    } catch (e) {
      debugLog('ChannelProvider: Failed to reuse EPG mapping: $e');
      deps.handleDbError(e);
      return false;
    }
  }

  Future<void> persistEpgMappingSignature() async {
    final signature = deps.getCurrentEpgMapSignature();
    final signatureKey = deps.getCurrentEpgMapSignatureKey();
    if (signature == null || signatureKey == null || !deps.getDbReady()) {
      return;
    }
    try {
      final prefs = await SharedPreferences.getInstance();
      final count = await deps.getDb().mappingCount();
      final countKey = deps.getCurrentEpgMapCountKey() ??
          signatureKey.replaceFirst(epgMapSignaturePrefix, epgMapCountPrefix);
      deps.setCurrentEpgMapCountKey(countKey);
      await prefs.setString(signatureKey, signature);
      await prefs.setInt(countKey, count);
    } catch (e) {
      debugLog('ChannelProvider: Failed to persist EPG map signature: $e');
      deps.handleDbError(e);
    }
  }

  Future<void> setCurrentEpgMapSignature({
    required SharedPreferences prefs,
    required String? playlistUrl,
    required String? epgUrl,
    required int channelCount,
    String? channelsFile,
  }) async {
    await deps.ensureStablePlaylistIdentity(prefs, playlistUrl: playlistUrl);
    final keySource = prefs.getString('active_playlist_id')?.trim();
    final keyBase = (keySource != null && keySource.isNotEmpty)
        ? keySource
        : (playlistUrl?.trim().isNotEmpty == true
            ? playlistUrl!.trim()
            : 'default');
    final signatureKey =
        '$epgMapSignaturePrefix${Uri.encodeComponent(keyBase)}';
    deps.setCurrentEpgMapSignatureKey(signatureKey);
    deps.setCurrentEpgMapCountKey(
        '$epgMapCountPrefix${Uri.encodeComponent(keyBase)}');
    deps.setCurrentEpgMapSignature(
      await computeEpgMapSignature(
        playlistUrl: playlistUrl,
        epgUrl: epgUrl,
        channelCount: channelCount,
        channelsFile: channelsFile,
      ),
    );
    deps.categoryCache.setKeyForIdentity(keyBase);
  }

  Future<String> computeEpgMapSignature({
    required String? playlistUrl,
    required String? epgUrl,
    required int channelCount,
    String? channelsFile,
  }) async {
    final buffer = StringBuffer();
    buffer.write(playlistUrl?.trim() ?? '');
    buffer.write('|');
    buffer.write(epgUrl?.trim() ?? '');
    buffer.write('|');
    buffer.write(channelCount);
    if (channelsFile != null && channelsFile.isNotEmpty) {
      final file = File(channelsFile);
      if (await file.exists()) {
        try {
          final stat = await file.stat();
          buffer.write('|');
          buffer.write(stat.size);
          buffer.write('|');
          buffer.write(stat.modified.millisecondsSinceEpoch);
        } catch (e) {
          debugLog('ChannelProvider: file stat for signature failed: $e');
        }
      }
    }
    return buffer.toString();
  }
}
