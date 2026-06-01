import 'dart:async';

import 'package:flutter/scheduler.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/screens/live_tv/category_state.dart';
import 'package:iptv_player/screens/live_tv/live_tv_category_coordinator.dart';

/// Tracks skeleton visibility and recovers when loading stalls.
class LiveTvSkeletonController {
  LiveTvSkeletonController({
    required this.isMounted,
    required this.requestRebuild,
    required this.getChannelProvider,
    required this.getCategoryCoordinator,
    required this.getCategoryState,
  });

  final bool Function() isMounted;
  final void Function() requestRebuild;
  final ChannelProvider Function() getChannelProvider;
  final LiveTvCategoryCoordinator Function() getCategoryCoordinator;
  final LiveTvCategoryState Function() getCategoryState;

  static const Duration stuckThreshold = Duration(seconds: 35);
  static const Duration watchInterval = Duration(seconds: 3);

  /// Survives Live TV remounts when shell routes swap children.
  static bool sessionHasShownContent = false;

  bool isVisible = false;
  bool hasShownContent = false;

  bool get hasShownContentEver =>
      hasShownContent || sessionHasShownContent;
  bool recoveryInFlight = false;
  DateTime? shownAt;
  DateTime? lastRecoveryAttempt;
  Timer? _watchdog;

  void markVisibility(bool showing) {
    if (isVisible == showing) return;
    isVisible = showing;
    if (showing) {
      shownAt ??= DateTime.now();
      _startWatchdog();
      return;
    }
    hasShownContent = true;
    sessionHasShownContent = true;
    shownAt = null;
    recoveryInFlight = false;
    _stopWatchdog();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (!isMounted()) return;
      requestRebuild();
    });
  }

  void _startWatchdog() {
    if (_watchdog != null) return;
    _watchdog = Timer.periodic(watchInterval, (_) => _checkStuck());
  }

  void _stopWatchdog() {
    _watchdog?.cancel();
    _watchdog = null;
  }

  void _checkStuck() {
    if (!isMounted() || !isVisible) return;
    final at = shownAt;
    if (at == null) return;
    if (DateTime.now().difference(at) < stuckThreshold) return;
    unawaited(triggerRecovery());
  }

  Future<void> triggerRecovery({bool userInitiated = false}) async {
    if (!isMounted() || recoveryInFlight) return;
    final now = DateTime.now();
    if (!userInitiated &&
        lastRecoveryAttempt != null &&
        now.difference(lastRecoveryAttempt!) < const Duration(seconds: 12)) {
      return;
    }
    recoveryInFlight = true;
    lastRecoveryAttempt = now;
    try {
      final channelProvider = getChannelProvider();
      final categoryState = getCategoryState();
      categoryState.loading = false;
      categoryState.prefetchRequested = false;
      unawaited(channelProvider.getAllCategoryNamesAsync());
      unawaited(channelProvider.getFilteredChannelsAsync(limit: 40));
      unawaited(getCategoryCoordinator().prefetchInitialRows());
      if (isMounted()) {
        requestRebuild();
      }
    } finally {
      recoveryInFlight = false;
    }
  }

  void dispose() {
    _stopWatchdog();
  }
}
