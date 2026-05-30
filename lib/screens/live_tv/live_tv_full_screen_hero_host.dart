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
import 'package:iptv_player/screens/live_tv/live_tv_hero_info_widgets.dart';
import 'package:iptv_player/screens/live_tv/live_tv_program_type_row_cache.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/services/live_tv_artwork_service.dart';
import 'package:provider/provider.dart';

/// Builds the parallax hero + rows shell for Live TV.
class LiveTvFullScreenHeroHost extends StatelessWidget {
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
  Widget build(BuildContext context) {
    final epgService = context.read<IncrementalEpgService>();
    final heroCandidates = heroCandidateCache.build(
      allChannels,
      epgService,
      artworkResolver,
    );
    final hasEpgHero =
        heroCandidates.any((candidate) => candidate.program != null);
    if (!hasEpgHero && allChannels.isEmpty) {
      return fallbackSkeleton ?? const SizedBox.shrink();
    }

    final selection = LiveTvHeroSelectionResolver.resolve(
      featuredChannel: featuredChannel,
      allChannels: allChannels,
      featuredIndex: featuredIndex,
      heroCandidates: heroCandidates,
      onCandidateCount: onCandidateCount,
      onPrefetchPool: (pool) {
        artworkPrefetcher.prefetchTitleLogosForCandidates(pool);
        onPrefetchRowArtwork(
          pool.map((c) => c.channel).toList(),
          limit: 15,
        );
      },
      onEnsureArtwork: (selected) {
        final program = selected?.program;
        if (program != null) {
          artworkService.ensureFreshProgramArtwork(
            program,
            selected!.channel,
            highPriority: true,
          );
        }
      },
    );

    return LiveTvFullScreenHero(
      selection: selection,
      allChannels: allChannels,
      scrollController: scrollController,
      heroArtworkVersion: heroArtworkVersion,
      suspendHeroBackground: suspendHeroBackground,
      forceRowsVisible: forceRowsVisible,
      debugRowProbe: debugRowProbe,
      sidebarInset: sidebarInset,
      artworkResolver: artworkResolver,
      featuredRow: LiveTvFeaturedRow(
        fallbackChannels: allChannels,
        bindings: bindings,
        artworkResolver: artworkResolver,
      ),
      continueWatchingRow: LiveTvContinueWatchingRow(bindings: bindings),
      buildProgramTypeRow: buildProgramTypeRow,
      heroInfoOverlay: (channel, program) {
        final heroInfoWidth =
            LiveTvHeroInfoWidgets.heroInfoWidth(context, sidebarInset);
        return LiveTvHeroInfoWidgets.heroInfoPanel(
          width: heroInfoWidth,
          child: LiveTvHeroInfoWidgets.featuredInfoWithFocus(
            context: context,
            channel: channel,
            program: program,
            artworkResolver: artworkResolver,
            watchButtonFocus: watchButtonFocus,
            firstChannelFocus: firstChannelFocus,
            onWatch: () => onWatchChannel(channel),
          ),
        );
      },
      channelLogo: LiveTvHeroInfoWidgets.channelLogo,
    );
  }
}
