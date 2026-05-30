import 'package:flutter/material.dart';
import 'package:iptv_player/providers/channel_provider.dart';
/// Cold-start focus placement for the Live TV screen.
class LiveTvInitialFocus {
  LiveTvInitialFocus._();

  static void request({
    required bool Function() isMounted,
    required ChannelProvider Function() readChannelProvider,
    required FocusNode watchButtonFocus,
    required FocusNode firstFeaturedFocus,
    required FocusNode firstChannelFocus,
    required FocusNode skeletonFocus,
    required void Function() retry,
  }) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!isMounted()) return;

      final channelProvider = readChannelProvider();
      final currentFocus = FocusManager.instance.primaryFocus;

      if (!channelProvider.isColdStartLoad &&
          currentFocus != null &&
          currentFocus.context != null &&
          currentFocus != FocusManager.instance.rootScope) {
        return;
      }

      if (watchButtonFocus.canRequestFocus) {
        watchButtonFocus.requestFocus();
      } else if (firstFeaturedFocus.canRequestFocus) {
        firstFeaturedFocus.requestFocus();
      } else if (firstChannelFocus.canRequestFocus) {
        firstChannelFocus.requestFocus();
      } else if (skeletonFocus.canRequestFocus) {
        skeletonFocus.requestFocus();
      } else {
        Future.delayed(const Duration(milliseconds: 100), retry);
      }
    });
  }
}
