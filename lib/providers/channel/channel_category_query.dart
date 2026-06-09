import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/services/local_db_service.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'channel_cache_isolates.dart';
import 'channel_category_cache.dart';
import 'channel_query_service_deps.dart';

/// Category listing, grouping, and per-category channel queries.
class ChannelCategoryQuery {
  ChannelCategoryQuery(this._deps);

  final ChannelQueryServiceDeps _deps;

  void invalidateCategoryCaches() {
    _deps.setCachedCategories(null);
    _deps.setCategoryTitleCache(null);
    _deps.setChannelIdCache(null);
    _deps.setHiddenFlagCache(null);
    _deps.setCategoriesCompleter(null);
    _deps.categoryCache.invalidate();
  }

  List<String> getCategories() {
    final cached = _deps.getCachedCategories();
    if (cached != null) {
      if (cached.isNotEmpty || _deps.channelMaps.isEmpty) {
        return cached;
      }
      invalidateCategoryCaches();
    }
    final refreshed = _deps.getCachedCategories();
    if (refreshed != null) {
      return refreshed;
    }
    if (!_deps.categoryCache.prefsLoaded) {
      unawaited(loadCachedCategoriesFromPrefs());
    }
    if (_deps.getIsGroupingChannels()) {
      return [];
    }
    unawaited(computeCategoriesAsync());
    return [];
  }

  Future<List<Channel>> getChannelsForCategoryAsync(
    String category, {
    int offset = 0,
    int limit = 20,
  }) async {
    if (_deps.getDbReady()) {
      try {
        final rows = await _deps.db.getChannelsForCategoryPage(
          category,
          offset: offset,
          limit: limit,
        );
        if (rows.isNotEmpty) {
          return rows.map((m) => Channel.fromMap(m)).toList();
        }
        if (_deps.channelMaps.isNotEmpty) {
          final byIndex = filterByCategory(
            category,
            offset: offset,
            limit: limit,
          );
          if (byIndex.isNotEmpty) {
            return byIndex;
          }
          return scanCategoryFallback(
            category,
            offset: offset,
            limit: limit,
          );
        }
        return const [];
      } catch (e) {
        debugLog('ChannelProvider: DB category page failed: $e');
        _deps.handleDbError(e);
      }
    }

    final titles = categoryTitleCache();
    try {
      final indices = await compute(filterCategoryIndicesInIsolate, {
        'titles': titles,
        'category': category,
        'offset': offset,
        'limit': limit,
      });
      if (indices.isNotEmpty) {
        return indices.map(_deps.getChannelAt).toList();
      }
      if (_deps.channelMaps.isNotEmpty) {
        return scanCategoryFallback(
          category,
          offset: offset,
          limit: limit,
        );
      }
      return const [];
    } catch (e) {
      debugLog(
          'ChannelProvider: compute(filterCategoryIndicesInIsolate) failed: $e');
      if (_deps.channelMaps.isNotEmpty) {
        return scanCategoryFallback(
          category,
          offset: offset,
          limit: limit,
        );
      }
      return const [];
    }
  }

  Future<Map<String, List<Channel>>> getCategoryPreviewBatch(
    List<String> categories, {
    int limit = 20,
  }) async {
    if (categories.isEmpty) return {};
    if (_deps.getDbReady()) {
      try {
        final rowsByCategory = await _deps.db.getChannelsForCategoriesPage(
          categories,
          limit: limit,
        );
        final result = <String, List<Channel>>{};
        for (final category in categories) {
          final rows = rowsByCategory[category] ?? const [];
          result[category] = rows.map((m) => Channel.fromMap(m)).toList();
        }
        return result;
      } catch (e) {
        debugLog('ChannelProvider: DB category batch failed: $e');
        _deps.handleDbError(e);
      }
    }

    final result = <String, List<Channel>>{};
    for (final category in categories) {
      result[category] = await getChannelsForCategoryAsync(
        category,
        limit: limit,
      );
    }
    return result;
  }

  int countForCategory(String category) {
    final lowerCategory = category.toLowerCase();
    final cached = _deps.channelIndicesByGroup[lowerCategory];
    if (cached != null) return cached.length;
    if (_deps.channelMaps.isEmpty) return 0;

    final target = category.trim().isEmpty ? 'uncategorized' : category.trim();
    final targetLower = target.toLowerCase();
    var count = 0;
    for (final map in _deps.channelMaps) {
      if (map['isHidden'] == true) continue;
      final rawGroup = (map['groupTitle'] ?? '').toString().trim();
      final group = rawGroup.isEmpty ? 'uncategorized' : rawGroup;
      if (group.toLowerCase() == targetLower) count++;
    }
    return count;
  }

  Future<void> computeCategoriesAsync() async {
    if (_deps.getCachedCategories() != null || _deps.getIsGroupingChannels()) {
      return;
    }
    _deps.setIsGroupingChannels(true);
    _deps.setCategoriesCompleter(Completer<List<String>>());
    final start = DateTime.now();

    try {
      if (_deps.getDbReady() && _deps.db.isReady) {
        final dbStart = DateTime.now();
        try {
          _deps.setCachedCategories(ChannelCategoryCache.normalize(
            await _deps.db.getCategories(),
          ));
          debugLog(
              'ChannelProvider: Category DB load took ${DateTime.now().difference(dbStart).inMilliseconds}ms');
        } catch (e) {
          debugLog(
              'ChannelProvider: DB category load failed: $e, falling back to memory');
          _deps.setDbReady(false);
        }
        final cached = _deps.getCachedCategories();
        if ((cached?.isEmpty ?? true) && _deps.channelMaps.isNotEmpty) {
          final groupTitles = categoryTitleCache();
          final isolateStart = DateTime.now();
          _deps.setCachedCategories(ChannelCategoryCache.normalize(
              await compute(extractCategoriesInIsolate, groupTitles)));
          debugLog(
              'ChannelProvider: Category isolate compute took ${DateTime.now().difference(isolateStart).inMilliseconds}ms');
        }
        debugLog(
            'ChannelProvider: Loaded ${_deps.getCachedCategories()!.length} categories from DB');
      } else {
        final groupTitles = categoryTitleCache();
        final isolateStart = DateTime.now();
        _deps.setCachedCategories(ChannelCategoryCache.normalize(
            await compute(extractCategoriesInIsolate, groupTitles)));
        debugLog(
            'ChannelProvider: Category isolate compute took ${DateTime.now().difference(isolateStart).inMilliseconds}ms');
        debugLog(
            'ChannelProvider: Found ${_deps.getCachedCategories()!.length} categories from ${_deps.channelMaps.length} channels');
      }
    } catch (e) {
      debugLog('ChannelProvider: Error extracting categories: $e');
      _deps.setCachedCategories([]);
    }

    debugLog(
        'ChannelProvider: Category compute total ${DateTime.now().difference(start).inMilliseconds}ms');
    _deps.setIsGroupingChannels(false);
    final completer = _deps.getCategoriesCompleter();
    if (completer != null && !completer.isCompleted) {
      completer.complete(_deps.getCachedCategories() ?? []);
    }
    unawaited(persistCachedCategories());
    _deps.notifyListenersSafe();
  }

  Future<List<String>> getAllCategoryNamesAsync() async {
    final cached = _deps.getCachedCategories();
    if (cached != null) {
      if (cached.isNotEmpty || _deps.channelMaps.isEmpty) {
        return cached;
      }
      invalidateCategoryCaches();
    }
    if (!_deps.categoryCache.prefsLoaded) {
      await loadCachedCategoriesFromPrefs();
      final loaded = _deps.getCachedCategories();
      if (loaded != null && loaded.isNotEmpty) {
        return loaded;
      }
    }
    final completer = _deps.getCategoriesCompleter();
    if (completer != null) {
      return completer.future;
    }
    unawaited(computeCategoriesAsync());
    final pending = _deps.getCategoriesCompleter();
    if (pending != null) {
      return pending.future;
    }
    return [];
  }

  List<String> getAllCategoryNames() {
    return _deps.getCachedCategories() ?? getCategories();
  }

  Map<String, List<Channel>> getGroupedChannels() {
    final categories = getCategories();
    if (categories.isEmpty) return {};

    final result = <String, List<Channel>>{};
    final visibleCategories = categories.take(15).toList();
    for (final category in visibleCategories) {
      result[category] = [];
    }

    if (_deps.channelMaps.isEmpty) return result;

    int filledCategories = 0;
    for (int i = 0; i < _deps.channelMaps.length; i++) {
      final channelMap = _deps.channelMaps[i];
      final channelCategory =
          (channelMap['groupTitle'] as String?) ?? 'Uncategorized';
      final bucket = result[channelCategory];
      if (bucket == null) continue;
      if (bucket.length >= 30) continue;
      bucket.add(_deps.getChannelAt(i));
      if (bucket.length == 30) {
        filledCategories++;
        if (filledCategories >= visibleCategories.length) {
          break;
        }
      }
    }

    return result;
  }

  List<Channel> filterByCategory(
    String category, {
    int offset = 0,
    int limit = 100,
  }) {
    final result = <Channel>[];
    final lowerCategory = category.toLowerCase();
    final indices = _deps.channelIndicesByGroup[lowerCategory] ?? const [];
    for (int i = offset; i < indices.length && result.length < limit; i++) {
      result.add(_deps.getChannelAt(indices[i]));
    }
    return result;
  }

  List<Channel> scanCategoryFallback(
    String category, {
    int offset = 0,
    int limit = 20,
  }) {
    if (limit <= 0 || _deps.channelMaps.isEmpty) return const [];
    final target = category.trim().isEmpty ? 'uncategorized' : category.trim();
    final targetLower = target.toLowerCase();
    final result = <Channel>[];
    int matched = 0;
    for (int i = 0; i < _deps.channelMaps.length; i++) {
      final map = _deps.channelMaps[i];
      if (map['isHidden'] == true) continue;
      final rawGroup = (map['groupTitle'] ?? '').toString().trim();
      final group = rawGroup.isEmpty ? 'uncategorized' : rawGroup;
      if (group.toLowerCase() != targetLower) continue;
      if (matched < offset) {
        matched++;
        continue;
      }
      result.add(_deps.getChannelAt(i));
      matched++;
      if (result.length >= limit) break;
    }
    return result;
  }

  Future<void> loadCachedCategoriesFromPrefs() async {
    if (_deps.categoryCache.prefsLoaded || _deps.categoryCache.key == null) {
      return;
    }
    try {
      final prefs = await SharedPreferences.getInstance();
      final cached = await _deps.categoryCache.loadFromPrefs(prefs);
      if (cached != null && cached.isNotEmpty) {
        _deps.setCachedCategories(cached);
        _deps.notifyListenersSafe();
      }
    } catch (e) {
      debugLog('ChannelProvider: Failed to load cached categories: $e');
    }
  }

  Future<void> persistCachedCategories() async {
    final cached = _deps.getCachedCategories();
    if (_deps.categoryCache.key == null || cached == null) return;
    try {
      final prefs = await SharedPreferences.getInstance();
      await _deps.categoryCache.saveToPrefs(prefs, cached);
    } catch (e) {
      debugLog('ChannelProvider: Failed to persist cached categories: $e');
    }
  }

  List<String?> categoryTitleCache() {
    var cache = _deps.getCategoryTitleCache();
    if (cache == null || cache.length != _deps.channelMaps.length) {
      cache = _deps.channelMaps.map((m) => m['groupTitle'] as String?).toList();
      _deps.setCategoryTitleCache(cache);
    }
    return cache;
  }

  List<String?> channelIdCache() {
    var cache = _deps.getChannelIdCache();
    if (cache == null || cache.length != _deps.channelMaps.length) {
      cache = _deps.channelMaps.map((m) => m['id'] as String?).toList();
      _deps.setChannelIdCache(cache);
    }
    return cache;
  }

  List<bool> hiddenFlagCache() {
    var cache = _deps.getHiddenFlagCache();
    if (cache == null || cache.length != _deps.channelMaps.length) {
      cache = _deps.channelMaps
          .map((m) => m['isHidden'] == true)
          .toList(growable: false);
      _deps.setHiddenFlagCache(cache);
    }
    return cache;
  }
}
