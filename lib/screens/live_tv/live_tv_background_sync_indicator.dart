import 'package:flutter/material.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/app_typography.dart';
import 'package:provider/provider.dart';

/// Small overlay shown while playlist data syncs in the background.
class LiveTvBackgroundSyncIndicator extends StatelessWidget {
  const LiveTvBackgroundSyncIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final channelProvider = Provider.of<ChannelProvider>(context);
    if (!channelProvider.isBackgroundSyncing) {
      return const SizedBox.shrink();
    }

    return Positioned(
      top: AppSizes.lg + 60,
      right: AppSizes.lg,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: Colors.black.withValues(alpha: 0.6),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.white24, width: 1),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              width: 12,
              height: 12,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              'Updating...',
              style: AppTypography.smallText(context)
                  .copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
