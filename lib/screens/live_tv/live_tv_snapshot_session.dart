import 'dart:async';

import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/screens/live_tv/category_state.dart';
import 'package:iptv_player/screens/live_tv/live_tv_category_coordinator.dart';
import 'package:iptv_player/screens/live_tv/live_tv_snapshot_store.dart';
import 'package:iptv_player/screens/live_tv/timer_manager.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';

/// Cold-start snapshot load/save for Live TV.
class LiveTvSnapshotSession {
  LiveTvSnapshotSession({
    required this.categoryState,
    required this.categoryCoordinator,
    required this.timerManager,
    required this.isMounted,
    required this.requestRebuild,
    required this.getChannelProvider,
    required this.getEpgService,
    required this.onPrefetchRowArtwork,
  });

  final LiveTvCategoryState categoryState;
  final LiveTvCategoryCoordinator categoryCoordinator;
  final LiveTvTimerManager timerManager;
  final bool Function() isMounted;
  final void Function() requestRebuild;
  final ChannelProvider Function() getChannelProvider;
  final IncrementalEpgService Function() getEpgService;
  final void Function(List<Channel> channels, {int limit}) onPrefetchRowArtwork;

  bool applied = false;

  Future<void> load() async {
    if (applied) return;
    final data = await LiveTvSnapshotStore.load();
    if (data == null || !isMounted()) return;

    applied = true;
    LiveTvSnapshotStore.applyToCategoryState(data, categoryState);

    if (isMounted()) {
      requestRebuild();
    }
    if (data.programSnapshot.isNotEmpty) {
      getEpgService().applyProgramSnapshot(data.programSnapshot);
    }
    if (isMounted()) {
      final providerCategories = getChannelProvider().getAllCategoryNames();
      if (providerCategories.isNotEmpty) {
        for (final name in providerCategories) {
          if (categoryState.nameSet.add(name)) {
            categoryState.names.add(name);
          }
        }
        if (categoryState.names.length > categoryState.visibleCount) {
          categoryState.visibleCount = categoryState.names.length;
          requestRebuild();
        }
      }
    }
    unawaited(categoryCoordinator.prefetchInitialRows(force: true));
  }

  void scheduleSave() {
    timerManager.debounce(
      'snapshotSave',
      const Duration(seconds: 10),
      () {
        if (isMounted()) unawaited(save());
      },
    );
  }

  Future<void> save() async {
    if (!isMounted()) return;
    final provider = getChannelProvider();
    await LiveTvSnapshotStore.save(
      categoryState: categoryState,
      epgService: getEpgService(),
      channelCount: provider.channelCount,
      onPrefetchRow: onPrefetchRowArtwork,
    );
  }
}
