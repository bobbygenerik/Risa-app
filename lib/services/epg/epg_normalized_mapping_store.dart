import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:path_provider/path_provider.dart';

/// Persists normalized EPG channel id → original id lists on disk.
class EpgNormalizedMappingStore {
  EpgNormalizedMappingStore({String? playlistIdentity})
      : _playlistIdentity = playlistIdentity;

  static const String defaultFileName = 'epg_normalized.json';

  String? _playlistIdentity;

  void setPlaylistIdentity(String? identity) {
    final normalized = identity?.trim();
    _playlistIdentity =
        (normalized != null && normalized.isNotEmpty) ? normalized : null;
  }

  String fileNameForPlaylist() {
    final identity = _playlistIdentity;
    if (identity == null || identity.isEmpty) {
      return defaultFileName;
    }
    return 'epg_normalized_$identity.json';
  }

  Future<void> save(Map<String, List<String>>? mapping) async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      final file = File('${dir.path}/${fileNameForPlaylist()}');
      if (mapping == null || mapping.isEmpty) {
        if (await file.exists()) await file.delete();
        return;
      }
      final jsonStr = await compute(json.encode, mapping);
      await file.writeAsString(jsonStr);
      debugLog(
          'EPG: Saved normalized mapping (${mapping.length} entries) to ${file.path}');
    } catch (e) {
      debugLog('EPG: Failed to save normalized mapping: $e');
    }
  }

  /// Loads mapping from disk. Returns null when no file exists or load fails.
  /// [migratedFromLegacy] is true when data was read from the legacy filename.
  Future<({Map<String, List<String>> mapping, bool migratedFromLegacy})?>
      load() async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      final file = File('${dir.path}/${fileNameForPlaylist()}');
      File? legacyFile;
      if (!await file.exists()) {
        final legacy = File('${dir.path}/$defaultFileName');
        if (await legacy.exists()) {
          legacyFile = legacy;
        } else {
          return null;
        }
      }
      final sourceFile = await file.exists() ? file : legacyFile!;
      final jsonStr = await sourceFile.readAsString();
      if (jsonStr.isEmpty) return null;
      final data = await compute(json.decode, jsonStr) as Map<String, dynamic>;
      final mapping = data.map((k, v) =>
          MapEntry(k, (v as List<dynamic>).map((e) => e.toString()).toList()));
      final migratedFromLegacy = sourceFile.path != file.path;
      debugLog(
          'EPG: Loaded normalized mapping from file (${mapping.length} entries)');
      return (mapping: mapping, migratedFromLegacy: migratedFromLegacy);
    } catch (e) {
      debugLog('EPG: Failed to load normalized mapping from file: $e');
      return null;
    }
  }
}
