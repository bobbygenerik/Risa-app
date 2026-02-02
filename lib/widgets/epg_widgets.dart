import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/app_colors.dart';
import 'package:iptv_player/utils/app_spacing.dart';
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
  final void Function(int index)? onFocusCategoryAtIndex;
  final VoidCallback? onFocusRefresh;
  final VoidCallback? onFocusPrograms;
  final ValueChanged<Channel>? onFocusProgramForChannel;
  final FocusNode? Function(Channel channel, int index)?
      channelFocusNodeForChannel;

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
    this.onFocusCategoryAtIndex,
    this.onFocusRefresh,
    this.onFocusPrograms,
    this.onFocusProgramForChannel,
    this.channelFocusNodeForChannel,
  });

  @override
  Widget build(BuildContext context) {
    const rowHeight = AppSpacing.epgRowHeight;
    const rowGap = 4.0;
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
        itemExtent: rowHeight + rowGap,
        cacheExtent: (rowHeight + rowGap) *
            15, // Cache more items for smoother scrolling
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
            focusNode: channelFocusNodeForChannel != null
                ? channelFocusNodeForChannel!.call(channels[index], index)
                : (index == 0 ? firstChannelFocusNode : null),
            onMoveLeft: onFocusCategoryAtIndex != null
                ? () => onFocusCategoryAtIndex!(index)
                : onFocusCategories,
            onMoveUpFromFirst: index == 0 ? onFocusRefresh : null,
            onMoveRight: onFocusProgramForChannel == null
                ? onFocusPrograms
                : () => onFocusProgramForChannel!.call(channels[index]),
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
    const rowHeight = AppSpacing.epgRowHeight;
    const rowGap = 4.0;
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
          height: rowHeight,
          margin: const EdgeInsets.only(bottom: rowGap, right: 4),
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
                channelName: widget.channel.name,
                tvgId: widget.channel.tvgId,
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
  final FocusNode? Function(Channel channel)? programFocusNodeForChannel;
  final void Function(Channel channel, int index)? onRequestChannelFocus;
  final VoidCallback? onFocusHeader;

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
    this.programFocusNodeForChannel,
    this.onRequestChannelFocus,
    this.onFocusHeader,
  });

  @override
  Widget build(BuildContext context) {
    const rowHeight = AppSpacing.epgRowHeight;
    const rowGap = 4.0;
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
          itemExtent: rowHeight + rowGap,
          cacheExtent: (rowHeight + rowGap) * 10, // Cache 10 items ahead/behind
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
              currentProgramFocusNode:
                  programFocusNodeForChannel?.call(channels[index]),
              onMoveLeft: onRequestChannelFocus == null
                  ? null
                  : () => onRequestChannelFocus!.call(channels[index], index),
              onMoveUpFromFirst: index == 0 ? onFocusHeader : null,
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
  final FocusNode? currentProgramFocusNode;
  final VoidCallback? onMoveLeft;
  final VoidCallback? onMoveUpFromFirst;

  const EPGProgramRow({
    super.key,
    required this.channel,
    required this.epgService,
    required this.onProgramTap,
    this.isFirstRow = false,
    this.firstProgramFocusNode,
    this.currentProgramFocusNode,
    this.onMoveLeft,
    this.onMoveUpFromFirst,
  });

  @override
  Widget build(BuildContext context) {
    final channelKey = channel.epgLookupId;
    epgService.ensureChannelLoaded(channelKey,
        channelName: channel.epgLookupNameFallback);

    const rowHeight = AppSpacing.epgRowHeight;
    const rowGap = 4.0;
    const cellWidth = 240.0;
    const totalWidth = 12 * cellWidth;

    final programs = epgService.getProgramsForChannel(
      channelKey,
      channelName: channel.epgLookupNameFallback,
      groupTitle: channel.groupTitle,
    );

    final now = DateTime.now();
    final startHour = now.hour;
    final displayStart = DateTime(now.year, now.month, now.day, startHour);
    final displayEnd = displayStart.add(const Duration(hours: 12));

    final dayPrograms = programs.where((program) {
      return program.startTime.isBefore(displayEnd) &&
          program.endTime.isAfter(displayStart);
    }).toList();

    final focusIndex = dayPrograms.indexWhere((program) {
      return program.isCurrentlyPlaying;
    });

    final isBusy = epgService.isLoading ||
        epgService.isParsing ||
        epgService.isDownloading;
    return Container(
      height: rowHeight,
      width: totalWidth,
      margin: const EdgeInsets.only(bottom: rowGap, left: 0),
      child: dayPrograms.isEmpty
          ? _buildFocusablePlaceholder(
              label: isBusy ? 'Loading EPG...' : 'No EPG data',
              focusNode: currentProgramFocusNode,
              onMoveLeft: onMoveLeft,
              onMoveUp: isFirstRow ? onMoveUpFromFirst : null,
            )
          : EPGVirtualProgramRow(
              programs: dayPrograms,
              displayStart: displayStart,
              cellWidth: cellWidth,
              totalWidth: totalWidth,
              onProgramTap: onProgramTap,
              isFirstRow: isFirstRow,
              firstProgramFocusNode: firstProgramFocusNode,
              currentProgramFocusNode: currentProgramFocusNode,
              focusProgramIndex: focusIndex >= 0 ? focusIndex : 0,
              onMoveLeft: onMoveLeft,
              onMoveUpFromFirst: onMoveUpFromFirst,
            ),
    );
  }

  Widget _buildFocusablePlaceholder({
    required String label,
    FocusNode? focusNode,
    VoidCallback? onMoveLeft,
    VoidCallback? onMoveUp,
  }) {
    const rowHeight = AppSpacing.epgRowHeight;
    return Focus(
      focusNode: focusNode,
      canRequestFocus: focusNode != null,
      onKeyEvent: (node, event) {
        final moveLeft = onMoveLeft;
        final moveUp = onMoveUp;
        if (event is KeyDownEvent) {
          if (event.logicalKey == LogicalKeyboardKey.arrowLeft &&
              moveLeft != null) {
            moveLeft();
            return KeyEventResult.handled;
          }
          if (event.logicalKey == LogicalKeyboardKey.arrowUp &&
              moveUp != null) {
            moveUp();
            return KeyEventResult.handled;
          }
        }
        return KeyEventResult.ignored;
      },
      child: Builder(builder: (context) {
        final isFocused = Focus.of(context).hasFocus;
          return Container(
            height: rowHeight,
            width: 12 * 240.0, // totalWidth
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 12),
            decoration: BoxDecoration(
              color: const Color(0xFF2a2a3e).withValues(alpha: 0.3),
              borderRadius: BorderRadius.circular(8),
              border: isFocused
                  ? Border.all(color: AppTheme.focusBorder, width: 3)
                  : Border.all(
                      color: Colors.white.withValues(alpha: 0.1), width: 1),
              boxShadow: isFocused
                  ? [
                      BoxShadow(
                        color: AppTheme.focusBorder.withValues(alpha: 0.6),
                        blurRadius: 8,
                        spreadRadius: 1,
                      ),
                    ]
                  : null,
            ),
          child: Text(
            label,
            style: TextStyle(
                fontSize: 12, color: Colors.white.withValues(alpha: 0.5)),
          ),
        );
      }),
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
  final FocusNode? currentProgramFocusNode;
  final int? focusProgramIndex;
  final VoidCallback? onMoveLeft;
  final VoidCallback? onMoveUpFromFirst;

  const EPGVirtualProgramRow({
    super.key,
    required this.programs,
    required this.displayStart,
    required this.cellWidth,
    required this.totalWidth,
    required this.onProgramTap,
    this.isFirstRow = false,
    this.firstProgramFocusNode,
    this.currentProgramFocusNode,
    this.focusProgramIndex,
    this.onMoveLeft,
    this.onMoveUpFromFirst,
  });

  @override
  Widget build(BuildContext context) {
    const rowHeight = AppSpacing.epgRowHeight;
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

        // Assign focus node: first program gets firstProgramFocusNode,
        // current playing program gets currentProgramFocusNode
        FocusNode? resolvedFocusNode;
        if (isFirstRow && programIndex == 0) {
          resolvedFocusNode = firstProgramFocusNode;
        } else if ((focusProgramIndex != -1 && focusProgramIndex == programIndex) ||
                   (focusProgramIndex == -1 && programIndex == 0)) {
                   // Assign to live program OR first program if none live
          resolvedFocusNode = currentProgramFocusNode;
        }
        
        final isClippedLeft = program.startTime.isBefore(displayStart);

        return Positioned(
          left: leftOffset,
          top: 0,
          height: rowHeight,
          width: width,
          child: EPGProgramCell(
            program: program,
            onTap: () => onProgramTap(program),
            focusNode: resolvedFocusNode,
            onMoveLeft: onMoveLeft,
            onMoveUp: isFirstRow ? onMoveUpFromFirst : null,
            isClippedLeft: isClippedLeft,
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
  final VoidCallback? onMoveLeft;
  final VoidCallback? onMoveUp;
  final bool isClippedLeft;

  const EPGProgramCell({
    super.key,
    required this.program,
    required this.onTap,
    this.focusNode,
    this.onMoveLeft,
    this.onMoveUp,
    this.isClippedLeft = false, // Default to false
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
      onKeyEvent: (node, event) {
        final moveLeft = onMoveLeft;
        final moveUp = onMoveUp;
        if (event is KeyDownEvent) {
          if (event.logicalKey == LogicalKeyboardKey.arrowLeft &&
              moveLeft != null) {
            moveLeft();
            return KeyEventResult.handled;
          }
          if (event.logicalKey == LogicalKeyboardKey.arrowUp &&
              moveUp != null) {
            moveUp();
            return KeyEventResult.handled;
          }
        }
        return KeyEventResult.ignored;
      },
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
                  ? Border.all(color: AppTheme.focusBorder, width: 3)
                  : Border.all(
                      color: Colors.white.withValues(alpha: 0.1), width: 1),
              boxShadow: isFocused
                  ? [
                      BoxShadow(
                        color: AppTheme.focusBorder.withValues(alpha: 0.6),
                        blurRadius: 8,
                        spreadRadius: 1,
                      ),
                    ]
                  : null,
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
