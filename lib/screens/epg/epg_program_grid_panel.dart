import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/utils/app_spacing.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/widgets/epg_widgets.dart';

typedef EpgProgramFocusNodeFn = FocusNode Function(Channel channel);

/// Horizontal timeline header showing hour slots.
class EpgTimeHeader extends StatelessWidget {
  const EpgTimeHeader({
    super.key,
    this.hoursToShow = 12,
    this.cellWidth = 240.0,
  });

  final int hoursToShow;
  final double cellWidth;

  static const double rowHeight = AppSpacing.epgRowHeight;

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final startHour = now.hour;

    return SizedBox(
      height: rowHeight,
      child: Row(
        children: List.generate(hoursToShow, (index) {
          final hour = (startHour + index) % 24;
          final time = TimeOfDay(hour: hour, minute: 0);

          return Container(
            width: cellWidth,
            height: rowHeight,
            margin: const EdgeInsets.only(right: 4),
            decoration: BoxDecoration(
              color: const Color(0xFF2a2a3e).withValues(alpha: 0.4),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                  color: Colors.white.withValues(alpha: 0.1), width: 1),
            ),
            child: Center(
              child: Text(
                time.format(context),
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white.withValues(alpha: 0.7),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

/// Program grid panel with time header, lazy grid, and loading overlay.
class EpgProgramGridPanel extends StatelessWidget {
  const EpgProgramGridPanel({
    super.key,
    required this.channels,
    required this.epgService,
    required this.isLoadingMore,
    required this.gridWidth,
    required this.timeHeaderScrollController,
    required this.horizontalScrollController,
    required this.verticalScrollController,
    required this.firstProgramFocusNode,
    required this.programFocusNodeForChannel,
    required this.onProgramTap,
    required this.onRequestChannelFocus,
  });

  final List<Channel> channels;
  final IncrementalEpgService epgService;
  final bool isLoadingMore;
  final double gridWidth;
  final ScrollController timeHeaderScrollController;
  final ScrollController horizontalScrollController;
  final ScrollController verticalScrollController;
  final FocusNode firstProgramFocusNode;
  final EpgProgramFocusNodeFn programFocusNodeForChannel;
  final ValueChanged<Program> onProgramTap;
  final void Function(Channel channel, int index) onRequestChannelFocus;

  @override
  Widget build(BuildContext context) {
    debugLog(
        'EPG Grid: isLoading=${epgService.isLoading}, availableChannels=${epgService.availableChannels.length}, loadedChannels=${epgService.loadedChannelCount}');

    final bool isLoading = epgService.isLoading;
    final preloadCount = math.min(12, channels.length);
    if (preloadCount > 0) {
      final channelIds = <String>[];
      final channelNames = <String?>[];
      for (var i = 0; i < preloadCount; i++) {
        final channel = channels[i];
        channelIds.add(channel.epgLookupId);
        channelNames.add(channel.epgLookupNameFallback);
      }
      unawaited(epgService.ensureChannelsLoadedBatch(
        channelIds,
        channelNames: channelNames,
      ));
    }

    return Stack(
      children: [
        Column(
          children: [
            if (epgService.availableChannels.isEmpty && !isLoading)
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                color: AppTheme.primaryBlue.withValues(alpha: 0.2),
                child: Row(
                  children: [
                    const Icon(Icons.info_outline,
                        size: AppSizes.iconSm, color: AppTheme.primaryBlue),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'No EPG data. Configure EPG URL in Settings.',
                        style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.7),
                            fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: AppSpacing.epgRowHeight,
                    margin: const EdgeInsets.only(bottom: 4),
                    child: SingleChildScrollView(
                      controller: timeHeaderScrollController,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: SizedBox(
                        width: gridWidth,
                        child: const EpgTimeHeader(),
                      ),
                    ),
                  ),
                  Expanded(
                    child: EPGProgramsGrid(
                      channels: channels,
                      epgService: epgService,
                      isLoadingMore: isLoadingMore,
                      horizontalController: horizontalScrollController,
                      verticalController: verticalScrollController,
                      gridWidth: gridWidth,
                      onProgramTap: onProgramTap,
                      firstProgramFocusNode: firstProgramFocusNode,
                      programFocusNodeForChannel: programFocusNodeForChannel,
                      onRequestChannelFocus: onRequestChannelFocus,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        if (isLoading)
          Container(
            color: Colors.black54,
            child: const Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircularProgressIndicator(color: AppTheme.primaryBlue),
                  SizedBox(height: AppSizes.md),
                  Text(
                    'Loading EPG data...',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
