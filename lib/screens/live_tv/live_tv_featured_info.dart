import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/screens/live_tv/live_tv_formatters.dart';
import 'package:iptv_player/screens/live_tv/live_tv_layout.dart';
import 'package:iptv_player/utils/app_colors.dart';
import 'package:iptv_player/utils/app_spacing.dart';
import 'package:iptv_player/utils/app_typography.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
import 'package:iptv_player/widgets/brand_badge.dart';
import 'package:iptv_player/widgets/brand_button.dart';
import 'package:iptv_player/widgets/cached_image.dart';

/// Hero info panel: title logo, description, progress, watch button.
class LiveTvFeaturedInfo extends StatelessWidget {
  const LiveTvFeaturedInfo({
    super.key,
    required this.channel,
    required this.program,
    required this.displayTitle,
    required this.titleLogoUrl,
    required this.watchButtonFocus,
    required this.firstFeaturedFocus,
    required this.firstChannelFocus,
    required this.scrollController,
    required this.onWatch,
  });

  final Channel channel;
  final Program? program;
  final String displayTitle;
  final String? titleLogoUrl;
  final FocusNode watchButtonFocus;
  final FocusNode firstFeaturedFocus;
  final FocusNode firstChannelFocus;
  final ScrollController scrollController;
  final VoidCallback onWatch;

  void _focusFirstChannelRow(BuildContext context) {
    final heroHeight = context.heroHeight();
    const cardPeek = 80.0;
    final target = LiveTvLayout.contentTop(heroHeight, cardPeek);
    if (scrollController.hasClients &&
        scrollController.offset < target - 16) {
      scrollController.animateTo(
        target,
        duration: const Duration(milliseconds: 220),
        curve: Curves.easeOutCubic,
      );
    }
    if (firstFeaturedFocus.canRequestFocus) {
      firstFeaturedFocus.requestFocus();
      return;
    }
    if (firstChannelFocus.canRequestFocus) {
      firstChannelFocus.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    final title = program == null ? channel.name : displayTitle;
    final description = program?.description ?? 'No program data available.';
    final timeRange = program != null
        ? '${LiveTvFormatters.formatProgramTime(program!.startTime)} - ${LiveTvFormatters.formatProgramTime(program!.endTime)}'
        : 'Live Stream';
    final progress = program?.progressPercentage ?? 0.0;
    final isAiring = program?.isCurrentlyPlaying ?? false;
    final titleStyle = AppTypography.heroTitle(context).copyWith(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      shadows: [
        Shadow(
          color: Colors.black.withValues(alpha: 0.9),
          blurRadius: 16,
          offset: const Offset(0, 2),
        ),
        Shadow(
          color: Colors.black.withValues(alpha: 0.6),
          blurRadius: 6,
          offset: const Offset(0, 1),
        ),
      ],
    );
    final descriptionStyle = AppTypography.heroDescription(context).copyWith(
      color: Colors.white.withValues(alpha: 0.85),
      fontWeight: FontWeight.w500,
      shadows: [
        Shadow(
          color: Colors.black.withValues(alpha: 0.8),
          blurRadius: 12,
          offset: const Offset(0, 1),
        ),
      ],
    );
    final logoSlotHeight = context.tvSpacing(48);

    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: context.heroInfoWidth()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (titleLogoUrl != null) ...[
            SizedBox(
              height: logoSlotHeight,
              child: CachedImage(
                imageUrl: titleLogoUrl!,
                height: logoSlotHeight,
                fit: BoxFit.contain,
                placeholder: const SizedBox.shrink(),
                errorWidget: const SizedBox.shrink(),
              ),
            ),
            SizedBox(height: context.tvSpacing(8)),
          ],
          if (titleLogoUrl == null && title.isNotEmpty) ...[
            Text(
              title,
              style: titleStyle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: context.tvSpacing(6)),
          ],
          if (description.isNotEmpty) ...[
            Flexible(
              child: Text(
                description,
                style: descriptionStyle,
                maxLines: 5,
                overflow: TextOverflow.fade,
                softWrap: true,
              ),
            ),
            SizedBox(height: context.tvSpacing(6)),
          ],
          if (isAiring) ...[
            SizedBox(
              height: 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: LinearProgressIndicator(
                  value: progress,
                  backgroundColor: AppColors.progressBackground,
                  color: AppColors.progressForeground,
                  minHeight: 4,
                ),
              ),
            ),
            SizedBox(height: context.tvSpacing(6)),
          ],
          Row(
            children: [
              if (isAiring) ...[
                const BrandBadge.live(),
                const SizedBox(width: 8),
              ],
              Expanded(
                child: Text(
                  timeRange,
                  style: AppTypography.smallText(context).copyWith(
                    fontSize: context.tvTextSize(12),
                    color: Colors.white.withValues(alpha: 0.8),
                    shadows: [
                      Shadow(
                        color: Colors.black.withValues(alpha: 0.7),
                        blurRadius: 6,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: context.cardWidth() * 0.6,
            child: CallbackShortcuts(
              bindings: {
                const SingleActivator(LogicalKeyboardKey.arrowDown):
                    () => _focusFirstChannelRow(context),
              },
              child: BrandPrimaryButton(
                onPressed: onWatch,
                label: 'Watch',
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                fontSize: 14,
                minHeight: 32,
                expand: true,
                focusNode: watchButtonFocus,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
