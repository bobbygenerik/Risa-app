import 'package:flutter/material.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/screens/live_tv/live_tv_formatters.dart';
import 'package:iptv_player/screens/live_tv/live_tv_skeleton_controller.dart';
import 'package:iptv_player/screens/live_tv/live_tv_skeleton_loader.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:provider/provider.dart';

/// Skeleton loader that reports visibility to [LiveTvSkeletonController].
class LiveTvTrackedSkeleton extends StatelessWidget {
  const LiveTvTrackedSkeleton({
    super.key,
    required this.controller,
    required this.scrollController,
    required this.skeletonFocus,
    required this.sidebarInset,
    this.showColdStartOverlay,
    this.titleText,
    this.statusText,
    this.secondaryStatusText,
    this.progress,
  });

  final LiveTvSkeletonController controller;
  final ScrollController scrollController;
  final FocusNode skeletonFocus;
  final double sidebarInset;
  final bool? showColdStartOverlay;
  final String? titleText;
  final String? statusText;
  final String? secondaryStatusText;
  final double? progress;

  @override
  Widget build(BuildContext context) {
    controller.markVisibility(true);
    final channelProvider = context.read<ChannelProvider>();
    final epgService = context.read<IncrementalEpgService>();
    final resolvedOverlay = showColdStartOverlay ?? true;
    var resolvedTitle = titleText;
    String? resolvedStatus = statusText ?? channelProvider.loadingStatus;
    var resolvedProgress = progress ?? channelProvider.loadingProgress;
    var resolvedSecondary = secondaryStatusText;
    final epgBusy = epgService.isParsing ||
        epgService.isDownloading ||
        epgService.isLoading;
    if (epgBusy) {
      resolvedTitle ??= 'Loading EPG';
      resolvedStatus = LiveTvFormatters.replaceEpgWithData(
        epgService.epgProgressLabel ?? resolvedStatus,
      );
      if (epgService.epgProgress > 0.0) {
        resolvedProgress = epgService.epgProgress;
      }
      resolvedSecondary ??= 'Parsing guide data...';
    }
    return LiveTvSkeletonLoader(
      scrollController: scrollController,
      skeletonFocus: skeletonFocus,
      sidebarInset: sidebarInset,
      showColdStartOverlay: resolvedOverlay,
      titleText: resolvedTitle,
      statusText: resolvedStatus,
      secondaryStatusText: resolvedSecondary,
      progress: resolvedProgress,
    );
  }
}
