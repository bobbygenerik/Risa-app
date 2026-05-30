import 'dart:async';

import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/screens/live_tv/category_state.dart';

/// Refreshes channel/category data when the app resumes.
class LiveTvResumeRefresh {
  LiveTvResumeRefresh._();

  static void refresh({
    required ChannelProvider channelProvider,
    required LiveTvCategoryState categoryState,
    required void Function() requestCategoryPrefetch,
  }) {
    categoryState.prefetchRequested = false;
    unawaited(channelProvider.getAllCategoryNamesAsync());
    unawaited(channelProvider.getFilteredChannelsAsync(limit: 40));
    requestCategoryPrefetch();
  }
}
