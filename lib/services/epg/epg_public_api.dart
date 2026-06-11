import 'package:iptv_player/services/epg/epg_channel_matcher.dart';
import 'package:iptv_player/services/epg/mapping_persist_buffer.dart';
import 'package:iptv_player/services/local_db_service.dart';

/// Channel resolution, mapping cache, and registration helpers for EPG.
class EpgPublicApi {
  EpgPublicApi({
    required EpgChannelMatcher channelMatcher,
    required Map<String, String?> internalToEpgIdMapping,
    required Set<String> availableChannels,
    required LocalDbService db,
    required bool Function() isDbDisabled,
    required void Function(Object error) handleDbError,
  })  : _channelMatcher = channelMatcher,
        _internalToEpgIdMapping = internalToEpgIdMapping,
        _availableChannels = availableChannels,
        _db = db,
        _isDbDisabled = isDbDisabled,
        _handleDbError = handleDbError;

  final EpgChannelMatcher _channelMatcher;
  final Map<String, String?> _internalToEpgIdMapping;
  final Set<String> _availableChannels;
  final LocalDbService _db;
  final bool Function() _isDbDisabled;
  final void Function(Object error) _handleDbError;

  void registerAvailableChannel(String epgId) {
    if (epgId.isEmpty) return;
    _availableChannels.add(epgId);
    _channelMatcher.indexEpgIdRaw(epgId);
  }

  void registerAvailableChannels(Iterable<String> ids) {
    for (final id in ids) {
      registerAvailableChannel(id);
    }
  }

  /// Batches mapping upserts: during hydration thousands of channels resolve
  /// in bursts and persisting each individually meant one DB transaction per
  /// channel on the UI isolate (~12% of main-isolate CPU in that window).
  late final MappingPersistBuffer _mappingPersistBuffer = MappingPersistBuffer(
    onFlush: (batch) => _db.upsertEpgMapping(batch),
    onError: _handleDbError,
  );

  void queueMappingPersist(String channelId, String epgId) {
    if (channelId.isEmpty || epgId.isEmpty) return;
    if (_isDbDisabled() || !_db.isReady) return;
    _mappingPersistBuffer.add(channelId, epgId);
  }

  /// Flush any buffered mapping writes immediately (e.g. on dispose).
  void flushPendingMappingPersists() => _mappingPersistBuffer.flushNow();

  String? cacheResolvedMapping(String channelId, String? epgId) {
    _internalToEpgIdMapping[channelId] = epgId;
    if (epgId != null) {
      queueMappingPersist(channelId, epgId);
    }
    return epgId;
  }

  String? resolveEpgId(
    String channelId, {
    String? channelName,
    bool cache = true,
    bool allowLoose = true,
  }) {
    final cached = _internalToEpgIdMapping[channelId];
    if (cached != null) {
      if (_channelMatcher.epgIdsRaw.isEmpty ||
          _channelMatcher.epgIdsRaw.contains(cached)) {
        return cached;
      }
      _internalToEpgIdMapping.remove(channelId);
    }
    final found = _channelMatcher.findBestEpgId(
      channelId,
      channelName,
      allowLoose: allowLoose,
    );
    if (cache && found != null) {
      cacheResolvedMapping(channelId, found);
    }
    return found;
  }

  bool hasEpgMatch(String channelId, {String? channelName}) {
    return _channelMatcher.findBestEpgId(
          channelId,
          channelName,
        ) !=
        null;
  }

  List<MapEntry<String, double>> getSuggestedMatches(
    String channelId,
    String? channelName, {
    int limit = 10,
  }) {
    return _channelMatcher.getSuggestedMatches(channelName, limit: limit);
  }
}
