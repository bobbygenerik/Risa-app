import 'dart:async';

import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/services/local_db_service.dart';

import 'channel_category_cache.dart';

/// Callbacks bridging [ChannelQueryService] and [ChannelProvider] state.
class ChannelQueryServiceDeps {
  const ChannelQueryServiceDeps({
    required this.channelMaps,
    required this.channelIndicesByGroup,
    required this.channelLowerNames,
    required this.categoryCache,
    required this.db,
    required this.getDbReady,
    required this.setDbReady,
    required this.getDbDisabled,
    required this.getChannelCountDb,
    required this.setChannelCountDb,
    required this.getCachedCategories,
    required this.setCachedCategories,
    required this.getCategoryTitleCache,
    required this.setCategoryTitleCache,
    required this.getChannelIdCache,
    required this.setChannelIdCache,
    required this.getHiddenFlagCache,
    required this.setHiddenFlagCache,
    required this.getCategoriesCompleter,
    required this.setCategoriesCompleter,
    required this.getIsGroupingChannels,
    required this.setIsGroupingChannels,
    required this.ensureDb,
    required this.handleDbError,
    required this.getChannelAt,
    required this.getChannelPreview,
    required this.notifyListenersSafe,
  });

  final List<Map<String, dynamic>> channelMaps;
  final Map<String, List<int>> channelIndicesByGroup;
  final List<String> channelLowerNames;
  final ChannelCategoryCache categoryCache;
  final LocalDbService db;

  final bool Function() getDbReady;
  final void Function(bool value) setDbReady;
  final bool Function() getDbDisabled;
  final int Function() getChannelCountDb;
  final void Function(int value) setChannelCountDb;

  final List<String>? Function() getCachedCategories;
  final void Function(List<String>? value) setCachedCategories;

  final List<String?>? Function() getCategoryTitleCache;
  final void Function(List<String?>? value) setCategoryTitleCache;
  final List<String?>? Function() getChannelIdCache;
  final void Function(List<String?>? value) setChannelIdCache;
  final List<bool>? Function() getHiddenFlagCache;
  final void Function(List<bool>? value) setHiddenFlagCache;

  final Completer<List<String>>? Function() getCategoriesCompleter;
  final void Function(Completer<List<String>>? value) setCategoriesCompleter;

  final bool Function() getIsGroupingChannels;
  final void Function(bool value) setIsGroupingChannels;

  final Future<void> Function() ensureDb;
  final void Function(Object error) handleDbError;
  final Channel Function(int index) getChannelAt;
  final List<Channel> Function() getChannelPreview;
  final void Function() notifyListenersSafe;
}
