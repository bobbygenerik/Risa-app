import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  final FocusNode? firstChannelFocusNode;
  final VoidCallback? onFocusCategories;
  final VoidCallback? onFocusRefresh;
  final VoidCallback? onFocusPrograms;

  const EPGChannelSidebar({
    super.key,
    required this.channels,
    required this.isLoadingMore,
    required this.onLoadMore,
    required this.onChannelTap,
    required this.onChannelLongPress,
    required this.controller,
    this.firstChannelFocusNode,
    this.onFocusCategories,
    this.onFocusRefresh,
    this.onFocusPrograms,
  });

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification is ScrollEndNotification &&
            notification.metrics.pixels >=
                notification.metrics.maxScrollExtent - 200) {
          onLoadMore();
        }
        return false;
      },
      child: ListView.builder(
        controller: controller,
        physics: const ClampingScrollPhysics(),
        itemCount: channels.length + (isLoadingMore ? 1 : 0),
        itemExtent: 68,
        cacheExtent: 68 * 15, // Cache more items for smoother scrolling
        addAutomaticKeepAlives: true, // Keep channel widgets alive
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
            key: ValueKey(channels[index].id), // Add key for better performance
            channel: channels[index],
            onTap: () => onChannelTap(channels[index]),
            onLongPress: () => onChannelLongPress(channels[index]),
            focusNode: index == 0 ? firstChannelFocusNode : null,
            onMoveLeft: onFocusCategories,
            onMoveUpFromFirst: index == 0 ? onFocusRefresh : null,
            onMoveRight: onFocusPrograms,
          );
        },
      ),
    );
  }
}

class EPGChannelItem extends StatefulWidget {
  final Channel channel;
  final VoidCallback onTap;
  final VoidCallback onLongPress;
  final FocusNode? focusNode;
  final VoidCallback? onMoveLeft;
  final VoidCallback? onMoveUpFromFirst;
  final VoidCallback? onMoveRight;

  const EPGChannelItem({
    super.key,
    required this.channel,
    required this.onTap,
    required this.onLongPress,
    this.focusNode,
    this.onMoveLeft,
    this.onMoveUpFromFirst,
    this.onMoveRight,
  });

  @override
  State<EPGChannelItem> createState() => _EPGChannelItemState();
}

class _EPGChannelItemState extends State<EPGChannelItem> {
  bool _isFocused = false;
  
  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: widget.focusNode,
      canRequestFocus: true,
      onFocusChange: (focused) {
        if (_isFocused != focused) {
          setState(() => _isFocused = focused);
        }
      },
      onKeyEvent: (node, event) {
        if (event is KeyDownEvent) {
          if (event.logicalKey == LogicalKeyboardKey.select ||
              event.logicalKey == LogicalKeyboardKey.enter) {
            widget.onTap();
            return KeyEventResult.handled;
          }
          if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
            if (widget.onMoveLeft == null) {
              return KeyEventResult.ignored;
            }
            widget.onMoveLeft!.call();
            return KeyEventResult.handled;
          }
          if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
            if (widget.onMoveRight == null) {
              return KeyEventResult.ignored;
            }
            widget.onMoveRight!.call();
            return KeyEventResult.handled;
          }
          if (event.logicalKey == LogicalKeyboardKey.arrowUp &&
              widget.onMoveUpFromFirst != null) {
            widget.onMoveUpFromFirst!.call();
            return KeyEventResult.handled;
          }
        }
        return KeyEventResult.ignored;
      },
      child: GestureDetector(
        onTap: widget.onTap,
        onLongPress: widget.onLongPress,
        child: Container(
          height: 64,
          margin: const EdgeInsets.only(bottom: 4, right: 2),
          decoration: BoxDecoration(
            color: const Color(0xFF2a2a3e).withValues(alpha: 0.4),
            borderRadius: BorderRadius.circular(8),
            border: _isFocused
                ? Border.all(color: AppTheme.focusBorder, width: 2)
                : Border.all(
                    color: Colors.white.withValues(alpha: 0.1), width: 1),
          ),
          child: Center(
            child: SizedBox(
              width: 48,
              height: 48,
              child: CachedChannelLogo(
                logoUrl: widget.channel.logoUrl,
                size: 48,
                cacheWidth: 96,
                cacheHeight: 96,
                fallbackIcon: Icons.dvr,
              ),
            ),
          ),
        ),
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
  final FocusNode? firstProgramFocusNode;

  const EPGProgramsGrid({
    super.key,
    required this.channels,
    required this.epgService,
    required this.isLoadingMore,
    required this.horizontalController,
    required this.verticalController,
    required this.gridWidth,
    required this.onProgramTap,
    this.firstProgramFocusNode,
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
          itemExtent: 68,
          cacheExtent: 68 * 10, // Cache 10 items ahead/behind
          itemBuilder: (context, index) {
            if (index >= channels.length) {
              return const SizedBox(height: 64);
            }
            return EPGProgramRow(
              channel: channels[index],
              epgService: epgService,
              onProgramTap: onProgramTap,
              isFirstRow: index == 0,
              firstProgramFocusNode: firstProgramFocusNode,
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
  final bool isFirstRow;
  final FocusNode? firstProgramFocusNode;

  const EPGProgramRow({
    super.key,
    required this.channel,
    required this.epgService,
    required this.onProgramTap,
    this.isFirstRow = false,
    this.firstProgramFocusNode,
  });

  @override
  Widget build(BuildContext context) {
    final channelKey = channel.tvgId ?? channel.id;
    epgService.ensureChannelLoaded(channelKey, channelName: channel.name);
    
    // Check if EPG data is available for this channel
    final hasEpgData = epgService.hasEpgData(channelKey);
    if (!hasEpgData) {
      return Container(
        height: 64,
        width: 12 * 240.0, // totalWidth
        margin: const EdgeInsets.only(bottom: 4, left: 0),
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 12),
        child: Text(
          'Loading EPG...',
          style: TextStyle(
              fontSize: 12, color: Colors.white.withValues(alpha: 0.5)),
        ),
      );
    }
    
    final programs =
        epgService.getProgramsForChannel(channelKey, channelName: channel.name);

    final now = DateTime.now();
    final startHour = now.hour;
    final displayStart = DateTime(now.year, now.month, now.day, startHour);
    final displayEnd = displayStart.add(const Duration(hours: 12));

    final dayPrograms = programs.where((program) {
      return program.startTime.isBefore(displayEnd) &&
          program.endTime.isAfter(displayStart);
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
                style: TextStyle(
                    fontSize: 12, color: Colors.white.withValues(alpha: 0.5)),
              ),
            )
          : EPGVirtualProgramRow(
              programs: dayPrograms,
              displayStart: displayStart,
              cellWidth: cellWidth,
              totalWidth: totalWidth,
              onProgramTap: onProgramTap,
              isFirstRow: isFirstRow,
              firstProgramFocusNode: firstProgramFocusNode,
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
  final bool isFirstRow;
  final FocusNode? firstProgramFocusNode;

  const EPGVirtualProgramRow({
    super.key,
    required this.programs,
    required this.displayStart,
    required this.cellWidth,
    required this.totalWidth,
    required this.onProgramTap,
    this.isFirstRow = false,
    this.firstProgramFocusNode,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.hardEdge,
      children: programs.asMap().entries.map((entry) {
        final programIndex = entry.key;
        final program = entry.value;
        final programStart = program.startTime.isBefore(displayStart)
            ? displayStart
            : program.startTime;
        final programEnd =
            program.endTime.isAfter(displayStart.add(const Duration(hours: 12)))
                ? displayStart.add(const Duration(hours: 12))
                : program.endTime;

        final minutesFromStart =
            programStart.difference(displayStart).inMinutes;
        final leftOffset = (minutesFromStart / 60) * cellWidth;
        final visibleDuration = programEnd.difference(programStart).inMinutes;
        if (leftOffset >= totalWidth || visibleDuration <= 0) {
          return const SizedBox.shrink();
        }
        const minWidth = 30.0;
        final rawWidth = (visibleDuration / 60) * cellWidth;
        final maxWidth = math.max(minWidth, totalWidth - leftOffset);
        final width = rawWidth.clamp(minWidth, maxWidth);

        final focusNode =
            isFirstRow && programIndex == 0 ? firstProgramFocusNode : null;
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
              focusNode: focusNode,
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
  final FocusNode? focusNode;

  const EPGProgramCell({
    super.key,
    required this.program,
    required this.onTap,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    final isLive = program.isCurrentlyPlaying;
    final hasCatchup = program.hasCatchup;

    const epgLiveColor = AppColors.epgLive;
    const epgCatchupColor = AppColors.epgCatchup;

    return Focus(
      focusNode: focusNode,
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
                  ? Border.all(color: AppTheme.focusBorder, width: 2)
                  : Border.all(
                      color: Colors.white.withValues(alpha: 0.1), width: 1),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
                borderRadius: BorderRadius.circular(4),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          if (hasCatchup) ...[
                            const Icon(Icons.replay,
                                size: 10, color: epgCatchupColor),
                            const SizedBox(width: 3),
                          ],
                          Expanded(
                            child: Text(
                              program.title,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: isLive
                                    ? FontWeight.w600
                                    : FontWeight.normal,
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
