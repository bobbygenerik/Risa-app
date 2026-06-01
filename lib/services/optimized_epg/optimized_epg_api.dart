part of '../optimized_epg_service.dart';

extension OptimizedEpgApi on OptimizedEpgService {
/// Check if channel has programs
bool hasProgramsForChannel(
  String channelId, {
  String? channelName,
  String? groupTitle,
}) {
  final epgId = _channelIdToEpgId[channelId] ??
      (channelName != null
          ? _normalizedEpgIds[OptimizedEpgService._normalize(channelName)]
          : null);
  if (epgId != null && _programs.containsKey(epgId) && _programs[epgId]!.isNotEmpty) {
    return true;
  }
  return _programs.containsKey(channelId) && _programs[channelId]!.isNotEmpty;
}

/// Ensure channel is loaded
Future<void> ensureChannelLoaded(
  String channelId, {
  String? channelName,
}) async {
  if (hasProgramsForChannel(channelId, channelName: channelName)) return;

  if (!_channelIdToEpgId.containsKey(channelId)) {
      final channel = Channel(id: channelId, name: channelName ?? '', url: '');
      final epgId = _resolveEpgId(channel);
      if (epgId != null) {
        _channelIdToEpgId[channelId] = epgId;
      }
  }

  final epgId = _channelIdToEpgId[channelId];
  if (epgId != null) {
    await _loadProgramsForChannels([Channel(id: channelId, name: channelName ?? '', url: '', tvgId: epgId)]);
    _notifyEpgChange();
  }
}

/// Ensure channels are loaded in batch
Future<void> ensureChannelsLoadedBatch(
  List<String> channelIds, {
  List<String>? channelNames,
}) async {
  final channelsToLoad = <Channel>[];
  for (int i=0; i<channelIds.length; i++) {
    final id = channelIds[i];
    final name = (channelNames != null && i < channelNames.length) ? channelNames[i] : '';
    if (!hasProgramsForChannel(id, channelName: name)) {
      channelsToLoad.add(Channel(id: id, name: name, url: ''));
    }
  }

  if (channelsToLoad.isNotEmpty) {
    await _loadProgramsForChannels(channelsToLoad);
    _notifyEpgChange();
  }
}

/// Check if channel should be hidden
bool shouldHideChannel(
  String channelId, {
  String? channelName,
}) {
  return false;
}

/// Get EPG channel IDs
List<String> getEpgChannelIds() {
  return _programs.keys.toList();
}

/// Get channel preview
String? getChannelPreview(String channelId) {
  final currentProgram = getCurrentProgram(channelId);
  return currentProgram?.title;
}

/// Get suggested matches for channel
List<MapEntry<String, double>> getSuggestedMatches(
  String channelId,
  String channelName, {
  int limit = 10,
}) {
  return [];
}

/// Manual mapping methods
String? getManualMapping(String channelId) {
  return _manualMappings[channelId];
}

Future<void> setManualMapping(String channelId, String epgChannelId) async {
  if (channelId.isEmpty || epgChannelId.isEmpty) return;

  // Update memory cache
  _manualMappings[channelId] = epgChannelId;
  _notifyEpgChange();

  // Persist to DB
  try {
    await LocalDbService.instance.upsertEpgMapping({channelId: epgChannelId});
  } catch (e) {
    debugLog('OptimizedEpgService: Failed to persist mapping: $e');
  }
}

Future<void> removeManualMapping(String channelId) async {
  if (channelId.isEmpty) return;
  if (!_manualMappings.containsKey(channelId)) return;

  // Update memory cache
  _manualMappings.remove(channelId);
  _notifyEpgChange();

  // Persist to DB
  try {
    await LocalDbService.instance.deleteEpgMapping(channelId);
  } catch (e) {
    debugLog('OptimizedEpgService: Failed to delete mapping: $e');
  }
}

bool hasManualMapping(String channelId) {
  return _manualMappings.containsKey(channelId);
}

/// Helper to ensure mappings are loaded from DB
Future<void> _ensureMappingsLoaded() async {
  if (_mappingsLoaded) return;
  try {
    final mappings = await LocalDbService.instance.getAllMappings();
    _manualMappings.addAll(mappings);
    _mappingsLoaded = true;
    debugLog('OptimizedEpgService: Loaded ${_manualMappings.length} manual mappings');
  } catch (e) {
    debugLog('OptimizedEpgService: Failed to load manual mappings: $e');
  }
}
}
