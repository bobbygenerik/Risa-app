import 'package:flutter/material.dart';
import 'package:iptv_player/utils/app_spacing.dart';
import 'package:iptv_player/utils/debug_helper.dart';

/// Scroll helpers for Live TV pop-back and hero peek.
class LiveTvScrollNavigation {
  LiveTvScrollNavigation._();

  static double safeOffset(ScrollController controller) {
    if (!controller.hasClients) return 0.0;
    try {
      return controller.positions.first.pixels;
    } catch (e) {
      debugLog('LiveTvScreen: safeScrollOffset failed: $e');
      return 0.0;
    }
  }

  static bool shouldScrollToTopFirst(ScrollController controller) {
    return controller.hasClients && safeOffset(controller) > 100;
  }

  static void scrollToHeroPeek({
    required BuildContext context,
    required ScrollController controller,
    required bool userHasScrolled,
    required bool Function() isMounted,
  }) {
    if (!userHasScrolled || !isMounted() || !controller.hasClients) return;
    final heroHeight = context.heroHeight();
    final targetOffset = heroHeight * 0.2;
    if (safeOffset(controller) >= targetOffset) return;
    controller.animateTo(
      targetOffset,
      duration: const Duration(milliseconds: 240),
      curve: Curves.easeOutCubic,
    );
  }
}
