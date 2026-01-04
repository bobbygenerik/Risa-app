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
        padding: padding ?? EdgeInsets.symmetric(vertical: context.spacingLg()),
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
    this.showLogo = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(
        vertical: context.spacingMd(),
        horizontal: context.spacingSm(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (showLogo)
            Container(
              height: context.tvSpacing(40),
              width: width * 0.35,
              decoration: BoxDecoration(
                color: Colors.white.withAlpha((0.15 * 255).round()),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          if (showLogo) SizedBox(height: context.spacingSm()),
          Container(
            height: context.tvSpacing(32),
            width: width * 0.75,
            decoration: BoxDecoration(
              color: Colors.white.withAlpha((0.12 * 255).round()),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          SizedBox(height: context.spacingXs()),
          Container(
            height: 12,
            width: width * 0.9,
            decoration: BoxDecoration(
              color: Colors.white.withAlpha((0.08 * 255).round()),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          SizedBox(height: context.spacingXs()),
          Container(
            height: 12,
            width: width * 0.6,
            decoration: BoxDecoration(
              color: Colors.white.withAlpha((0.08 * 255).round()),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          SizedBox(height: context.spacingMd()),
          Container(
            height: 4,
            width: width * 0.9,
            decoration: BoxDecoration(
              color: Colors.white.withAlpha((0.1 * 255).round()),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          SizedBox(height: context.spacingSm()),
          Row(
            children: [
              Container(
                width: 40,
                height: 16,
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha((0.12 * 255).round()),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              SizedBox(width: context.spacingXs()),
              Container(
                width: 60,
                height: 16,
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha((0.12 * 255).round()),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ],
          ),
          SizedBox(height: context.spacingLg()),
          Container(
            height: 34,
            width: width * 0.45,
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
