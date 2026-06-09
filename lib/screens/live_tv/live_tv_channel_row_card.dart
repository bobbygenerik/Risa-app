import 'dart:async';
import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/screens/live_tv/artwork/artwork_slot.dart';
import 'package:iptv_player/screens/live_tv/artwork/card_artwork_policy.dart';
import 'package:iptv_player/screens/live_tv/artwork/guarded_artwork_image.dart';
import 'package:iptv_player/screens/live_tv/live_tv_card_fallbacks.dart';
import 'package:iptv_player/screens/live_tv/live_tv_formatters.dart';
import 'package:iptv_player/screens/live_tv/live_tv_models.dart';
import 'package:iptv_player/screens/live_tv/live_tv_scroll_navigation.dart';
import 'package:iptv_player/services/http_client_service.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/utils/image_failure_cache.dart';
import 'package:iptv_player/utils/image_load_probe.dart';
import 'package:iptv_player/utils/image_url_helper.dart';
import 'package:iptv_player/utils/network_error_logger.dart';
import 'package:iptv_player/widgets/brand_badge.dart';
import 'package:iptv_player/widgets/channel_logo_widget.dart';
import 'package:iptv_player/widgets/tv_focusable.dart';
import 'package:provider/provider.dart';

typedef LiveTvDisplayTitleFn = String Function(Program program, Channel channel);
typedef LiveTvCardImageFn = String? Function(
  Program? program,
  Channel channel,
  bool allowPrefetch, {
  bool highPriority,
});

/// Focusable channel card for a horizontal Live TV row.
class LiveTvChannelRowCard extends StatelessWidget {
  const LiveTvChannelRowCard({
    super.key,
    required this.channel,
    required this.cardWidth,
    required this.cardHeight,
    required this.rowHeight,
    required this.sectionKey,
    required this.index,
    required this.isFirstRow,
    required this.allowPrefetch,
    required this.rowScrollController,
    required this.mainScrollController,
    required this.watchButtonFocus,
    required this.focusNode,
    required this.onOpenPlayer,
    required this.onShowEpgSelector,
    required this.onItemFocus,
    required this.onFocusIndexChanged,
    required this.onScrollToHeroPeek,
    required this.requestNavigationFocus,
    required this.displayTitle,
    required this.getCardImage,
  });

  final Channel channel;
  final double cardWidth;
  final double cardHeight;
  final double rowHeight;
  final String sectionKey;
  final int index;
  final bool isFirstRow;
  final bool allowPrefetch;
  final ScrollController rowScrollController;
  final ScrollController mainScrollController;
  final FocusNode watchButtonFocus;
  final FocusNode? focusNode;
  final void Function(Channel channel) onOpenPlayer;
  final void Function(Channel channel) onShowEpgSelector;
  final VoidCallback? onItemFocus;
  final void Function(String sectionKey, int index, bool hasFocus)
      onFocusIndexChanged;
  final VoidCallback onScrollToHeroPeek;
  final bool Function() requestNavigationFocus;
  final LiveTvDisplayTitleFn displayTitle;
  final LiveTvCardImageFn getCardImage;

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: SizedBox(
        width: cardWidth,
        height: rowHeight,
        child: Focus(
          focusNode: focusNode,
          canRequestFocus: true,
          onFocusChange: (hasFocus) {
            onFocusIndexChanged(sectionKey, index, hasFocus);
            if (hasFocus) {
              onScrollToHeroPeek();
              onItemFocus?.call();
            }
          },
          onKeyEvent: (node, event) {
            if (event is KeyDownEvent) {
              if (event.logicalKey == LogicalKeyboardKey.select ||
                  event.logicalKey == LogicalKeyboardKey.enter ||
                  event.logicalKey == LogicalKeyboardKey.space) {
                onOpenPlayer(channel);
                return KeyEventResult.handled;
              }
              if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
                if (isFirstRow) {
                  void focusWatch() {
                    if (watchButtonFocus.canRequestFocus) {
                      watchButtonFocus.requestFocus();
                    }
                  }

                  if (mainScrollController.hasClients &&
                      LiveTvScrollNavigation.safeOffset(mainScrollController) >
                          8) {
                    mainScrollController
                        .animateTo(
                      0.0,
                      duration: const Duration(milliseconds: 220),
                      curve: Curves.easeOutCubic,
                    )
                        .then((_) => focusWatch());
                  } else {
                    focusWatch();
                  }
                  return KeyEventResult.handled;
                }
                return KeyEventResult.ignored;
              }
              if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
                return KeyEventResult.ignored;
              }
              if (event.logicalKey == LogicalKeyboardKey.arrowLeft &&
                  index == 0) {
                if (rowScrollController.hasClients &&
                    rowScrollController.offset >
                        rowScrollController.position.minScrollExtent + 1) {
                  rowScrollController.animateTo(
                    rowScrollController.position.minScrollExtent,
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
                onShowEpgSelector(channel);
                return KeyEventResult.handled;
              }
            }
            return KeyEventResult.ignored;
          },
          child: Selector<IncrementalEpgService, LiveTvEpgCardData>(
            selector: (context, epgService) {
              final channelId = channel.epgLookupId;
              final program = epgService.getCurrentProgram(
                channelId,
                channelName: channel.epgLookupNameFallback,
                groupTitle: channel.groupTitle,
              );
              return LiveTvEpgCardData(
                program: program,
                hasUsableData: epgService.hasUsableData,
                isLoading: epgService.isParsing || epgService.isDownloading,
              );
            },
            builder: (context, epgData, _) {
              final isFocused = Focus.of(context).hasFocus;
              final epgService =
                  Provider.of<IncrementalEpgService>(context, listen: false);

              if (allowPrefetch &&
                  epgData.program == null &&
                  epgData.hasUsableData) {
                unawaited(epgService.ensureChannelLoaded(
                  channel.epgLookupId,
                  channelName: channel.epgLookupNameFallback,
                ));
              }

              return GestureDetector(
                onTap: () => onOpenPlayer(channel),
                onLongPress: () => onShowEpgSelector(channel),
                child: AnimatedScale(
                  scale: isFocused ? 1.05 : 1.0,
                  duration: TVFocusStyle.animationDuration,
                  curve: TVFocusStyle.animationCurve,
                  alignment: Alignment.topCenter,
                  child: LiveTvChannelCardContent(
                    channel: channel,
                    currentProgram: epgData.program,
                    isFocused: isFocused,
                    cardWidth: cardWidth,
                    cardHeight: cardHeight,
                    allowPrefetch: allowPrefetch,
                    isFirstRow: isFirstRow,
                    displayTitle: displayTitle,
                    getCardImage: getCardImage,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

/// Visual content for a single channel card (image, badges, program text).
class LiveTvChannelCardContent extends StatefulWidget {
  const LiveTvChannelCardContent({
    super.key,
    required this.channel,
    required this.currentProgram,
    required this.isFocused,
    required this.cardWidth,
    required this.cardHeight,
    required this.allowPrefetch,
    required this.isFirstRow,
    required this.displayTitle,
    required this.getCardImage,
  });

  final Channel channel;
  final Program? currentProgram;
  final bool isFocused;
  final double cardWidth;
  final double cardHeight;
  final bool allowPrefetch;
  final bool isFirstRow;
  final LiveTvDisplayTitleFn displayTitle;
  final LiveTvCardImageFn getCardImage;

  @override
  State<LiveTvChannelCardContent> createState() =>
      _LiveTvChannelCardContentState();
}

class _LiveTvChannelCardContentState extends State<LiveTvChannelCardContent> {
  // True once the decode-time guard rejects the resolved program art, so the
  // big art falls back to the centered channel logo. We hide the small corner
  // logo in that case to avoid the logo-on-logo artifact.
  bool _artRejected = false;
  String? _lastImageUrl;

  @override
  Widget build(BuildContext context) {
    final channel = widget.channel;
    final currentProgram = widget.currentProgram;
    final isFocused = widget.isFocused;
    final cardWidth = widget.cardWidth;
    final cardHeight = widget.cardHeight;
    final allowPrefetch = widget.allowPrefetch;
    final isFirstRow = widget.isFirstRow;
    final displayTitle = widget.displayTitle;
    final getCardImage = widget.getCardImage;

    final displayTitleText = currentProgram == null
        ? ''
        : displayTitle(currentProgram, channel);
    final progress = currentProgram?.progressPercentage ?? 0.0;
    final imageUrl = getCardImage(
      currentProgram,
      channel,
      allowPrefetch,
      highPriority: isFirstRow,
    );
    const cardPolicy = CardArtworkPolicy();
    final normalizedImageUrl =
        imageUrl == null ? null : normalizeImageUrl(imageUrl);
    final hasProgramArt = normalizedImageUrl != null &&
        !ImageFailureCache.shouldSkip(
          normalizedImageUrl,
          slot: ArtworkSlot.card,
        ) &&
        cardPolicy.acceptsCoverLayer(normalizedImageUrl, channel);
    if (normalizedImageUrl != _lastImageUrl) {
      _lastImageUrl = normalizedImageUrl;
      _artRejected = false;
    }
    final showArt = hasProgramArt && !_artRejected;
    final hasChannelLogoForCorner = channel.logoUrl?.isNotEmpty ?? false;
    if (channel.name == 'CWWLVI' ||
        channel.name == 'PBSWGBH' ||
        channel.name.contains('NBCSportsBoston')) {
      final hasChannelLogo =
          channel.logoUrl != null && channel.logoUrl!.isNotEmpty;
      debugLog(
          'LiveTvChannelCardContent: ${channel.name}: hasChannelLogo=$hasChannelLogo, logoUrl=${channel.logoUrl}, imageUrl=$imageUrl');
    }
    final dpr = MediaQuery.of(context).devicePixelRatio;
    final cacheWidth = math.min(800, (cardWidth * dpr).round());
    final cacheHeight = math.min(800, (cardHeight * dpr).round());
    final fallback = LiveTvCardFallbacks.channelCard(currentProgram, channel);

    final hasMinimumData = currentProgram != null &&
        currentProgram.title.isNotEmpty &&
        (channel.logoUrl?.isNotEmpty == true || imageUrl != null);
    final isAiring = currentProgram?.isCurrentlyPlaying ?? false;

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
              width: isFocused ? 4 : 1,
            ),
            boxShadow: isFocused
                ? [
                    ...TVFocusStyle.focusedShadow,
                    BoxShadow(
                      color: AppTheme.focusBorder.withValues(alpha: 0.5),
                      blurRadius: 12,
                      spreadRadius: 2,
                    ),
                  ]
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
                Positioned.fill(child: fallback),
                if (showArt)
                  Positioned.fill(
                    child: LiveTvAdaptiveCardImage(
                      url: normalizedImageUrl,
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                      cacheWidth: cacheWidth,
                      cacheHeight: cacheHeight,
                      fallback: const SizedBox.shrink(),
                      onArtRejected: () {
                        if (_artRejected || !mounted) return;
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          if (mounted && !_artRejected) {
                            setState(() => _artRejected = true);
                          }
                        });
                      },
                    ),
                  ),
                // Small channel logo, top-left, only while real program art is
                // shown — lets the viewer identify the channel without doubling
                // the logo when the card falls back to the centered logo.
                if (showArt && hasChannelLogoForCorner)
                  Positioned(
                    top: 8,
                    left: 8,
                    child: _CardCornerLogo(channel: channel),
                  ),
                if (currentProgram == null)
                  const Positioned(
                    top: 8,
                    right: 8,
                    child: BrandBadge.noEpg(fontSize: 8),
                  )
                else if (!hasMinimumData)
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 2,
                      ),
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
                  )
                else if (isAiring)
                  const Positioned(
                    top: 8,
                    right: 8,
                    child: BrandBadge.live(fontSize: 8),
                  ),
                if (currentProgram != null && isAiring)
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
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
              ],
            ),
          ),
        ),
        if (currentProgram != null && currentProgram.title.isNotEmpty) ...[
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
              '${LiveTvFormatters.formatProgramTime(currentProgram.startTime)} - ${LiveTvFormatters.formatProgramTime(currentProgram.endTime)}',
              style: TextStyle(
                color: Colors.white.withValues(alpha: 0.6),
                fontSize: 10,
                height: 1.1,
              ),
            ),
          ),
        ] else if (channel.name.isNotEmpty) ...[
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
      ],
    );
  }
}

class LiveTvAdaptiveCardImage extends StatelessWidget {
  const LiveTvAdaptiveCardImage({
    super.key,
    required this.url,
    required this.fit,
    this.alignment = Alignment.center,
    required this.cacheWidth,
    required this.cacheHeight,
    required this.fallback,
    this.onArtRejected,
  });

  final String url;
  final BoxFit fit;
  final Alignment alignment;
  final int cacheWidth;
  final int cacheHeight;
  final Widget fallback;
  final VoidCallback? onArtRejected;

  @override
  Widget build(BuildContext context) {
    if (ImageFailureCache.shouldSkip(url, slot: ArtworkSlot.card)) {
      return fallback;
    }
    ImageLoadProbe.recordAttempt(url, 'live_tv_adaptive');
    return CachedNetworkImage(
      imageUrl: url,
      httpHeaders: HttpClientService().imageHeaders,
      fit: fit,
      memCacheWidth: cacheWidth,
      memCacheHeight: cacheHeight,
      fadeInDuration: Duration.zero,
      fadeOutDuration: Duration.zero,
      useOldImageOnUrlChange: true,
      imageBuilder: (context, imageProvider) {
        return GuardedArtworkImage(
          url: url,
          imageProvider: imageProvider,
          slot: ArtworkSlot.card,
          fit: fit,
          alignment: alignment,
          fallback: fallback,
          probeTag: 'live_tv_card',
          onRejected: onArtRejected,
        );
      },
      placeholder: (context, url) => fallback,
      errorWidget: (context, url, err) {
        ImageFailureCache.recordFailure(url, err);
        ImageLoadProbe.recordFailure(url, 'live_tv_card', err);
        logHandshakeIfNeeded(url, err, context: 'LiveTV Adaptive');
        return fallback;
      },
    );
  }
}

/// Small channel-logo badge shown in the top-left corner of a card while real
/// program artwork is displayed.
class _CardCornerLogo extends StatelessWidget {
  const _CardCornerLogo({required this.channel});

  final Channel channel;

  ChannelLogoWidget _logo() => ChannelLogoWidget(
        channelName: channel.name,
        logoUrl: channel.logoUrl,
        allowEnrichment: false,
        width: 56,
        height: 24,
        fit: BoxFit.contain,
        alignment: Alignment.centerLeft,
        backgroundColor: Colors.transparent,
        borderRadius: BorderRadius.zero,
        placeholder: const SizedBox.shrink(),
        errorWidget: const SizedBox.shrink(),
      );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      width: 56,
      child: Stack(
        children: [
          // Soft dark shadow behind the logo silhouette so pale logos (e.g.
          // Animal Planet) stay readable over bright artwork. ColorFilter.srcIn
          // recolors the logo to black while preserving its alpha; the blur
          // softens it into a halo. The badge is tiny, so the saveLayer is cheap.
          Positioned.fill(
            child: ImageFiltered(
              imageFilter: ui.ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
              child: ColorFiltered(
                colorFilter: const ColorFilter.mode(
                  Colors.black87,
                  BlendMode.srcIn,
                ),
                child: _logo(),
              ),
            ),
          ),
          Positioned.fill(child: _logo()),
        ],
      ),
    );
  }
}
