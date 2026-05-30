import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/screens/live_tv/live_tv_artwork_resolver.dart';
import 'package:iptv_player/screens/live_tv/live_tv_featured_info.dart';
import 'package:iptv_player/utils/app_spacing.dart';
import 'package:iptv_player/widgets/channel_logo_widget.dart';
import 'package:iptv_player/widgets/hero_panel.dart';

/// Hero overlay: featured info, focus routing, channel logo.
class LiveTvHeroInfoWidgets {
  LiveTvHeroInfoWidgets._();

  static double heroInfoWidth(BuildContext context, double sidebarInset) {
    final screenSize = MediaQuery.of(context).size;
    final contentInset = context.spacingSm() + sidebarInset;
    final rightInset = context.spacingLg();
    final availableWidth = screenSize.width - contentInset - rightInset;
    final desiredInfoWidth = screenSize.width < 800
        ? availableWidth
        : screenSize.width * AppSpacing.heroInfoWidth;
    return math.min(
      desiredInfoWidth,
      screenSize.width >= 1920 ? 480.0 : 420.0,
    );
  }

  static Widget heroInfoPanel({
    required double width,
    required Widget child,
  }) {
    return HeroInfoPanel(width: width, child: child);
  }

  static Widget channelLogo(Channel channel) {
    return ChannelLogoWidget(
      channelName: channel.name,
      logoUrl: channel.logoUrl?.isNotEmpty == true ? channel.logoUrl : null,
      tvgId: channel.tvgId,
      allowEnrichment: true,
      width: 72,
      height: 48,
      fit: BoxFit.contain,
      backgroundColor: Colors.transparent,
      borderRadius: BorderRadius.circular(6),
    );
  }

  static Widget featuredInfo({
    required BuildContext context,
    required Channel channel,
    required Program? program,
    required LiveTvArtworkResolver artworkResolver,
    required FocusNode watchButtonFocus,
    required FocusNode firstFeaturedFocus,
    required FocusNode firstChannelFocus,
    required ScrollController scrollController,
    required VoidCallback onWatch,
  }) {
    final displayTitle = program == null
        ? channel.name
        : artworkResolver.displayProgramTitle(program, channel);
    return LiveTvFeaturedInfo(
      channel: channel,
      program: program,
      displayTitle: displayTitle,
      titleLogoUrl: artworkResolver.resolveProgramTitleLogo(program, channel),
      watchButtonFocus: watchButtonFocus,
      firstFeaturedFocus: firstFeaturedFocus,
      firstChannelFocus: firstChannelFocus,
      scrollController: scrollController,
      onWatch: onWatch,
    );
  }

  static Widget featuredInfoWithFocus({
    required BuildContext context,
    required Channel channel,
    required Program? program,
    required LiveTvArtworkResolver artworkResolver,
    required FocusNode watchButtonFocus,
    required FocusNode firstFeaturedFocus,
    required FocusNode firstChannelFocus,
    required ScrollController scrollController,
    required VoidCallback onWatch,
  }) {
    return featuredInfo(
      context: context,
      channel: channel,
      program: program,
      artworkResolver: artworkResolver,
      watchButtonFocus: watchButtonFocus,
      firstFeaturedFocus: firstFeaturedFocus,
      firstChannelFocus: firstChannelFocus,
      scrollController: scrollController,
      onWatch: onWatch,
    );
  }
}
