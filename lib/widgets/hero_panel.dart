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
  final EdgeInsets? padding;

  const HeroInfoSkeleton({
    super.key,
    required this.width,
    this.showLogo = true,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: padding ?? EdgeInsets.all(context.spacingSm()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Title
          Container(
            height: context.tvSpacing(48),
            width: width * 0.8,
            decoration: BoxDecoration(
              color: Colors.white.withAlpha((0.15 * 255).round()),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          SizedBox(height: context.spacingSm()),
          // Description (2 lines)
          Container(
            height: 14,
            width: width * 0.9,
            decoration: BoxDecoration(
              color: Colors.white.withAlpha((0.1 * 255).round()),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          SizedBox(height: 6),
          Container(
            height: 14,
            width: width * 0.7,
            decoration: BoxDecoration(
              color: Colors.white.withAlpha((0.1 * 255).round()),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          SizedBox(height: context.spacingSm()),
          // Progress bar
          Container(
            height: 4,
            width: width * 0.6,
            decoration: BoxDecoration(
              color: Colors.white.withAlpha((0.1 * 255).round()),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          SizedBox(height: context.spacingSm()),
          // Live badge with start/end times
          Row(
            children: [
              Container(
                width: 40,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha((0.15 * 255).round()),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              SizedBox(width: context.spacingXs()),
              Container(
                width: 60,
                height: 16,
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha((0.1 * 255).round()),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              SizedBox(width: context.spacingXs()),
              Container(
                width: 60,
                height: 16,
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha((0.1 * 255).round()),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ],
          ),
          SizedBox(height: context.spacingLg()),
          // Watch button
          Container(
            height: 36,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.white.withAlpha((0.15 * 255).round()),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ],
      ),
    );
  }
}
