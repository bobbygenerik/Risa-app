import 'dart:convert';
import 'dart:io';

import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:path_provider/path_provider.dart';

/// Disk cache for Xtream stream-id / name → EPG id mappings.
class ChannelXtreamEpgMapStore {
  static const String fileName = 'xtream_epg_map.json';

  bool loaded = false;

  Future<Map<String, Map<String, String>>> loadOnce() async {
    if (loaded) {
      return const {'byStreamId': {}, 'byName': {}};
    }
    loaded = true;
    try {
      final dir = await getApplicationSupportDirectory();
      final file = File('${dir.path}/$fileName');
      if (!await file.exists()) return const {'byStreamId': {}, 'byName': {}};
      final jsonStr = await file.readAsString();
      if (jsonStr.trim().isEmpty) {
        return const {'byStreamId': {}, 'byName': {}};
      }
      final decoded = json.decode(jsonStr) as Map<String, dynamic>;
      final byStreamId =
          Map<String, String>.from((decoded['byStreamId'] as Map? ?? const {}));
      final byName =
          Map<String, String>.from((decoded['byName'] as Map? ?? const {}));
      return {'byStreamId': byStreamId, 'byName': byName};
    } catch (e) {
      debugLog('ChannelProvider: loadXtreamEpgMap failed: $e');
      return const {'byStreamId': {}, 'byName': {}};
    }
  }

  Future<void> save(
    Map<String, String> byStreamId,
    Map<String, String> byName,
  ) async {
    try {
      final dir = await getApplicationSupportDirectory();
      final file = File('${dir.path}/$fileName');
      final payload = json.encode({
        'byStreamId': byStreamId,
        'byName': byName,
      });
      await file.writeAsString(payload);
    } catch (e) {
      debugLog('ChannelProvider: saveXtreamEpgMap failed: $e');
    }
  }

  static int applyToChannelMaps({
    required List<Map<String, dynamic>> channelMaps,
    required Map<String, String> byStreamId,
    required Map<String, String> byName,
    required String? Function(String url) extractStreamIdFromUrl,
  }) {
    if (byStreamId.isEmpty && byName.isEmpty) return 0;

    var mapped = 0;
    for (final map in channelMaps) {
      if ((map['tvgId'] as String?)?.isNotEmpty == true) continue;
      final url = (map['url'] as String?) ?? '';
      final name = (map['name'] as String?) ?? '';

      final streamIdFromUrl = extractStreamIdFromUrl(url);
      final normalizedName = IncrementalEpgService.normalizeForFilter(name);

      final epgId =
          (streamIdFromUrl != null ? byStreamId[streamIdFromUrl] : null) ??
              (normalizedName.isNotEmpty ? byName[normalizedName] : null) ??
              byName[name];
      if (epgId != null) {
        map['tvgId'] = epgId;
        mapped++;
      }
    }
    return mapped;
  }
}
