import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/app_typography.dart';
import 'package:iptv_player/utils/app_spacing.dart';
import 'package:iptv_player/widgets/brand_button.dart';
import 'package:iptv_player/widgets/cached_image.dart';

/// Standardized component for the Hero section information overlay
/// Designed to mimic premium streaming apps like Netflix/Disney+
class HeroInfoBox extends StatelessWidget {
  final String title;
  final String? description;
  final List<Widget>? metadata;
  final double? progress;
  final VoidCallback onWatchPressed;
  final VoidCallback? onMoreInfoPressed;
  final String? channelLogoUrl;
  final Widget? trailing;
  final FocusNode? primaryButtonFocusNode;
  final FocusNode? secondaryButtonFocusNode;
  final FocusNode? nextFocusOnRight;

  const HeroInfoBox({
    super.key,
    required this.title,
    this.description,
    this.metadata,
    this.progress,
    required this.onWatchPressed,
    this.onMoreInfoPressed,
    this.channelLogoUrl,
    this.trailing,
    this.primaryButtonFocusNode,
    this.secondaryButtonFocusNode,
    this.nextFocusOnRight,
  });

  @override
  Widget build(BuildContext context) {
    final compactButtonPadding =
        const EdgeInsets.symmetric(horizontal: 10, vertical: 6);
    final actionWidth = context.cardWidth() * 0.5;
    return Container(
      constraints: BoxConstraints(
        maxWidth: context.heroInfoWidth(),
      ),
      child: Container(
        padding: EdgeInsets.all(context.spacingSm()),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.black.withValues(alpha: 0.55),
              Colors.black.withValues(alpha: 0.3),
              Colors.transparent,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
          // Channel/Brand Identifier if provided
          if (channelLogoUrl != null) ...[
            Container(
              height: context.spacingMd(),
              margin: EdgeInsets.only(bottom: context.spacingSm()),
              child: CachedChannelLogo(
                logoUrl: channelLogoUrl!,
                size: context.spacingMd(),
                fallbackIcon: Icons.tv,
              ),
            ),
          ],

          // Title
          Text(
            title,
            style: AppTypography.heroTitle(context),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          
          SizedBox(height: context.spacingSm()),

          // Metadata Row (Year, Rating, Tags, etc.)
          if (metadata != null && metadata!.isNotEmpty) ...[
            Wrap(
              spacing: context.spacingXs(),
              runSpacing: context.spacingXs(),
              crossAxisAlignment: WrapCrossAlignment.center,
              children: metadata!,
            ),
            SizedBox(height: context.spacingSm()),
          ],

          // Description
          if (description != null && description!.isNotEmpty) ...[
            Text(
              description!,
              style: AppTypography.heroDescription(context),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: context.spacingMd()),
          ],

          // Progress Bar (for Live/Continue Watching)
          if (progress != null) ...[
            ClipRRect(
              borderRadius: BorderRadius.circular(2),
              child: LinearProgressIndicator(
                value: progress,
                backgroundColor: Colors.white.withValues(alpha: 0.1),
                color: AppTheme.primaryBlue,
                minHeight: 3,
              ),
            ),
            SizedBox(height: context.spacingMd()),
          ],

          // Action Buttons
          Row(
            children: [
              Focus(
                canRequestFocus: false,
                skipTraversal: true,
                onKeyEvent: (node, event) {
                  if (event is KeyDownEvent &&
                      event.logicalKey == LogicalKeyboardKey.arrowRight &&
                      nextFocusOnRight != null) {
                    nextFocusOnRight!.requestFocus();
                    return KeyEventResult.handled;
                  }
                  return KeyEventResult.ignored;
                },
                child: SizedBox(
                  width: actionWidth,
                  child: BrandPrimaryButton(
                    onPressed: onWatchPressed,
                    label: 'Watch Now',
                    icon: Icons.play_arrow_rounded,
                    padding: compactButtonPadding,
                    fontSize: 12,
                    minHeight: 24,
                    focusNode: primaryButtonFocusNode,
                  ),
                ),
              ),
              if (onMoreInfoPressed != null) ...[
                SizedBox(width: context.spacingSm()),
              Focus(
                canRequestFocus: false,
                skipTraversal: true,
                onKeyEvent: (node, event) {
                  if (event is KeyDownEvent &&
                      event.logicalKey == LogicalKeyboardKey.arrowRight &&
                      nextFocusOnRight != null) {
                    nextFocusOnRight!.requestFocus();
                      return KeyEventResult.handled;
                    }
                    return KeyEventResult.ignored;
                  },
                  child: SizedBox(
                    width: actionWidth,
                    child: BrandSecondaryButton(
                      onPressed: onMoreInfoPressed!,
                      label: 'More Info',
                      icon: Icons.info_outline_rounded,
                      padding: compactButtonPadding,
                      fontSize: 12,
                      minHeight: 24,
                      focusNode: secondaryButtonFocusNode,
                    ),
                  ),
                ),
              ],
              if (trailing != null) ...[
                const Spacer(),
                trailing!,
              ],
            ],
          ),
          ],
        ),
      ),
    );
  }
}
