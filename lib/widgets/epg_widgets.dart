import 'package:flutter/material.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/app_colors.dart';
import 'package:iptv_player/widgets/cached_image.dart';
import 'package:intl/intl.dart';

class EPGChannelSidebar extends StatelessWidget {
  final List<Channel> channels;
  final bool isLoadingMore;
  final VoidCallback onLoadMore;
  final Function(Channel) onChannelTap;
  final Function(Channel) onChannelLongPress;
  final ScrollController controller;

  const EPGChannelSidebar({
    super.key,
    required this.channels,
    required this.isLoadingMore,
    required this.onLoadMore,
    required this.onChannelTap,
    required this.onChannelLongPress,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification is ScrollEndNotification &&
            notification.metrics.pixels >= notification.metrics.maxScrollExtent - 200) {
          onLoadMore();
        }
        return false;
      },
      child: ListView.builder(
        controller: controller,
        physics: const ClampingScrollPhysics(),
        itemCount: channels.length + (isLoadingMore ? 1 : 0),
        itemExtent: 64,
        itemBuilder: (context, index) {
          if (index >= channels.length) {
            return const Center(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: CircularProgressIndicator(
                  color: AppTheme.primaryBlue,
                  strokeWidth: 2,
                ),
              ),
            );
          }
          return EPGChannelItem(
            channel: channels[index],
            onTap: () => onChannelTap(channels[index]),
            onLongPress: () => onChannelLongPress(channels[index]),
          );
        },
      ),
    );
  }
}

class EPGChannelItem extends StatelessWidget {
  final Channel channel;
  final VoidCallback onTap;
  final VoidCallback onLongPress;

  const EPGChannelItem({
    super.key,
    required this.channel,
    required this.onTap,
    required this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return Focus(
      canRequestFocus: true,
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          return GestureDetector(
            onTap: onTap,
            onLongPress: onLongPress,
            child: Container(
              height: 64,
              margin: const EdgeInsets.only(bottom: 4, right: 4),
              decoration: BoxDecoration(
                color: const Color(0xFF2a2a3e).withValues(alpha: 0.4),
                borderRadius: BorderRadius.circular(8),
                border: isFocused
                    ? Border.all(color: AppTheme.primaryBlue, width: 2)
                    : Border.all(color: Colors.white.withValues(alpha: 0.1), width: 1),
                // Optimization: No shadow here
              ),
              child: Center(
                child: SizedBox(
                  width: 48,
                  height: 48,
                  child: CachedChannelLogo(
                    logoUrl: channel.logoUrl,
                    size: 48,
                    cacheWidth: 96,
                    cacheHeight: 96,
                    fallbackIcon: Icons.dvr,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class EPGProgramsGrid extends StatelessWidget {
  final List<Channel> channels;
  final IncrementalEpgService epgService;
  final bool isLoadingMore;
  final ScrollController horizontalController;
  final ScrollController verticalController;
  final double gridWidth;
  final Function(Program) onProgramTap;

  const EPGProgramsGrid({
    super.key,
    required this.channels,
    required this.epgService,
    required this.isLoadingMore,
    required this.horizontalController,
    required this.verticalController,
    required this.gridWidth,
    required this.onProgramTap,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: horizontalController,
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: SizedBox(
        width: gridWidth,
        child: ListView.builder(
          controller: verticalController,
          physics: const ClampingScrollPhysics(),
          itemCount: channels.length + (isLoadingMore ? 1 : 0),
          itemExtent: 64,
          itemBuilder: (context, index) {
            if (index >= channels.length) {
              return const SizedBox(height: 64);
            }
            return EPGProgramRow(
              channel: channels[index],
              epgService: epgService,
              onProgramTap: onProgramTap,
            );
          },
        ),
      ),
    );
  }
}

class EPGProgramRow extends StatelessWidget {
  final Channel channel;
  final IncrementalEpgService epgService;
  final Function(Program) onProgramTap;

  const EPGProgramRow({
    super.key,
    required this.channel,
    required this.epgService,
    required this.onProgramTap,
  });

  @override
  Widget build(BuildContext context) {
    final channelKey = channel.tvgId ?? channel.id;
    final programs = epgService.getProgramsForChannel(channelKey);

    final now = DateTime.now();
    final startHour = now.hour;
    final displayStart = DateTime(now.year, now.month, now.day, startHour);
    final displayEnd = displayStart.add(const Duration(hours: 12));

    final dayPrograms = programs.where((program) {
      return program.startTime.isBefore(displayEnd) && program.endTime.isAfter(displayStart);
    }).toList();

    const cellWidth = 240.0;
    const totalWidth = 12 * cellWidth;

    return Container(
      height: 64,
      width: totalWidth,
      margin: const EdgeInsets.only(bottom: 4, left: 0),
      child: dayPrograms.isEmpty
          ? Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                'No EPG data',
                style: TextStyle(fontSize: 12, color: Colors.white.withValues(alpha: 0.5)),
              ),
            )
          : EPGVirtualProgramRow(
              programs: dayPrograms,
              displayStart: displayStart,
              cellWidth: cellWidth,
              totalWidth: totalWidth,
              onProgramTap: onProgramTap,
            ),
    );
  }
}

class EPGVirtualProgramRow extends StatelessWidget {
  final List<Program> programs;
  final DateTime displayStart;
  final double cellWidth;
  final double totalWidth;
  final Function(Program) onProgramTap;

  const EPGVirtualProgramRow({
    super.key,
    required this.programs,
    required this.displayStart,
    required this.cellWidth,
    required this.totalWidth,
    required this.onProgramTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.hardEdge,
      children: programs.map((program) {
        final programStart = program.startTime.isBefore(displayStart) ? displayStart : program.startTime;
        final programEnd = program.endTime.isAfter(displayStart.add(const Duration(hours: 12)))
            ? displayStart.add(const Duration(hours: 12)) : program.endTime;

        final minutesFromStart = programStart.difference(displayStart).inMinutes;
        final leftOffset = (minutesFromStart / 60) * cellWidth;
        final visibleDuration = programEnd.difference(programStart).inMinutes;
        final width = ((visibleDuration / 60) * cellWidth).clamp(30.0, totalWidth - leftOffset);

        return Positioned(
          left: leftOffset,
          top: 0,
          height: 64,
          width: width,
          child: Container(
            margin: const EdgeInsets.only(right: 2),
            child: EPGProgramCell(
              program: program,
              onTap: () => onProgramTap(program),
            ),
          ),
        );
      }).toList(),
    );
  }
}

class EPGProgramCell extends StatelessWidget {
  final Program program;
  final VoidCallback onTap;

  const EPGProgramCell({
    super.key,
    required this.program,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isLive = program.isCurrentlyPlaying;
    final hasCatchup = program.hasCatchup;

    const epgLiveColor = AppColors.epgLive;
    const epgCatchupColor = AppColors.epgCatchup;

    return Focus(
      canRequestFocus: true,
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          return Container(
            margin: const EdgeInsets.only(right: 4),
            decoration: BoxDecoration(
              color: isLive
                  ? epgLiveColor.withValues(alpha: 0.25)
                  : hasCatchup
                      ? epgCatchupColor.withValues(alpha: 0.2)
                      : const Color(0xFF2a2a3e).withValues(alpha: 0.6),
              borderRadius: BorderRadius.circular(8),
              border: isFocused
                  ? Border.all(color: AppTheme.primaryBlue, width: 2)
                  : Border.all(color: Colors.white.withValues(alpha: 0.1), width: 1),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
                borderRadius: BorderRadius.circular(4),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          if (hasCatchup) ...[ 
                            const Icon(Icons.replay, size: 10, color: epgCatchupColor),
                            const SizedBox(width: 3),
                          ],
                          Expanded(
                            child: Text(
                              program.title,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: isLive ? FontWeight.w600 : FontWeight.normal,
                                color: Colors.white.withValues(alpha: 0.9),
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '${DateFormat.jm().format(program.startTime)} - ${DateFormat.jm().format(program.endTime)}',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white.withValues(alpha: 0.6),
                        ),
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}