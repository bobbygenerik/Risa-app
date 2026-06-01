import 'package:flutter/foundation.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/services/local_db_service.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/utils/debug_helper.dart';

import 'channel_cache_isolates.dart';
import 'channel_category_query.dart';
import 'channel_epg_integration.dart';
import 'channel_query_service_deps.dart';

/// Channel query, filter, search, and EPG match stats.
class ChannelQueryService {
  ChannelQueryService(this._deps) : _categories = ChannelCategoryQuery(_deps);

  final ChannelQueryServiceDeps _deps;
  final ChannelCategoryQuery _categories;

  void invalidateCategoryCaches() => _categories.invalidateCategoryCaches();

  Future<int> getChannelCountAsync() async {
    if (!_deps.getDbReady() && !_deps.getDbDisabled()) {
      try {
        await _deps.ensureDb();
      } catch (e) {
        debugLog(
            'ChannelProvider: ensureDb in getChannelCountAsync failed: $e');
      }
    }
    if (_deps.getDbReady()) {
      try {
        final dbCount = await _deps.db.channelCount();
        var channelCountDb = dbCount;
        if (_deps.channelMaps.isNotEmpty &&
            channelCountDb < _deps.channelMaps.length) {
          channelCountDb = _deps.channelMaps.length;
        }
        _deps.setChannelCountDb(channelCountDb);
        return channelCountDb;
      } catch (e) {
        debugLog('ChannelProvider: DB channel count failed: $e');
        _deps.handleDbError(e);
      }
    }
    return _deps.channelMaps.length;
  }

  Future<List<Channel>> getChannelsPage({
    int offset = 0,
    int limit = 50,
  }) async {
    if (_deps.getDbReady()) {
      try {
        final rows =
            await _deps.db.getChannelsPage(offset: offset, limit: limit);
        if (rows.isNotEmpty) {
          return rows.map((m) => Channel.fromMap(m)).toList();
        }
        if (_deps.channelMaps.isNotEmpty) {
          final slice = _deps.channelMaps.skip(offset).take(limit).toList();
          return slice.map((m) => Channel.fromMap(m)).toList();
        }
        return const [];
      } catch (e) {
        debugLog('ChannelProvider: DB channel page failed: $e');
        _deps.handleDbError(e);
      }
    }

    final slice = _deps.channelMaps.skip(offset).take(limit).toList();
    return slice.map((m) => Channel.fromMap(m)).toList();
  }

  Future<Map<String, List<Channel>>> getGroupedChannelsAsync({
    int categoryLimit = 15,
    int channelLimit = 30,
  }) async {
    if (_deps.getDbReady()) {
      try {
        final categories =
            await _deps.db.getCategories(limit: categoryLimit);
        final result = <String, List<Channel>>{};
        if (categories.isNotEmpty) {
          final rowsByCategory = await _deps.db.getChannelsForCategoriesPage(
            categories,
            offset: 0,
            limit: channelLimit,
          );
          for (final c in categories) {
            final rows = rowsByCategory[c] ?? const [];
            result[c] = rows.map((m) => Channel.fromMap(m)).toList();
          }
        }
        return result;
      } catch (e) {
        debugLog('ChannelProvider: DB grouped channels failed: $e');
        _deps.handleDbError(e);
      }
    }

    return getGroupedChannels();
  }

  List<Channel> getFilteredChannels({
    String? category,
    Set<String>? favoriteIds,
    bool excludeHidden = true,
    int limit = 500,
  }) {
    final result = <Channel>[];
    final lowerCategory = category?.toLowerCase();
    Iterable<int> indices;

    if (lowerCategory != null) {
      final grouped = _deps.channelIndicesByGroup[lowerCategory];
      if ((grouped == null || grouped.isEmpty) &&
          _deps.channelMaps.isNotEmpty) {
        return _categories.scanCategoryFallback(
          category!,
          offset: 0,
          limit: limit,
        );
      }
      indices = grouped ?? const [];
    } else {
      indices = Iterable<int>.generate(_deps.channelMaps.length);
    }

    for (final i in indices) {
      if (excludeHidden &&
          i < _deps.channelMaps.length &&
          _deps.channelMaps[i]['isHidden'] == true) {
        continue;
      }
      if (favoriteIds != null) {
        final channelId = _deps.channelMaps[i]['id'] as String?;
        if (channelId == null || !favoriteIds.contains(channelId)) {
          continue;
        }
      }
      if (result.length >= limit) break;
      result.add(_deps.getChannelAt(i));
    }
    return result;
  }

  Future<List<Channel>> getFilteredChannelsAsync({
    String? category,
    Set<String>? favoriteIds,
    bool excludeHidden = true,
    int limit = 500,
    int offset = 0,
  }) async {
    if (!_deps.getDbReady() || favoriteIds != null) {
      try {
        final indices = await compute(filterChannelIndicesInIsolate, {
          'titles': _categories.categoryTitleCache(),
          'ids': _categories.channelIdCache(),
          'hidden': _categories.hiddenFlagCache(),
          'category': category,
          'favoriteIds': favoriteIds?.toList() ?? const [],
          'excludeHidden': excludeHidden,
          'limit': limit,
          'offset': offset,
        });
        if (indices.isEmpty) return const [];
        return indices.map(_deps.getChannelAt).toList();
      } catch (e) {
        debugLog(
            'ChannelProvider: compute(filterChannelIndicesInIsolate) failed: $e');
        return const [];
      }
    }

    if (category != null) {
      return getChannelsForCategoryAsync(
        category,
        offset: offset,
        limit: limit,
      );
    }

    try {
      final rows =
          await _deps.db.getChannelsPage(offset: offset, limit: limit);
      final result = <Channel>[];
      for (final m in rows) {
        if (excludeHidden && m['isHidden'] == true) continue;
        result.add(Channel.fromMap(m));
      }
      return result;
    } catch (e) {
      debugLog('ChannelProvider: DB filtered fetch failed: $e');
      return getFilteredChannels(
        category: category,
        favoriteIds: favoriteIds,
        excludeHidden: excludeHidden,
        limit: limit,
      );
    }
  }

  List<String> getCategories() => _categories.getCategories();

  Future<List<Channel>> getChannelsForCategoryAsync(
    String category, {
    int offset = 0,
    int limit = 20,
  }) =>
      _categories.getChannelsForCategoryAsync(
        category,
        offset: offset,
        limit: limit,
      );

  Future<Map<String, List<Channel>>> getCategoryPreviewBatch(
    List<String> categories, {
    int limit = 20,
  }) =>
      _categories.getCategoryPreviewBatch(categories, limit: limit);

  Future<void> computeCategoriesAsync() => _categories.computeCategoriesAsync();

  Future<List<String>> getAllCategoryNamesAsync() =>
      _categories.getAllCategoryNamesAsync();

  List<String> getAllCategoryNames() => _categories.getAllCategoryNames();

  Map<String, List<Channel>> getGroupedChannels() =>
      _categories.getGroupedChannels();

  List<Channel> searchChannels(String query, {int limit = 50}) {
    if (query.isEmpty) return _deps.getChannelPreview();

    if (_deps.getDbReady()) {
      debugLog(
          'ChannelProvider: searchChannels called while DB ready; consider using searchChannelsAsync');
    }

    final lowerQuery = query.toLowerCase();
    final result = <Channel>[];
    for (int i = 0;
        i < _deps.channelMaps.length && result.length < limit;
        i++) {
      if (i < _deps.channelLowerNames.length &&
          _deps.channelLowerNames[i].contains(lowerQuery)) {
        result.add(_deps.getChannelAt(i));
      }
    }
    return result;
  }

  Future<List<Channel>> searchChannelsAsync(
    String query, {
    int limit = 100,
  }) async {
    if (query.isEmpty) return _deps.getChannelPreview();
    if (_deps.getDbReady()) {
      try {
        final rows = await _deps.db.searchChannels(query, limit: limit);
        return rows.map((m) => Channel.fromMap(m)).toList();
      } catch (e) {
        debugLog('ChannelProvider: DB search failed: $e');
      }
    }
    return searchChannels(query, limit: limit);
  }

  List<Channel> filterByCategory(
    String category, {
    int offset = 0,
    int limit = 100,
  }) =>
      _categories.filterByCategory(category, offset: offset, limit: limit);

  List<Channel> scanCategoryFallback(
    String category, {
    int offset = 0,
    int limit = 20,
  }) =>
      _categories.scanCategoryFallback(
        category,
        offset: offset,
        limit: limit,
      );

  Future<Map<String, int>> computeEpgMatchStats(
    IncrementalEpgService epgService, {
    int? maxChannels,
  }) async {
    final total = _deps.channelMaps.length;
    final cappedTotal =
        maxChannels != null && maxChannels > 0 && maxChannels < total
            ? maxChannels
            : total;

    if (cappedTotal == 0 || epgService.availableChannels.isEmpty) {
      return {'matched': 0, 'scanned': cappedTotal, 'total': total};
    }

    int matched = 0;
    for (int i = 0; i < cappedTotal; i++) {
      final map = _deps.channelMaps[i];
      final tvgId = (map['tvgId'] as String?)?.trim() ?? '';
      final id = (map['id'] as String?)?.trim() ?? '';
      final url = (map['url'] as String?)?.trim() ?? '';
      final channelId = tvgId.isNotEmpty ? tvgId : (id.isNotEmpty ? id : url);
      final channelNameForLookup = (ChannelEpgIntegration
                  .extractTvgNameFromAttributes(map['attributes']) ??
              (map['name'] as String?) ??
              '')
          .trim();

      if (channelId.isNotEmpty &&
          epgService.hasEpgMatch(
            channelId,
            channelName: channelNameForLookup.isNotEmpty
                ? channelNameForLookup
                : null,
          )) {
        matched++;
      }

      if (i % 400 == 0) {
        await Future.delayed(Duration.zero);
      }
    }

    return {'matched': matched, 'scanned': cappedTotal, 'total': total};
  }

  Future<void> loadCachedCategoriesFromPrefs() =>
      _categories.loadCachedCategoriesFromPrefs();
}
