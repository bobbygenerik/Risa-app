import 'dart:async';
import 'dart:math' as math;

import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/screens/live_tv/category_state.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/services/live_tv_artwork_service.dart';

/// Short window to retry artwork for visible row programs after category refresh.
class LiveTvArtworkRetry {
  LiveTvArtworkRetry({
    required this.categoryState,
    required this.getEpgService,
    required this.artworkService,
    required this.isIdle,
  });

  final LiveTvCategoryState categoryState;
  final IncrementalEpgService Function() getEpgService;
  final LiveTvArtworkService artworkService;
  final bool Function() isIdle;

  bool active = false;
  DateTime? lastWindow;
  Timer? _timer;

  void start() {
    if (active || categoryState.names.isEmpty) return;
    if (lastWindow != null &&
        DateTime.now().difference(lastWindow!) < const Duration(seconds: 15)) {
      return;
    }
    active = true;
    lastWindow = DateTime.now();
    _timer?.cancel();
    _timer = Timer(const Duration(seconds: 8), () {
      active = false;
    });
    sweep();
  }

  void sweep() {
    if (!active || isIdle()) return;
    final epgService = getEpgService();
    final maxCategories = math.min(4, categoryState.names.length);
    for (var i = 0; i < maxCategories; i++) {
      final category = categoryState.names[i];
      final channels = categoryState.channelCache[category];
      if (channels == null || channels.isEmpty) continue;
      final limit = math.min(channels.length, 10);
      for (var j = 0; j < limit; j++) {
        final channel = channels[j];
        final program = epgService.getCurrentProgram(
          channel.epgLookupId,
          channelName: channel.epgLookupNameFallback,
          groupTitle: channel.groupTitle,
        );
        if (program == null) continue;
        artworkService.ensureFreshProgramArtwork(
          program,
          channel,
          highPriority: true,
        );
      }
    }
  }

  void dispose() {
    _timer?.cancel();
  }
}
