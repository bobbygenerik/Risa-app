import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:path_provider/path_provider.dart';

/// Persists XMLTV channel id → display-name lists for fuzzy EPG matching.
class EpgDisplayNamesStore {
  EpgDisplayNamesStore({String? playlistIdentity})
      : _playlistIdentity = playlistIdentity;

  static const String defaultFileName = 'epg_display_names.json';

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
    return 'epg_display_names_$identity.json';
  }

  Future<void> save(Map<String, List<String>>? displayNames) async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      final file = File('${dir.path}/${fileNameForPlaylist()}');
      if (displayNames == null || displayNames.isEmpty) {
        if (await file.exists()) await file.delete();
        return;
      }
      final jsonStr = await compute(json.encode, displayNames);
      await file.writeAsString(jsonStr);
      debugLog(
          'EPG: Saved display names (${displayNames.length} channels) to ${file.path}');
    } catch (e) {
      debugLog('EPG: Failed to save display names: $e');
    }
  }

  Future<Map<String, List<String>>?> load() async {
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
      final mapping = data.map((k, v) => MapEntry(
          k, (v as List<dynamic>).map((e) => e.toString()).toList()));
      debugLog(
          'EPG: Loaded display names from file (${mapping.length} channels)');
      return mapping;
    } catch (e) {
      debugLog('EPG: Failed to load display names from file: $e');
      return null;
    }
  }
}
