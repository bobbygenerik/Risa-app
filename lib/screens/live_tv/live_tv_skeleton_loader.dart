import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iptv_player/screens/live_tv/live_tv_cold_start_overlay.dart';
import 'package:iptv_player/utils/app_colors.dart';
import 'package:iptv_player/utils/app_spacing.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
import 'package:iptv_player/widgets/hero_panel.dart';
import 'package:iptv_player/widgets/shimmer.dart';
import 'package:iptv_player/widgets/skeleton_loader.dart';

/// Full-screen loading skeleton for the Live TV layout.
class LiveTvSkeletonLoader extends StatelessWidget {
  const LiveTvSkeletonLoader({
    super.key,
    required this.scrollController,
    required this.skeletonFocus,
    required this.sidebarInset,
    this.showColdStartOverlay = false,
    this.titleText,
    this.statusText,
    this.secondaryStatusText,
    this.progress,
  });

  final ScrollController scrollController;
  final FocusNode skeletonFocus;
  final double sidebarInset;
  final bool showColdStartOverlay;
  final String? titleText;
  final String? statusText;
  final String? secondaryStatusText;
  final double? progress;

  double _safeScrollOffset() {
    if (!scrollController.hasClients) return 0;
    return scrollController.offset;
  }

  double _contentTopForLayout(
      BuildContext context, double heroHeight, double cardPeek) {
    return heroHeight - cardPeek;
  }

  int _initialRowVisibleCount(
      BuildContext context, double cardWidth, double rowInset) {
    if (cardWidth <= 0) return 6;
    final width = MediaQuery.of(context).size.width - rowInset;
    return (width / cardWidth).ceil() + 1;
  }

  @override
  Widget build(BuildContext context) {
    final heroHeight = context.heroHeight();
    final contentInset = context.spacingSm() + sidebarInset;
    final rightInset = context.spacingLg();
    final screenSize = MediaQuery.of(context).size;
    final skeletonCardWidth = context.cardWidth();
    final skeletonCardHeight = context.cardHeight();
    const cardPeek = 80.0;
    final contentTop = _contentTopForLayout(context, heroHeight, cardPeek);
    final rowInset = contentInset;
    final perRow =
        _initialRowVisibleCount(context, skeletonCardWidth, rowInset);
    final availableWidth = screenSize.width - contentInset - rightInset;
    final desiredInfoWidth = screenSize.width < 800
        ? availableWidth
        : screenSize.width * AppSpacing.heroInfoWidth;
    final heroInfoWidth = desiredInfoWidth.clamp(
      0.0,
      screenSize.width >= 1920 ? 480.0 : 420.0,
    );

    return Focus(
      focusNode: skeletonFocus,
      onFocusChange: (hasFocus) {
        if (hasFocus) {
          debugLog('LiveTV: Skeleton focused');
        }
      },
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(color: AppColors.background),
          ),
          Positioned(
            top: AppSizes.lg,
            right: AppSizes.lg,
            child: Builder(builder: (context) {
              final scrollPos = _safeScrollOffset();
              final fadeProgress =
                  (scrollPos / (heroHeight * 0.5)).clamp(0.0, 1.0);
              return Opacity(
                opacity: 1.0 - fadeProgress,
                child: Shimmer(
                  child: Container(
                    height: 48,
                    width: 72,
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              );
            }),
          ),
          Positioned(
            top: 0,
            left: contentInset,
            right: rightInset,
            height: contentTop,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Shimmer(
                  child: HeroInfoSkeleton(
                    width: heroInfoWidth,
                    padding: EdgeInsets.symmetric(vertical: context.spacingSm()),
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: contentTop + context.spacingLg()),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 0,
                      right: rightInset,
                      bottom: context.spacingLg(),
                    ),
                    child: Shimmer(
                      child: Column(
                        children: [
                          for (int rowIndex = 0; rowIndex < 3; rowIndex++) ...[
                            SizedBox(
                              height: skeletonCardHeight +
                                  context.spacingXs() +
                                  context.tvTextSize(30),
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                physics: const NeverScrollableScrollPhysics(),
                                padding: EdgeInsets.only(left: rowInset),
                                itemCount: perRow,
                                separatorBuilder: (context, index) =>
                                    SizedBox(width: context.cardGap()),
                                itemBuilder: (context, index) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Skeleton(
                                        width: skeletonCardWidth,
                                        height: skeletonCardHeight,
                                        borderRadius: 12,
                                      ),
                                      const SizedBox(height: 4),
                                      SkeletonLine(
                                        skeletonCardWidth * 0.8,
                                        height: 12,
                                        borderRadius: 4,
                                      ),
                                      const SizedBox(height: 2),
                                      SkeletonLine(
                                        skeletonCardWidth * 0.5,
                                        height: 10,
                                        borderRadius: 4,
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                            SizedBox(height: context.spacingSm()),
                          ],
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (showColdStartOverlay)
            Positioned.fill(
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
                  child: Container(
                    color: Colors.black.withValues(alpha: 0.45),
                    alignment: Alignment.center,
                    child: LiveTvColdStartOverlay(
                      titleText: titleText,
                      statusText: statusText,
                      secondaryStatusText: secondaryStatusText,
                      progress: progress,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
