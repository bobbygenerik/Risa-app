import 'package:flutter/material.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/screens/live_tv/focus_cache.dart';

/// Focus restore and primary-action focus for Live TV.
class LiveTvFocusActions {
  LiveTvFocusActions._();

  static void restoreCardFocusIfMissing({
    required String? lastFocusedCardKey,
    required LiveTvFocusCache cardFocusCache,
    required bool Function() isMounted,
    bool suppress = false,
  }) {
    // The Live TV screen is kept alive and rebuilds constantly during cold
    // start (featured-row retry, 2s category reloads). Each rebuild posts this
    // restore, which grabs a card whenever primaryFocus is momentarily null.
    // If the user has moved to the sidebar, that transient-null window let the
    // restore yank focus back to the cards ~a couple seconds later. When the
    // nav rail owns focus (suppress), never reclaim — the rail is the user's
    // current location.
    if (suppress) return;
    if (lastFocusedCardKey == null) return;
    final node = cardFocusCache.nodeForKey(lastFocusedCardKey);
    if (node == null || !node.canRequestFocus) return;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!isMounted()) return;
      final primary = FocusManager.instance.primaryFocus;
      if (primary == null || !primary.hasFocus) {
        node.requestFocus();
      }
    });
  }

  static bool focusPrimaryAction({
    required ChannelProvider channelProvider,
    required FocusNode settingsButtonFocus,
    required FocusNode firstChannelFocus,
    required FocusNode watchButtonFocus,
  }) {
    if (!channelProvider.hasChannels) {
      settingsButtonFocus.requestFocus();
      return true;
    }
    if (watchButtonFocus.canRequestFocus) {
      watchButtonFocus.requestFocus();
      return true;
    }
    if (firstChannelFocus.canRequestFocus) {
      firstChannelFocus.requestFocus();
      return true;
    }
    watchButtonFocus.requestFocus();
    return true;
  }
}
