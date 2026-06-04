import 'package:flutter/material.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/screens/live_tv/artwork_prefetcher.dart';
import 'package:iptv_player/screens/live_tv/live_tv_artwork_resolver.dart';
import 'package:iptv_player/screens/live_tv/live_tv_channel_section.dart';
import 'package:iptv_player/screens/live_tv/live_tv_continue_watching_row.dart';
import 'package:iptv_player/screens/live_tv/live_tv_epg_batch.dart';
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
    required this.onAdvanceFeaturedHero,
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
  final VoidCallback onAdvanceFeaturedHero;
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
  String? _cachedHeroImageUrl;
  int _cachedChannelsLen = -1;
  int _cachedFeaturedIndex = -1;
  int _cachedProgramCount = -1;
  final Set<String> _rejectedHeroUrls = {};
  bool _backdropRejectAdvanceScheduled = false;

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

  void _onHeroBackdropRejected(String url) {
    if (url.isNotEmpty) {
      _rejectedHeroUrls.add(url);
      widget.heroCandidateCache.invalidate();
    }
    if (_backdropRejectAdvanceScheduled) return;
    _backdropRejectAdvanceScheduled = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _backdropRejectAdvanceScheduled = false;
      if (!mounted) return;
      widget.onAdvanceFeaturedHero();
    });
  }

  void _refreshHeroCache(IncrementalEpgService epgService) {
    final heroCandidates = widget.heroCandidateCache.build(
      widget.allChannels,
      epgService,
      widget.artworkResolver,
      rejectedHeroUrls: _rejectedHeroUrls,
    );
    final resolved = LiveTvHeroSelectionResolver.resolve(
      featuredChannel: widget.featuredChannel,
      allChannels: widget.allChannels,
      featuredIndex: widget.featuredIndex,
      heroCandidates: heroCandidates,
    );
    _cachedHeroCandidates = heroCandidates;
    _cachedChannelsLen = widget.allChannels.length;
    _cachedFeaturedIndex = widget.featuredIndex;
    _cachedProgramCount = epgService.loadedProgramChannelCount;

    final selected = resolved.selectedHero;
    final fallbackProgram = selected?.program ??
        epgService.getCurrentProgram(
          widget.featuredChannel.epgLookupId,
          channelName: widget.featuredChannel.epgLookupNameFallback,
          groupTitle: widget.featuredChannel.groupTitle,
        );
    final heroUrl = selected?.heroImage;
    _cachedHeroImageUrl =
        (heroUrl != null && heroUrl.isNotEmpty) ? heroUrl : null;

    _cachedSelection = LiveTvHeroSelection(
      activeChannel: resolved.selection.activeChannel,
      program: resolved.selection.program ?? fallbackProgram,
      candidateCount: resolved.selection.candidateCount,
      selectedHero: selected,
      hasArtwork: selected != null && _cachedHeroImageUrl != null,
    );

    _scheduleSideEffects(
      selection: _cachedSelection!,
      selectionPool: resolved.selectionPool,
      selectedHero: selected,
    );
  }

  // Hero programs are loaded from DB in slices until the pool is full. EPG
  // programs are otherwise loaded lazily per visible card, so without this the
  // hero only ever sees the handful of channels the cards happened to load.
  static const int _heroEpgBatchSize = 40;
  IncrementalEpgService? _epgService;
  int _heroEpgCursor = 0;

  @override
  void initState() {
    super.initState();
    widget.heroArtworkVersion.addListener(_onHeroArtworkBumped);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final epg = context.read<IncrementalEpgService>();
    if (!identical(epg, _epgService)) {
      _epgService?.removeListener(_onEpgChanged);
      _epgService = epg;
      epg.addListener(_onEpgChanged);
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) _ensureHeroEpgLoaded();
      });
    }
  }

  // Request DB loading of the next slice of channels' programs, advancing a
  // cursor. Stops once the pool is full or every channel has been requested,
  // so total work is bounded regardless of channel count.
  void _ensureHeroEpgLoaded() {
    final epg = _epgService;
    if (epg == null) return;
    if (widget.heroCandidateCache.isPoolComplete) return;
    if (_heroEpgCursor >= widget.allChannels.length) return;
    final end = (_heroEpgCursor + _heroEpgBatchSize)
        .clamp(0, widget.allChannels.length);
    final slice = widget.allChannels.sublist(_heroEpgCursor, end);
    _heroEpgCursor = end;
    LiveTvEpgBatch.ensureChannelsForPreview(slice, epg);
  }

  // EPG streams in incrementally. The hero candidate pool is built once on
  // first frame when only a handful of programs exist, so we refresh it as
  // programs load and request more — but only until the pool is full, then we
  // detach the listener so we never rescan on a settled EPG.
  void _onEpgChanged() {
    if (!mounted) return;
    if (widget.heroCandidateCache.isPoolComplete) {
      _epgService?.removeListener(_onEpgChanged);
      return;
    }
    final epg = _epgService;
    if (epg == null) return;
    if (epg.loadedProgramChannelCount > _cachedProgramCount) {
      setState(() => _refreshHeroCache(epg));
    }
    _ensureHeroEpgLoaded();
  }

  @override
  void dispose() {
    _epgService?.removeListener(_onEpgChanged);
    widget.heroArtworkVersion.removeListener(_onHeroArtworkBumped);
    super.dispose();
  }

  void _onHeroArtworkBumped() {
    if (!mounted) return;
    widget.heroCandidateCache.invalidate();
    final epg = _epgService;
    if (epg == null) return;
    setState(() => _refreshHeroCache(epg));
  }

  @override
  Widget build(BuildContext context) {
    final epgService = context.read<IncrementalEpgService>();
    if (!widget.heroCandidateCache.isValid) {
      _cachedSelection = null;
    }
    if (_cachedSelection == null ||
        _cachedChannelsLen != widget.allChannels.length ||
        _cachedFeaturedIndex != widget.featuredIndex ||
        (epgService.loadedProgramChannelCount > _cachedProgramCount &&
            !widget.heroCandidateCache.isPoolComplete)) {
      _refreshHeroCache(epgService);
    }
    final heroCandidates = _cachedHeroCandidates!;
    final selection = _cachedSelection!;
    final hasEpgHero = heroCandidates.any(
      (candidate) =>
          candidate.program != null && candidate.heroImage.isNotEmpty,
    );
    if (!hasEpgHero && widget.allChannels.isEmpty) {
      return widget.fallbackSkeleton ?? const SizedBox.shrink();
    }

    return LiveTvFullScreenHero(
      selection: selection,
      heroImageUrl: _cachedHeroImageUrl,
      onHeroBackdropRejected: _onHeroBackdropRejected,
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
