import 'dart:math' as math;

import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/screens/live_tv/live_tv_featured_state.dart';
import 'package:iptv_player/screens/live_tv/timer_manager.dart';
import 'package:iptv_player/utils/debug_helper.dart';

/// Hero carousel and periodic featured rotation.
class LiveTvHeroCarousel {
  LiveTvHeroCarousel({
    required this.featuredState,
    required this.timerManager,
    required this.getChannelProvider,
    required this.isMounted,
    required this.requestRebuild,
  });

  final LiveTvFeaturedState featuredState;
  final LiveTvTimerManager timerManager;
  final ChannelProvider Function() getChannelProvider;
  final bool Function() isMounted;
  final void Function(void Function()) requestRebuild;

  /// Single rotation timer. A second registration used to also drive
  /// advance() through TimerService, doubling the effective rate unevenly.
  static const Duration rotationInterval = Duration(seconds: 8);

  void initHeroIndex(int channelCount) {
    if (featuredState.indexInitialized || channelCount <= 0) return;
    if (featuredState.index == 0) {
      featuredState.index = math.Random().nextInt(channelCount);
    }
    featuredState.indexInitialized = true;
    debugLog('LiveTV: Initialized featured index to ${featuredState.index}');
  }

  void startRotation() {
    timerManager.startPeriodic('featured_rotation', rotationInterval, () {
      if (isMounted()) advance();
    });
  }

  void advance() {
    final channelProvider = getChannelProvider();
    if (!channelProvider.hasChannels) return;
    final heroCount = featuredState.lastHeroCandidateCount;
    if (heroCount <= 0) return;
    featuredState.channelId = null;
    requestRebuild(() {
      featuredState.index = (featuredState.index + 1) % heroCount;
    });
  }
}
