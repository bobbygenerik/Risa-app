import 'package:flutter/material.dart';

/// Shared layout measurements for the Live TV screen.
class LiveTvLayout {
  LiveTvLayout._();

  static double contentTop(double heroHeight, double cardPeek) =>
      heroHeight - cardPeek;

  static int initialRowVisibleCount(
    BuildContext context,
    double cardWidth,
    double rowInset,
  ) {
    if (cardWidth <= 0) return 6;
    final width = MediaQuery.of(context).size.width - rowInset;
    return (width / cardWidth).ceil() + 1;
  }
}
