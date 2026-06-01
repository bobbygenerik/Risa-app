import 'dart:collection';

import 'package:iptv_player/models/channel.dart';

class LiveTvCategoryState {
  final Map<String, List<Channel>> channelCache = {};
  final Set<String> channelLoading = {};
  final List<String> names = [];
  final Set<String> nameSet = {};
  final Queue<String> loadQueue = Queue<String>();
  final Map<String, int> offsets = {};
  final Map<String, bool> hasMore = {};
  final Set<String> appendQueue = {};

  bool loading = false;
  bool prefetchRequested = false;
  int visibleCount = 10;
  int activeLoads = 0;
  int lastPrefetchAnchor = -1;

  void replaceNames(List<String> nextNames) {
    names
      ..clear()
      ..addAll(nextNames);
    nameSet
      ..clear()
      ..addAll(nextNames);
  }

  void clearLoadedRows() {
    channelCache.clear();
    offsets.clear();
    hasMore.clear();
  }

  void purgeExcept(Set<String> keep) {
    channelCache.removeWhere((key, _) => !keep.contains(key));
    offsets.removeWhere((key, _) => !keep.contains(key));
    hasMore.removeWhere((key, _) => !keep.contains(key));
    channelLoading.removeWhere((key) => !keep.contains(key));
    loadQueue.removeWhere((key) => !keep.contains(key));
    appendQueue.removeWhere((key) => !keep.contains(key));
  }

  void clearForPlayback() {
    channelCache.clear();
  }
}
