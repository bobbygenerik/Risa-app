import 'package:flutter/material.dart';
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
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: context.heroInfoWidth(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Channel/Brand Identifier if provided
          if (channelLogoUrl != null) ...[
            Container(
              height: context.spacingLg(),
              margin: EdgeInsets.only(bottom: context.spacingMd()),
              child: CachedChannelLogo(
                logoUrl: channelLogoUrl!,
                size: context.spacingLg(),
                fallbackIcon: Icons.tv,
              ),
            ),
          ],

          // Title
          Text(
            title,
            style: AppTypography.heroTitle(context),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          
          SizedBox(height: context.spacingMd()),

          // Metadata Row (Year, Rating, Tags, etc.)
          if (metadata != null && metadata!.isNotEmpty) ...[
            Wrap(
              spacing: context.spacingSm(),
              runSpacing: context.spacingXs(),
              crossAxisAlignment: WrapCrossAlignment.center,
              children: metadata!,
            ),
            SizedBox(height: context.spacingMd()),
          ],

          // Description
          if (description != null && description!.isNotEmpty) ...[
            Text(
              description!,
              style: AppTypography.heroDescription(context),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: context.spacingLg()),
          ],

          // Progress Bar (for Live/Continue Watching)
          if (progress != null) ...[
            ClipRRect(
              borderRadius: BorderRadius.circular(2),
              child: LinearProgressIndicator(
                value: progress,
                backgroundColor: Colors.white.withValues(alpha: 0.1),
                color: AppTheme.primaryBlue,
                minHeight: 4,
              ),
            ),
            SizedBox(height: context.spacingLg()),
          ],

          // Action Buttons
          Row(
            children: [
              BrandPrimaryButton(
                onPressed: onWatchPressed,
                label: 'Watch Now',
                icon: Icons.play_arrow_rounded,
              ),
              if (onMoreInfoPressed != null) ...[
                SizedBox(width: context.spacingMd()),
                BrandSecondaryButton(
                  onPressed: onMoreInfoPressed!,
                  label: 'More Info',
                  icon: Icons.info_outline_rounded,
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
    );
  }
}
