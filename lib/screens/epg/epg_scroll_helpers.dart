import 'dart:async';

import 'package:flutter/material.dart';

/// Scroll utilities for the EPG guide grid and channel sidebar.
class EpgScrollHelpers {
  EpgScrollHelpers._();

  /// Scroll the EPG grid to show the current time.
  static void scrollToCurrentTime({
    required ScrollController horizontalController,
    required bool Function() isMounted,
    bool animate = true,
  }) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!isMounted() || !horizontalController.hasClients) return;

      const scrollPosition = 0.0;

      if (animate) {
        unawaited(horizontalController.animateTo(
          scrollPosition,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        ));
      } else {
        horizontalController.jumpTo(scrollPosition);
      }
    });
  }

  /// Scroll the channel list back to the top when category changes.
  static void scrollChannelListToTop(ScrollController verticalController) {
    if (verticalController.hasClients) {
      unawaited(verticalController.animateTo(
        0,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
      ));
    }
  }
}
