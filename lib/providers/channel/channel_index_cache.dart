import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/foundation.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/services/smart_cache_service.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/utils/hash_utils.dart';

import 'channel_cache_isolates.dart';
import 'channel_index_cache_deps.dart';

/// Channel index maps, group lookups, and smart-cache refresh.
class ChannelIndexCache {
  ChannelIndexCache(this.deps);

  final ChannelIndexCacheDeps deps;

  void buildIndicesForChunk(List<Map<String, dynamic>> chunk, int startIndex) {
    for (var i = 0; i < chunk.length; i++) {
      final map = chunk[i];
      final absIndex = startIndex + i;
      final id = (map['id'] ?? '').toString();
      if (id.isNotEmpty) {
        deps.channelIndexById[id] = absIndex;
      }

      final name = (map['name'] as String?) ?? '';
      deps.channelLowerNames.add(name.toLowerCase());

      final rawGroup = (map['groupTitle'] ?? '').toString();
      final group = rawGroup.trim().toLowerCase();
      deps.channelLowerGroups.add(group);

      final groupKey = group.isNotEmpty ? group : 'uncategorized';
      (deps.channelIndicesByGroup[groupKey] ??= []).add(absIndex);
    }
  }

  void rebuildChannelCachesSync() {
    deps.channelIndexById.clear();
    deps.channelIndicesByGroup.clear();
    deps.channelLowerNames
      ..clear()
      ..addAll(List<String>.filled(deps.channelMaps.length, ''));
    deps.channelLowerGroups
      ..clear()
      ..addAll(List<String>.filled(deps.channelMaps.length, ''));
    for (int i = 0; i < deps.channelMaps.length; i++) {
      final map = deps.channelMaps[i];
      final id = (map['id'] ?? '').toString();
      if (id.isNotEmpty) {
        deps.channelIndexById[id] = i;
      }
      final name = (map['name'] as String?) ?? '';
      deps.channelLowerNames[i] = name.toLowerCase();
      final rawGroup = (map['groupTitle'] ?? '').toString();
      final group = rawGroup.trim().toLowerCase();
      deps.channelLowerGroups[i] = group;
      final groupKey = group.isNotEmpty ? group : 'uncategorized';
      (deps.channelIndicesByGroup[groupKey] ??= []).add(i);
    }
  }

  Future<void> rebuildChannelCachesAsync() async {
    if (deps.channelMaps.length < 1000) {
      rebuildChannelCachesSync();
      return;
    }

    final start = DateTime.now();
    try {
      final result =
          await compute(rebuildChannelCachesInIsolate, deps.channelMaps);
      deps.channelIndexById.clear();
      deps.channelIndexById.addAll(
        Map<String, int>.from(result['indexById'] as Map),
      );
      deps.channelIndicesByGroup.clear();
      deps.channelIndicesByGroup.addAll(
        (result['indicesByGroup'] as Map).map(
          (k, v) => MapEntry(k as String, List<int>.from(v as List)),
        ),
      );
      deps.channelLowerNames.clear();
      deps.channelLowerNames.addAll(
        List<String>.from(result['lowerNames'] as List),
      );
      deps.channelLowerGroups.clear();
      deps.channelLowerGroups.addAll(
        List<String>.from(result['lowerGroups'] as List),
      );
      debugLog(
          'ChannelProvider: Async cache rebuild took ${DateTime.now().difference(start).inMilliseconds}ms');
    } catch (e) {
      debugLog(
          'ChannelProvider: Async cache rebuild failed, falling back to sync: $e');
      rebuildChannelCachesSync();
    }
  }

  void refreshSmartChannelCache({bool allowConversion = true}) {
    if (deps.channelMaps.isEmpty) return;
    unawaited(() async {
      try {
        final smartCache = SmartCacheService.instance;
        if (allowConversion && deps.channelMaps.length <= 5000) {
          final channels =
              deps.channelMaps.map((m) => Channel.fromMap(m)).toList();
          await smartCache.cacheChannelData(channels, overwriteDb: false);
        } else {
          final signature = signatureFromChannelMaps(deps.channelMaps);
          await smartCache.markChannelCacheFresh(
            channelCount: deps.channelMaps.length,
            signature: signature,
          );
        }
      } catch (e) {
        debugLog('ChannelProvider: Smart cache refresh failed: $e');
      }
    }());
  }

  String signatureFromChannelMaps(List<Map<String, dynamic>> maps) {
    if (maps.isEmpty) return 'empty';
    final sampleCount = math.min(4, maps.length);
    final buffer = StringBuffer()..write('count:${maps.length}');
    for (var i = 0; i < sampleCount; i++) {
      final m = maps[i];
      buffer
        ..write('|')
        ..write(m['id'] ?? '')
        ..write(':')
        ..write(m['name'] ?? '');
    }
    final last = maps.last;
    buffer
      ..write('|last:')
      ..write(last['id'] ?? '')
      ..write(':')
      ..write(last['name'] ?? '');
    return fnv1aHex(buffer.toString());
  }
}
