import 'dart:async';
import 'dart:collection';

import 'package:flutter/widgets.dart';
import 'package:iptv_player/services/epg/epg_catchup_url_builder.dart';
import 'package:iptv_player/services/epg/epg_manual_mapping_facade_deps.dart';
import 'package:iptv_player/services/local_db_service.dart';
import 'package:iptv_player/utils/epg_matching_utils.dart';

/// Manual mapping wrappers, channel preview helpers, catchup URL building,
/// normalization, and lifecycle tail for [IncrementalEpgService].
class EpgManualMappingFacade {
  EpgManualMappingFacade({required EpgManualMappingFacadeDeps deps})
      : _deps = deps;

  final EpgManualMappingFacadeDeps _deps;

  static final LinkedHashMap<String, String> _normalizeCache =
      LinkedHashMap<String, String>();

  static LinkedHashMap<String, String> get normalizeCache => _normalizeCache;

  static void clearNormalizeCache() => _normalizeCache.clear();

  static String normalize(String text) {
    final cached = _normalizeCache[text];
    if (cached != null) return cached;
    if (_normalizeCache.length > 50000) {
      _normalizeCache.clear();
    }
    final normalized = EPGMatchingUtils.normalizeChannelName(text);
    _normalizeCache[text] = normalized;
    return normalized;
  }

  String? buildCatchupUrl(String epgId, int startTs, int endTs,
      {required int nowMs}) {
    return EpgCatchupUrlBuilder.build(
      epgId: epgId,
      startTs: startTs,
      endTs: endTs,
      nowMs: nowMs,
      catchupByNormalizedId: _deps.catchupByNormalizedId(),
      server: _deps.xtreamServer(),
      username: _deps.xtreamUsername(),
      password: _deps.xtreamPassword(),
    );
  }

  bool hasManualMapping(String channelId) =>
      _deps.manualMappingsStore.hasManualMapping(channelId);

  String? getManualMapping(String channelId) =>
      _deps.manualMappingsStore.getManualMapping(channelId);

  List<String> getEpgChannelIds() {
    final ids = _deps.availableChannels.toList();
    ids.sort((a, b) => a.toLowerCase().compareTo(b.toLowerCase()));
    return ids;
  }

  String? getChannelPreview(String epgChannelId) {
    final programs = _deps.programsByChannel[epgChannelId];
    if (programs == null || programs.isEmpty) return null;
    final now = DateTime.now();
    for (final program in programs) {
      if (program.endTime.isAfter(now)) {
        return program.title;
      }
    }
    return programs.first.title;
  }

  Future<void> setManualMapping(String channelId, String epgChannelId) async {
    await _deps.manualMappingsStore.setManualMapping(
      channelId: channelId,
      epgChannelId: epgChannelId,
      onApplied: (id, epgId) {
        _deps.internalToEpgIdMapping[id] = epgId;
        _deps.publicApi.queueMappingPersist(id, epgId);
      },
      getPrefs: _deps.getPrefs,
    );

    await _deps.ensureChannelLoaded(channelId);
    _deps.notifyListeners();
  }

  Future<void> removeManualMapping(String channelId) async {
    await _deps.manualMappingsStore.removeManualMapping(
      channelId: channelId,
      onRemoved: (id) => _deps.internalToEpgIdMapping.remove(id),
      deleteFromDb: (id) =>
          _deps.db.deleteEpgMapping(id).catchError(_deps.handleDbError),
      getPrefs: _deps.getPrefs,
    );
    _deps.notifyListeners();
  }

  Future<void> loadMappingsFromDb() async {
    await _deps.manualMappingsStore.loadMappingsFromDb(
      dbDisabled: _deps.isDbDisabled(),
      internalToEpgIdMapping: _deps.internalToEpgIdMapping,
      registerAvailableChannels: _deps.publicApi.registerAvailableChannels,
      registerAvailableChannel: _deps.publicApi.registerAvailableChannel,
      onDbError: _deps.handleDbError,
      onLoaded: _deps.notifyListeners,
    );
  }

  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      unawaited(_deps.restoreDbIfClosed());
    } else if (state == AppLifecycleState.paused ||
        state == AppLifecycleState.inactive) {
      _deps.channelBatchLoader.cancelBatchTimer();
    }
  }

  void dispose() {
    _deps.channelBatchLoader.cancelBatchTimer();
    _deps.stopParseProgressTimer();
  }
}
