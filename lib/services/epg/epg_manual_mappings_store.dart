import 'dart:convert';

import 'package:iptv_player/services/local_db_service.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Persists and applies user-defined channel → EPG ID mappings.
class EpgManualMappingsStore {
  EpgManualMappingsStore({
    required LocalDbService db,
    String? playlistIdentity,
  })  : _db = db,
        _playlistIdentity = _normalizePlaylistIdentity(playlistIdentity);

  final LocalDbService _db;
  String? _playlistIdentity;
  final Map<String, String> _manualMappings = {};
  DateTime? _lastMappingsLoad;

  static const String manualMappingsKey = 'epg_manual_mappings';

  Map<String, String> get manualMappings => _manualMappings;

  void setPlaylistIdentity(String? identity) {
    _playlistIdentity = _normalizePlaylistIdentity(identity);
  }

  void clear() => _manualMappings.clear();

  String storageKey() {
    final identity = _playlistIdentity?.trim();
    if (identity == null || identity.isEmpty) {
      return manualMappingsKey;
    }
    return '${manualMappingsKey}_$identity';
  }

  Future<void> loadFromPrefs(SharedPreferences prefs) async {
    try {
      final key = storageKey();
      var jsonStr = prefs.getString(key);
      if (jsonStr == null || jsonStr.trim().isEmpty) {
        if (key != manualMappingsKey) {
          jsonStr = prefs.getString(manualMappingsKey);
        }
      }
      if (jsonStr == null || jsonStr.trim().isEmpty) return;
      final Map<String, dynamic> decoded = jsonDecode(jsonStr);
      _manualMappings
        ..clear()
        ..addAll(decoded.map(
          (key, value) => MapEntry(key, value.toString()),
        ));
      if (key != manualMappingsKey) {
        await prefs.setString(key, jsonEncode(_manualMappings));
      }
    } catch (e) {
      debugLog('EPG: Failed to load manual mappings: $e');
    }
  }

  Future<void> saveToPrefs(SharedPreferences prefs) async {
    try {
      await prefs.setString(
        storageKey(),
        jsonEncode(_manualMappings),
      );
    } catch (e) {
      debugLog('EPG: Failed to save manual mappings: $e');
    }
  }

  void applyToService({
    required Map<String, String?> internalToEpgIdMapping,
    required void Function(String epgId) registerAvailableChannel,
  }) {
    if (_manualMappings.isEmpty) return;
    _manualMappings.forEach((channelId, epgId) {
      if (channelId.isEmpty || epgId.isEmpty) return;
      internalToEpgIdMapping[channelId] = epgId;
      registerAvailableChannel(epgId);
    });
  }

  bool hasManualMapping(String channelId) =>
      _manualMappings.containsKey(channelId);

  String? getManualMapping(String channelId) => _manualMappings[channelId];

  Future<void> setManualMapping({
    required String channelId,
    required String epgChannelId,
    required void Function(String channelId, String epgChannelId) onApplied,
    required Future<SharedPreferences> Function() getPrefs,
  }) async {
    if (channelId.isEmpty || epgChannelId.isEmpty) return;
    _manualMappings[channelId] = epgChannelId;
    onApplied(channelId, epgChannelId);
    await saveToPrefs(await getPrefs());
  }

  Future<void> removeManualMapping({
    required String channelId,
    required void Function(String channelId) onRemoved,
    required Future<void> Function(String channelId) deleteFromDb,
    required Future<SharedPreferences> Function() getPrefs,
  }) async {
    if (channelId.isEmpty) return;
    _manualMappings.remove(channelId);
    onRemoved(channelId);
    await deleteFromDb(channelId);
    await saveToPrefs(await getPrefs());
  }

  Future<void> loadMappingsFromDb({
    required bool dbDisabled,
    required Map<String, String?> internalToEpgIdMapping,
    required void Function(Iterable<String> epgIds) registerAvailableChannels,
    required void Function(String epgId) registerAvailableChannel,
    required void Function(Object error) onDbError,
    void Function()? onLoaded,
  }) async {
    try {
      if (dbDisabled) {
        return;
      }
      if (!_db.isReady) {
        return;
      }
      final now = DateTime.now();
      if (internalToEpgIdMapping.isNotEmpty &&
          _lastMappingsLoad != null &&
          now.difference(_lastMappingsLoad!).inSeconds < 30) {
        return;
      }
      final mappings = await _db.getAllMappings();
      internalToEpgIdMapping.addAll(mappings);
      registerAvailableChannels(mappings.values);
      applyToService(
        internalToEpgIdMapping: internalToEpgIdMapping,
        registerAvailableChannel: registerAvailableChannel,
      );
      _lastMappingsLoad = now;
      debugLog('EPG: Loaded ${mappings.length} mappings from DB');
      onLoaded?.call();
    } catch (e) {
      debugLog('EPG: Failed to load mappings from DB: $e');
      onDbError(e);
    }
  }

  static String? _normalizePlaylistIdentity(String? identity) {
    final normalized = identity?.trim();
    if (normalized == null || normalized.isEmpty) return null;
    return normalized;
  }
}
