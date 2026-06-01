import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:iptv_player/utils/app_spacing.dart';
import 'package:iptv_player/utils/app_typography.dart';

/// Estimates vertical space for one category row in the Live TV list.
class LiveTvRowHeight {
  LiveTvRowHeight._();

  static double estimate(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final maxCardWidth =
        screenWidth < 800 ? screenWidth / 2.8 : screenWidth / 5.5;
    final cardWidth = math.min(context.cardWidth(), maxCardWidth);
    const cardFocusScale = 1.05;
    final cardHeight = cardWidth * 0.6;
    final isMobile = screenWidth < 800;
    final focusExtra = isMobile ? 0.0 : cardHeight * (cardFocusScale - 1);
    const infoGapAboveTitle = 4.0;
    const infoGapBelowTitle = 2.0;
    const titleFontSize = 11.0;
    const timeFontSize = 10.0;
    const lineHeight = 1.2;
    final infoHeight = infoGapAboveTitle +
        (titleFontSize * lineHeight) +
        infoGapBelowTitle +
        (timeFontSize * lineHeight);
    final captionStyle = AppTypography.caption(context);
    final captionHeight =
        (captionStyle.fontSize ?? 13.0) * (captionStyle.height ?? 1.2);
    final headerSpacing = context.spacingXs() * 0.5;
    final rowBottomSpacing = context.spacingXs() * 0.5;
    final cardRowHeight = cardHeight + infoHeight + focusExtra + 8.0;
    final totalHeight =
        cardRowHeight + captionHeight + headerSpacing + rowBottomSpacing;
    return math.max(120.0, totalHeight);
  }
}
