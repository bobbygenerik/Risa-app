import 'package:flutter/material.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/screens/live_tv/live_tv_channel_section.dart';
import 'package:provider/provider.dart';

/// Recently watched channels row.
class LiveTvContinueWatchingRow extends StatelessWidget {
  const LiveTvContinueWatchingRow({
    super.key,
    required this.bindings,
  });

  final LiveTvChannelSectionBindings bindings;

  @override
  Widget build(BuildContext context) {
    final recentChannels = context
        .read<ChannelProvider>()
        .mostWatchedChannels
        .take(8)
        .toList();

    if (recentChannels.isEmpty) return const SizedBox.shrink();

    return LiveTvChannelSection(
      title: 'Continue Watching',
      channels: recentChannels,
      bindings: bindings,
      allowCategoryPaging: false,
    );
  }
}
