import 'package:flutter/material.dart';

/// Cold-start focus placement for the Live TV screen.
class LiveTvInitialFocus {
  LiveTvInitialFocus._();

  static void request({
    required bool Function() isMounted,
    required FocusNode watchButtonFocus,
    required FocusNode firstFeaturedFocus,
    required FocusNode firstChannelFocus,
    required FocusNode skeletonFocus,
    required void Function() retry,
  }) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!isMounted()) return;

      if (watchButtonFocus.hasFocus ||
          firstFeaturedFocus.hasFocus ||
          firstChannelFocus.hasFocus ||
          skeletonFocus.hasFocus) {
        return;
      }

      if (watchButtonFocus.canRequestFocus) {
        watchButtonFocus.requestFocus();
        return;
      }
      if (firstFeaturedFocus.canRequestFocus) {
        firstFeaturedFocus.requestFocus();
        return;
      }
      if (firstChannelFocus.canRequestFocus) {
        firstChannelFocus.requestFocus();
        return;
      }
      if (skeletonFocus.canRequestFocus) {
        skeletonFocus.requestFocus();
        return;
      }

      Future.delayed(const Duration(milliseconds: 100), retry);
    });
  }
}
