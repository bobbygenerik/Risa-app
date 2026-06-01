import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'channel_access_deps.dart';

/// Channel lookup, navigation, favorites, watch counts, and category fallbacks.
class ChannelAccess {
  ChannelAccess(this.deps);

  final ChannelAccessDeps deps;

  Channel getChannelAt(int index) {
    if (index < 0 || index >= deps.channelMaps.length) {
      throw RangeError.index(index, deps.channelMaps, 'index');
    }

    final wasInCache = deps.channelCache.containsKey(index);

    final channel = deps.channelCache.putIfAbsent(index, () {
      return Channel.fromMap(deps.channelMaps[index]);
    });

    if (!wasInCache && deps.channelCache.length % 500 == 0) {
      debugLog('ChannelProvider: Channel cache size: ${deps.channelCache.length}');
    }

    return channel;
  }

  List<Map<String, dynamic>> getChannelMapsForUI({int limit = 50}) {
    final actualLimit =
        deps.channelMaps.length < limit ? deps.channelMaps.length : limit;
    return deps.channelMaps.take(actualLimit).toList();
  }

  List<Map<String, dynamic>> getChannelMapsForCategory(
    String category, {
    int limit = 50,
  }) {
    final result = <Map<String, dynamic>>[];
    final lowerCategory = category.toLowerCase();
    final indices = deps.channelIndicesByGroup[lowerCategory] ?? const [];
    for (final i in indices) {
      if (result.length >= limit) break;
      result.add(deps.channelMaps[i]);
    }
    return result;
  }

  Channel? getChannelById(String id) {
    final index = deps.channelIndexById[id];
    if (index != null) {
      return getChannelAt(index);
    }
    return null;
  }

  Channel? getNextChannel(String currentChannelId) {
    for (int i = 0; i < deps.channelMaps.length; i++) {
      if (deps.channelMaps[i]['id'] == currentChannelId) {
        final nextIndex = (i + 1) % deps.channelMaps.length;
        return getChannelAt(nextIndex);
      }
    }
    return null;
  }

  Channel? getPreviousChannel(String currentChannelId) {
    for (int i = 0; i < deps.channelMaps.length; i++) {
      if (deps.channelMaps[i]['id'] == currentChannelId) {
        final prevIndex =
            (i - 1 + deps.channelMaps.length) % deps.channelMaps.length;
        return getChannelAt(prevIndex);
      }
    }
    return null;
  }

  List<Channel> get mostWatchedChannels {
    final indices = List.generate(deps.channelMaps.length, (i) => i);
    indices.sort((a, b) {
      final aId = deps.channelMaps[a]['id'] as String? ?? '';
      final bId = deps.channelMaps[b]['id'] as String? ?? '';
      final aCount = deps.watchCounts[aId] ?? 0;
      final bCount = deps.watchCounts[bId] ?? 0;
      return bCount.compareTo(aCount);
    });
    return indices.take(50).map((i) => getChannelAt(i)).toList();
  }

  Future<void> incrementWatchCount(String channelId) async {
    deps.watchCounts[channelId] = (deps.watchCounts[channelId] ?? 0) + 1;
    // Persist only — notifyListeners during playback OOMs/ANRs on Android TV.

    unawaited((() async {
      final prefs = await SharedPreferences.getInstance();
      final watchCountsJson =
          deps.watchCounts.map((k, v) => MapEntry(k, v.toString()));
      await prefs.setString(
          'channel_watch_counts', json.encode(watchCountsJson));
    })());
  }

  Future<void> loadWatchCounts() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final watchCountsString = prefs.getString('channel_watch_counts');
      if (watchCountsString != null && watchCountsString.trim().isNotEmpty) {
        final decoded = json.decode(watchCountsString) as Map<String, dynamic>;
        deps.watchCounts
          ..clear()
          ..addAll(
            decoded.map(
              (k, v) => MapEntry(k, int.tryParse(v.toString()) ?? 0),
            ),
          );
      }
    } catch (e) {
      debugLog('Error loading watch counts: $e');
    }
  }

  void addToFavorites(Channel channel) {
    if (!deps.favoriteChannels.contains(channel)) {
      deps.favoriteChannels.add(channel);
      deps.notifyListeners();
    }
  }

  void removeFromFavorites(Channel channel) {
    deps.favoriteChannels.remove(channel);
    deps.notifyListeners();
  }

  bool isFavorite(Channel channel) {
    return deps.favoriteChannels.any((c) => c.id == channel.id);
  }

  int getChannelCountForCategory(String category) {
    final lowerCategory = category.toLowerCase();
    final cached = deps.channelIndicesByGroup[lowerCategory];
    if (cached != null) return cached.length;
    if (deps.channelMaps.isNotEmpty) {
      return _scanCategoryCountFallback(category);
    }
    return 0;
  }

  Channel? getChannelInCategoryAtIndex(String category, int index) {
    final lowerCategory = category.toLowerCase();
    final indices = deps.channelIndicesByGroup[lowerCategory];
    if (indices == null ||
        index < 0 ||
        index >= indices.length ||
        indices[index] < 0 ||
        indices[index] >= deps.channelMaps.length) {
      if (deps.channelMaps.isNotEmpty) {
        return _scanChannelInCategoryAtIndexFallback(category, index);
      }
      return null;
    }
    return getChannelAt(indices[index]);
  }

  Future<bool> restoreChannelsFromPrefsCache({
    required SharedPreferences prefs,
    String? playlistUrl,
    String? epgUrl,
    String? reason,
  }) async {
    final cachedJson = prefs.getString('flutter.cached_playlist') ??
        prefs.getString('cached_playlist');
    if (cachedJson == null || cachedJson.trim().isEmpty) {
      return false;
    }

    try {
      final decoded = await compute(jsonDecode, cachedJson) as List<dynamic>;
      if (decoded.isEmpty) {
        return false;
      }

      final restored = <Map<String, dynamic>>[];
      for (final item in decoded) {
        if (item is Map) {
          restored.add(Map<String, dynamic>.from(item));
        }
      }
      if (restored.isEmpty) {
        return false;
      }

      deps.channelMaps
        ..clear()
        ..addAll(restored);
      deps.clearChannelCache();
      await deps.rebuildChannelCachesAsync();
      deps.setChannelCountDb(deps.channelMaps.length);

      await deps.setCurrentEpgMapSignature(
        prefs: prefs,
        playlistUrl: playlistUrl,
        epgUrl: epgUrl,
        channelCount: deps.channelMaps.length,
      );

      deps.invalidateCategoryCaches();
      unawaited(deps.computeCategoriesAsync());
      deps.updateEpgAllowedChannels();
      deps.refreshSmartChannelCache();

      deps.setIsLoading(false);
      deps.setIsColdStartLoad(false);
      deps.setHasLoadedPlaylist(true);
      deps.setNoPlaylistConfigured(false);
      deps.notifyListeners();
      deps.scheduleEpgRefresh(forceRefresh: false);

      final reasonSuffix =
          (reason == null || reason.isEmpty) ? '' : ' ($reason)';
      debugLog(
          'ChannelProvider: Restored ${deps.channelMaps.length} channels from SharedPreferences cache$reasonSuffix');
      return true;
    } catch (e) {
      debugLog(
          'ChannelProvider: Failed to restore channels from SharedPreferences cache: $e');
      return false;
    }
  }

  int _scanCategoryCountFallback(String category) {
    if (deps.channelMaps.isEmpty) return 0;
    final target =
        category.trim().isEmpty ? 'uncategorized' : category.trim();
    final targetLower = target.toLowerCase();
    var count = 0;
    for (final map in deps.channelMaps) {
      if (map['isHidden'] == true) continue;
      final rawGroup = (map['groupTitle'] ?? '').toString().trim();
      final group = rawGroup.isEmpty ? 'uncategorized' : rawGroup;
      if (group.toLowerCase() == targetLower) {
        count++;
      }
    }
    return count;
  }

  Channel? _scanChannelInCategoryAtIndexFallback(
    String category,
    int index,
  ) {
    if (deps.channelMaps.isEmpty || index < 0) return null;
    final target =
        category.trim().isEmpty ? 'uncategorized' : category.trim();
    final targetLower = target.toLowerCase();
    var matched = 0;
    for (int i = 0; i < deps.channelMaps.length; i++) {
      final map = deps.channelMaps[i];
      if (map['isHidden'] == true) continue;
      final rawGroup = (map['groupTitle'] ?? '').toString().trim();
      final group = rawGroup.isEmpty ? 'uncategorized' : rawGroup;
      if (group.toLowerCase() != targetLower) continue;
      if (matched == index) {
        return getChannelAt(i);
      }
      matched++;
    }
    return null;
  }
}
