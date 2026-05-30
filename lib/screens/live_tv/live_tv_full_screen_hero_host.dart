import 'dart:async';

import 'package:flutter/material.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/screens/live_tv/artwork_prefetcher.dart';
import 'package:iptv_player/screens/live_tv/live_tv_artwork_resolver.dart';
import 'package:iptv_player/screens/live_tv/live_tv_channel_section.dart';
import 'package:iptv_player/screens/live_tv/live_tv_continue_watching_row.dart';
import 'package:iptv_player/screens/live_tv/live_tv_featured_row.dart';
import 'package:iptv_player/screens/live_tv/live_tv_full_screen_hero.dart';
import 'package:iptv_player/screens/live_tv/live_tv_hero_candidate_cache.dart';
import 'package:iptv_player/screens/live_tv/live_tv_models.dart';
import 'package:iptv_player/screens/live_tv/live_tv_hero_info_widgets.dart';
import 'package:iptv_player/screens/live_tv/live_tv_program_type_row_cache.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/services/live_tv_artwork_service.dart';
import 'package:provider/provider.dart';

/// Builds the parallax hero + rows shell for Live TV.
class LiveTvFullScreenHeroHost extends StatefulWidget {
  const LiveTvFullScreenHeroHost({
    super.key,
    required this.featuredChannel,
    required this.allChannels,
    required this.featuredIndex,
    required this.scrollController,
    required this.heroArtworkVersion,
    required this.suspendHeroBackground,
    required this.sidebarInset,
    required this.bindings,
    required this.artworkResolver,
    required this.artworkService,
    required this.artworkPrefetcher,
    required this.heroCandidateCache,
    required this.programTypeRowCache,
    required this.onCandidateCount,
    required this.onPrefetchRowArtwork,
    required this.buildProgramTypeRow,
    required this.onWatchChannel,
    required this.watchButtonFocus,
    required this.firstChannelFocus,
    this.forceRowsVisible = false,
    this.debugRowProbe = false,
    this.fallbackSkeleton,
  });

  final Channel featuredChannel;
  final List<Channel> allChannels;
  final int featuredIndex;
  final ScrollController scrollController;
  final ValueNotifier<int> heroArtworkVersion;
  final bool suspendHeroBackground;
  final double sidebarInset;
  final LiveTvChannelSectionBindings bindings;
  final LiveTvArtworkResolver artworkResolver;
  final LiveTvArtworkService artworkService;
  final LiveTvArtworkPrefetcher artworkPrefetcher;
  final LiveTvHeroCandidateCache heroCandidateCache;
  final LiveTvProgramTypeRowCache programTypeRowCache;
  final void Function(int count) onCandidateCount;
  final void Function(List<Channel> channels, {int limit}) onPrefetchRowArtwork;
  final Widget Function(
    BuildContext context,
    String title,
    List<Channel> allChannels,
    bool Function(Program?, Channel) classifier,
  ) buildProgramTypeRow;
  final void Function(Channel channel) onWatchChannel;
  final FocusNode watchButtonFocus;
  final FocusNode firstChannelFocus;
  final bool forceRowsVisible;
  final bool debugRowProbe;
  final Widget? fallbackSkeleton;

  @override
  State<LiveTvFullScreenHeroHost> createState() =>
      _LiveTvFullScreenHeroHostState();
}

class _LiveTvFullScreenHeroHostState extends State<LiveTvFullScreenHeroHost> {
  String? _lastSideEffectKey;
  bool _sideEffectsScheduled = false;
  List<LiveTvHeroCandidate>? _cachedHeroCandidates;
  LiveTvHeroSelection? _cachedSelection;
  List<LiveTvHeroCandidate>? _cachedSelectionPool;
  LiveTvHeroCandidate? _cachedSelectedHero;
  String? _cachedHeroImageUrl;
  int _cachedChannelsLen = -1;
  int _cachedFeaturedIndex = -1;

  void _scheduleSideEffects({
    required LiveTvHeroSelection selection,
    required List<LiveTvHeroCandidate> selectionPool,
    required LiveTvHeroCandidate? selectedHero,
  }) {
    final key =
        '${selection.activeChannel.epgLookupId}|${widget.featuredIndex}|'
        '${selection.candidateCount}|${widget.allChannels.length}';
    if (key == _lastSideEffectKey) return;
    _lastSideEffectKey = key;
    if (_sideEffectsScheduled) return;
    _sideEffectsScheduled = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _sideEffectsScheduled = false;
      if (!mounted) return;
      widget.onCandidateCount(selection.candidateCount);
      widget.artworkPrefetcher.prefetchTitleLogosForCandidates(selectionPool);
      widget.onPrefetchRowArtwork(
        selectionPool.map((c) => c.channel).toList(),
        limit: 15,
      );
      final hero = selectedHero;
      final program = hero?.program;
      if (program != null && hero != null) {
        widget.artworkService.ensureFreshProgramArtwork(
          program,
          hero.channel,
          highPriority: true,
        );
      }
    });
  }

  void _refreshHeroCache(IncrementalEpgService epgService) {
    final heroCandidates = widget.heroCandidateCache.build(
      widget.allChannels,
      epgService,
      widget.artworkResolver,
    );
    final resolved = LiveTvHeroSelectionResolver.resolve(
      featuredChannel: widget.featuredChannel,
      allChannels: widget.allChannels,
      featuredIndex: widget.featuredIndex,
      heroCandidates: heroCandidates,
    );
    _cachedHeroCandidates = heroCandidates;
    _cachedSelection = resolved.selection;
    _cachedSelectionPool = resolved.selectionPool;
    _cachedSelectedHero = resolved.selectedHero;
    _cachedChannelsLen = widget.allChannels.length;
    _cachedFeaturedIndex = widget.featuredIndex;
    _cachedHeroImageUrl = widget.artworkResolver.resolveHeroImage(
      resolved.selection.program,
      resolved.selection.activeChannel,
      allowFetch: false,
    );
    _scheduleSideEffects(
      selection: resolved.selection,
      selectionPool: resolved.selectionPool,
      selectedHero: resolved.selectedHero,
    );
  }

  @override
  void initState() {
    super.initState();
    widget.heroArtworkVersion.addListener(_onHeroArtworkBumped);
  }

  @override
  void dispose() {
    widget.heroArtworkVersion.removeListener(_onHeroArtworkBumped);
    super.dispose();
  }

  void _onHeroArtworkBumped() {
    if (!mounted || _cachedSelection == null) return;
    setState(() {
      _cachedHeroImageUrl = widget.artworkResolver.resolveHeroImage(
        _cachedSelection!.program,
        _cachedSelection!.activeChannel,
        allowFetch: false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final epgService = context.read<IncrementalEpgService>();
    if (!widget.heroCandidateCache.isValid) {
      _cachedSelection = null;
    }
    if (_cachedSelection == null ||
        _cachedChannelsLen != widget.allChannels.length ||
        _cachedFeaturedIndex != widget.featuredIndex) {
      _refreshHeroCache(epgService);
    }
    final heroCandidates = _cachedHeroCandidates!;
    final selection = _cachedSelection!;
    final hasEpgHero =
        heroCandidates.any((candidate) => candidate.program != null);
    if (!hasEpgHero && widget.allChannels.isEmpty) {
      return widget.fallbackSkeleton ?? const SizedBox.shrink();
    }

    return LiveTvFullScreenHero(
      selection: selection,
      heroImageUrl: _cachedHeroImageUrl,
      allChannels: widget.allChannels,
      scrollController: widget.scrollController,
      heroArtworkVersion: widget.heroArtworkVersion,
      suspendHeroBackground: widget.suspendHeroBackground,
      forceRowsVisible: widget.forceRowsVisible,
      debugRowProbe: widget.debugRowProbe,
      sidebarInset: widget.sidebarInset,
      artworkResolver: widget.artworkResolver,
      featuredRow: LiveTvFeaturedRow(
        fallbackChannels: widget.allChannels,
        bindings: widget.bindings,
        artworkResolver: widget.artworkResolver,
      ),
      continueWatchingRow: LiveTvContinueWatchingRow(bindings: widget.bindings),
      buildProgramTypeRow: widget.buildProgramTypeRow,
      heroInfoOverlay: (channel, program) {
        final heroInfoWidth =
            LiveTvHeroInfoWidgets.heroInfoWidth(context, widget.sidebarInset);
        return LiveTvHeroInfoWidgets.heroInfoPanel(
          width: heroInfoWidth,
          child: LiveTvHeroInfoWidgets.featuredInfoWithFocus(
            context: context,
            channel: channel,
            program: program,
            artworkResolver: widget.artworkResolver,
            watchButtonFocus: widget.watchButtonFocus,
            firstFeaturedFocus: widget.bindings.firstFeaturedFocus,
            firstChannelFocus: widget.firstChannelFocus,
            scrollController: widget.scrollController,
            onWatch: () => widget.onWatchChannel(channel),
          ),
        );
      },
      channelLogo: LiveTvHeroInfoWidgets.channelLogo,
    );
  }
}
