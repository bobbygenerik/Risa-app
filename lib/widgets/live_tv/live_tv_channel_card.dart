import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/services/http_client_service.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/image_failure_cache.dart';
import 'package:iptv_player/utils/image_url_helper.dart';
import 'package:iptv_player/utils/logo_image_cache.dart';
import 'package:iptv_player/widgets/brand_badge.dart';
import 'package:iptv_player/widgets/tv_focusable.dart';

/// Data class for EPG information to minimize rebuilds.
class EpgCardData {
  const EpgCardData({
    required this.program,
    required this.hasUsableData,
    required this.isLoading,
  });

  final Program? program;
  final bool hasUsableData;
  final bool isLoading;
}

/// Callback signatures for channel card events.
typedef OnChannelTap = void Function(Channel channel);
typedef OnChannelLongPress = void Function(Channel channel);
typedef GetImageUrlCallback = String? Function(
    Program? program, Channel? channel, bool allowPrefetch,
    {bool highPriority});
typedef DisplayTitleCallback = String Function(Program program, Channel channel);
typedef FormatTimeCallback = String Function(DateTime dt);
typedef NavigationFocusCallback = bool Function();
typedef BuildFallbackCallback = Widget Function(Program? program, Channel channel);
typedef BuildLogoCallback = Widget Function(
    Channel channel, Program? program, int cacheWidth, int cacheHeight);
typedef BuildAdaptiveImageCallback = Widget Function(
    BuildContext context,
    String imageUrl,
    BoxFit fit,
    int cacheWidth,
    int cacheHeight,
    Widget fallback);

/// A reusable channel card widget for Live TV.
/// Extracted from LiveTVScreen to improve maintainability.
class LiveTvChannelCard extends StatelessWidget {
  const LiveTvChannelCard({
    super.key,
    required this.channel,
    required this.cardWidth,
    required this.cardHeight,
    required this.allowPrefetch,
    required this.isFirstRow,
    required this.onTap,
    required this.onLongPress,
    required this.requestNavigationFocus,
    required this.getImageUrl,
    required this.displayTitle,
    required this.formatTime,
    required this.buildFallback,
    required this.buildLogo,
    required this.buildAdaptiveImage,
    required this.matchesChannelLogo,
    this.focusNode,
    this.onFocusChange,
    this.rowScrollController,
  });

  final Channel channel;
  final double cardWidth;
  final double cardHeight;
  final bool allowPrefetch;
  final bool isFirstRow;
  final OnChannelTap onTap;
  final OnChannelLongPress onLongPress;
  final NavigationFocusCallback requestNavigationFocus;
  final GetImageUrlCallback getImageUrl;
  final DisplayTitleCallback displayTitle;
  final FormatTimeCallback formatTime;
  final BuildFallbackCallback buildFallback;
  final BuildLogoCallback buildLogo;
  final BuildAdaptiveImageCallback buildAdaptiveImage;
  final bool Function(String url, Channel channel) matchesChannelLogo;
  final FocusNode? focusNode;
  final void Function(bool hasFocus)? onFocusChange;
  final ScrollController? rowScrollController;

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: ValueKey<String>('channel_card_${channel.id}'),
      child: Focus(
        focusNode: focusNode,
        onFocusChange: onFocusChange,
        onKeyEvent: (node, event) {
          if (event is KeyDownEvent) {
            if (event.logicalKey == LogicalKeyboardKey.select ||
                event.logicalKey == LogicalKeyboardKey.enter) {
              onTap(channel);
              return KeyEventResult.handled;
            }
            if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
              // Check if at start of scroll
              if (rowScrollController != null &&
                  rowScrollController!.hasClients &&
                  rowScrollController!.offset > 0) {
                rowScrollController!.animateTo(
                  rowScrollController!.position.minScrollExtent,
                  duration: const Duration(milliseconds: 220),
                  curve: Curves.easeOutCubic,
                );
                return KeyEventResult.handled;
              }
              final moved = requestNavigationFocus();
              return moved ? KeyEventResult.handled : KeyEventResult.ignored;
            }
            if (event.logicalKey == LogicalKeyboardKey.contextMenu ||
                event.logicalKey == LogicalKeyboardKey.info ||
                event.logicalKey == LogicalKeyboardKey.keyM) {
              onLongPress(channel);
              return KeyEventResult.handled;
            }
          }
          return KeyEventResult.ignored;
        },
        child: Selector<IncrementalEpgService, EpgCardData>(
          selector: (context, epgService) {
            final channelId = channel.epgLookupId;
            final program = epgService.getCurrentProgram(
              channelId,
              channelName: channel.epgLookupName,
              groupTitle: channel.groupTitle,
            );
            return EpgCardData(
              program: program,
              hasUsableData: epgService.hasUsableData,
              isLoading: epgService.isLoading ||
                  epgService.isParsing ||
                  epgService.isDownloading,
            );
          },
          shouldRebuild: (previous, next) {
            final prevId = previous.program?.id;
            final nextId = next.program?.id;
            final prevTitle = previous.program?.title;
            final nextTitle = next.program?.title;

            if (prevId == null && nextId == null) {
              return previous.isLoading && !next.isLoading;
            }
            if (prevId != nextId) return true;
            if (prevTitle != nextTitle) return true;
            return false;
          },
          builder: (context, epgData, _) {
            final isFocused = Focus.of(context).hasFocus;

            return GestureDetector(
              onTap: () => onTap(channel),
              onLongPress: () => onLongPress(channel),
              child: AnimatedScale(
                scale: isFocused ? 1.05 : 1.0,
                duration: TVFocusStyle.animationDuration,
                curve: TVFocusStyle.animationCurve,
                alignment: Alignment.topCenter,
                child: _buildCardContent(
                  context,
                  epgData.program,
                  isFocused,
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildCardContent(
    BuildContext context,
    Program? currentProgram,
    bool isFocused,
  ) {
    final displayTitleText = currentProgram == null
        ? ''
        : displayTitle(currentProgram, channel);
    final progress = currentProgram?.progressPercentage ?? 0.0;
    final imageUrl = getImageUrl(
      currentProgram,
      channel,
      allowPrefetch,
      highPriority: isFirstRow,
    );
    final normalizedImageUrl =
        imageUrl == null ? null : normalizeImageUrl(imageUrl);
    final isLogoBackdrop = normalizedImageUrl != null &&
        matchesChannelLogo(normalizedImageUrl, channel);
    final hasChannelLogo =
        channel.logoUrl != null && channel.logoUrl!.isNotEmpty;
    final hideCornerLogo =
        isLogoBackdrop || (normalizedImageUrl == null && hasChannelLogo);
    final dpr = MediaQuery.of(context).devicePixelRatio;
    final cacheWidth = math.min(800, (cardWidth * dpr).round());
    final cacheHeight = math.min(800, (cardHeight * dpr).round());
    final logoCacheWidth = (150 * dpr).round();
    final logoCacheHeight = (80 * dpr).round();
    final fallback = buildFallback(currentProgram, channel);

    final hasMinimumData = currentProgram != null &&
        currentProgram.title.isNotEmpty &&
        (channel.logoUrl?.isNotEmpty == true || imageUrl != null);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AnimatedContainer(
          duration: TVFocusStyle.animationDuration,
          curve: TVFocusStyle.animationCurve,
          width: cardWidth,
          height: cardHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppTheme.cardBackground,
            border: Border.all(
              color: isFocused
                  ? AppTheme.focusBorder
                  : Colors.white.withValues(alpha: 0.08),
              width: isFocused ? 3 : 1,
            ),
            boxShadow: isFocused
                ? TVFocusStyle.focusedShadow
                : [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.35),
                      blurRadius: 14,
                      offset: const Offset(0, 8),
                    ),
                  ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Stack(
              children: [
                if (normalizedImageUrl != null)
                  Positioned.fill(
                    child: buildAdaptiveImage(
                      context,
                      normalizedImageUrl,
                      BoxFit.cover,
                      cacheWidth,
                      cacheHeight,
                      fallback,
                    ),
                  )
                else
                  Positioned.fill(child: fallback),
                if (!hideCornerLogo)
                  Positioned(
                    top: 6,
                    left: 6,
                    child: SizedBox(
                      width: 40,
                      height: 24,
                      child: buildLogo(
                        channel,
                        currentProgram,
                        logoCacheWidth,
                        logoCacheHeight,
                      ),
                    ),
                  ),
                // Status badges
                _buildStatusBadge(currentProgram, hasMinimumData),
                // Progress bar
                if (currentProgram != null)
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: SizedBox(
                      height: 4,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                        child: LinearProgressIndicator(
                          value: progress,
                          backgroundColor: Colors.black.withValues(alpha: 0.4),
                          color: AppTheme.primaryBlue,
                          minHeight: 4,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
        // Program info
        _buildProgramInfo(context, currentProgram, displayTitleText),
      ],
    );
  }

  Widget _buildStatusBadge(Program? currentProgram, bool hasMinimumData) {
    if (currentProgram == null) {
      return const Positioned(
        top: 8,
        right: 8,
        child: BrandBadge.noEpg(fontSize: 8),
      );
    } else if (!hasMinimumData) {
      return Positioned(
        top: 8,
        right: 8,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
          decoration: BoxDecoration(
            color: Colors.orange.withValues(alpha: 0.8),
            borderRadius: BorderRadius.circular(4),
          ),
          child: const Text(
            'Limited Data',
            style: TextStyle(
              color: Colors.white,
              fontSize: 8,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    } else {
      return const Positioned(
        top: 8,
        right: 8,
        child: BrandBadge.live(fontSize: 8),
      );
    }
  }

  Widget _buildProgramInfo(
    BuildContext context,
    Program? currentProgram,
    String displayTitleText,
  ) {
    if (currentProgram != null && currentProgram.title.isNotEmpty) {
      return Column(
        children: [
          const SizedBox(height: 4),
          SizedBox(
            width: cardWidth,
            child: Text(
              displayTitleText,
              style: TextStyle(
                color: Colors.white.withValues(alpha: 0.9),
                fontSize: 11,
                fontWeight: FontWeight.w500,
                height: 1.1,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 2),
          SizedBox(
            width: cardWidth,
            child: Text(
              '${formatTime(currentProgram.startTime)} - ${formatTime(currentProgram.endTime)}',
              style: TextStyle(
                color: Colors.white.withValues(alpha: 0.6),
                fontSize: 10,
                height: 1.1,
              ),
            ),
          ),
        ],
      );
    } else if (channel.name.isNotEmpty) {
      return Column(
        children: [
          const SizedBox(height: 4),
          SizedBox(
            width: cardWidth,
            child: Text(
              channel.name,
              style: TextStyle(
                color: Colors.white.withValues(alpha: 0.9),
                fontSize: 11,
                fontWeight: FontWeight.w500,
                height: 1.1,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 2),
          SizedBox(
            width: cardWidth,
            child: const Text(
              'No program data',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                height: 1.1,
              ),
            ),
          ),
        ],
      );
    }
    return const SizedBox.shrink();
  }
}

/// Helper widget to build channel logos with caching.
class ChannelLogoWidget extends StatelessWidget {
  const ChannelLogoWidget({
    super.key,
    required this.channel,
    this.width = 40,
    this.height = 24,
    this.cacheWidth = 150,
    this.cacheHeight = 80,
  });

  final Channel channel;
  final double width;
  final double height;
  final int cacheWidth;
  final int cacheHeight;

  @override
  Widget build(BuildContext context) {
    if (channel.logoUrl == null || channel.logoUrl!.isEmpty) {
      return const SizedBox.shrink();
    }

    final url = normalizeImageUrl(channel.logoUrl!);
    if (ImageFailureCache.shouldSkip(url)) {
      return const SizedBox.shrink();
    }

    final isSvg = url.toLowerCase().endsWith('.svg') ||
        url.toLowerCase().contains('.svg?');

    if (isSvg) {
      return Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: Colors.black.withValues(alpha: 0.4),
          borderRadius: BorderRadius.circular(4),
        ),
        child: SvgPicture.network(
          url,
          width: width - 6,
          height: height - 6,
          fit: BoxFit.contain,
          headers: HttpClientService().imageHeaders,
          placeholderBuilder: (_) => const SizedBox.shrink(),
        ),
      );
    }

    final provider = LogoImageCache.providerFor(
      url,
      headers: HttpClientService().imageHeaders,
    );

    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.4),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Image(
        image: provider,
        fit: BoxFit.contain,
        filterQuality: FilterQuality.high,
        frameBuilder: (context, child, frame, wasSync) {
          if (wasSync || frame != null) {
            ImageFailureCache.recordSuccess(url);
            return child;
          }
          return const SizedBox.shrink();
        },
        errorBuilder: (context, error, stackTrace) {
          ImageFailureCache.recordFailure(url, error);
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
