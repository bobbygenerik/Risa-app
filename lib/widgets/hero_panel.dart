import 'package:flutter/material.dart';
import 'package:iptv_player/utils/app_spacing.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';

/// A unified container for Hero information panels.
/// Provides standardized vertical centering and glass-free transparency.
class HeroInfoPanel extends StatelessWidget {
  final double width;
  final Widget child;
  final EdgeInsets? padding;

  const HeroInfoPanel({
    super.key,
    required this.width,
    required this.child,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Padding(
        padding: padding ??
            EdgeInsets.only(
              top: context.spacingLg(),
              bottom: context.spacingXs(),
            ),
        child: child,
      ),
    );
  }
}

/// A unified skeleton loader for Hero information panels.
class HeroInfoSkeleton extends StatelessWidget {
  final double width;

  /// Whether to show the small logo/label slot in the skeleton.
  final bool showLogo;

  const HeroInfoSkeleton({
    super.key,
    required this.width,
    this.showLogo = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.all(context.spacingSm()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Logo/Label slot (only when the real UI shows it)
          if (showLogo)
            Container(
              height: context.tvSpacing(64),
              width: width * 0.4,
              decoration: BoxDecoration(
                color: Colors.white.withAlpha((0.15 * 255).round()),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          SizedBox(height: context.spacingSm()),
          
          // Title slot
          Container(
            height: context.tvSpacing(48),
            width: width * 0.8,
            decoration: BoxDecoration(
              color: Colors.white.withAlpha((0.1 * 255).round()),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          SizedBox(height: context.spacingSm()),
          
          // Metadata row
          Row(
            children: [
              Container(
                width: 40,
                height: 16,
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha((0.1 * 255).round()),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              SizedBox(width: context.spacingXs()),
              Container(
                width: 60,
                height: 16,
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha((0.1 * 255).round()),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ],
          ),
          SizedBox(height: context.spacingMd()),
          
          // Description lines
          Container(
            height: 14,
            width: width * 0.9,
            decoration: BoxDecoration(
              color: Colors.white.withAlpha((0.05 * 255).round()),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          SizedBox(height: 8),
          Container(
            height: 14,
            width: width * 0.7,
            decoration: BoxDecoration(
              color: Colors.white.withAlpha((0.05 * 255).round()),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          SizedBox(height: context.spacingLg()),
          
          // Button slot
          Container(
            height: 36,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.white.withAlpha((0.1 * 255).round()),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ],
      ),
    );
  }
}
