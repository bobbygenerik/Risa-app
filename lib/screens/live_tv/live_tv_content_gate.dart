import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/screens/live_tv/category_state.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';

enum LiveTvContentPhase { skeleton, noPlaylist, content }

class LiveTvContentGateResult {
  const LiveTvContentGateResult({
    required this.phase,
    this.errorMessage,
    this.syncCategories,
  });

  final LiveTvContentPhase phase;
  final String? errorMessage;
  final List<String>? syncCategories;
}

/// Decides whether to show skeleton, empty state, or main Live TV content.
class LiveTvContentGate {
  LiveTvContentGate._();

  static LiveTvContentGateResult evaluate({
    required ChannelProvider channelProvider,
    required LiveTvCategoryState categoryState,
    required bool hasShownContent,
    required bool epgBusy,
    required bool shouldBlockForEpg,
    required List<String> Function(ChannelProvider) buildFallbackCategories,
  }) {
    final hasChannels = channelProvider.hasChannels;

    if (!hasChannels && channelProvider.noPlaylistConfigured) {
      return LiveTvContentGateResult(
        phase: LiveTvContentPhase.noPlaylist,
        errorMessage: channelProvider.errorMessage,
      );
    }

    final categoriesNotReady = channelProvider.isColdStartLoad &&
        categoryState.channelCache.isEmpty &&
        hasChannels;

    final overlayBusy = channelProvider.isLoading ||
        epgBusy ||
        categoriesNotReady;

    if ((shouldBlockForEpg || epgBusy) && !hasShownContent) {
      return const LiveTvContentGateResult(phase: LiveTvContentPhase.skeleton);
    }

    if (channelProvider.isColdStartLoad && overlayBusy && !hasShownContent) {
      return const LiveTvContentGateResult(phase: LiveTvContentPhase.skeleton);
    }

    if (!hasChannels &&
        channelProvider.isLoading &&
        !channelProvider.noPlaylistConfigured) {
      return const LiveTvContentGateResult(phase: LiveTvContentPhase.skeleton);
    }

    var hasCategories = categoryState.names.isNotEmpty;

    if (!hasCategories && hasChannels && !categoryState.loading) {
      final syncCategories = buildFallbackCategories(channelProvider);
      if (syncCategories.isNotEmpty) {
        return LiveTvContentGateResult(
          phase: LiveTvContentPhase.content,
          syncCategories: syncCategories,
        );
      }
    }

    if (!hasCategories &&
        channelProvider.isLoading &&
        !channelProvider.noPlaylistConfigured &&
        !hasChannels) {
      return const LiveTvContentGateResult(phase: LiveTvContentPhase.skeleton);
    }

    if (!hasChannels) {
      if (!channelProvider.noPlaylistConfigured &&
          (!channelProvider.hasLoadedPlaylist || channelProvider.isLoading)) {
        return const LiveTvContentGateResult(phase: LiveTvContentPhase.skeleton);
      }
      return LiveTvContentGateResult(
        phase: LiveTvContentPhase.noPlaylist,
        errorMessage: channelProvider.errorMessage,
      );
    }

    return const LiveTvContentGateResult(phase: LiveTvContentPhase.content);
  }

  static ({
    bool epgBusy,
    bool shouldBlockForEpg,
    String? epgStatus,
  }) epgFlags(IncrementalEpgService epg, {required bool hasDisplayData}) {
    final epgBusy = epg.isDownloading || epg.isParsing || epg.isLoading;
    final shouldBlockForEpg = hasDisplayData &&
        epg.hasEpgUrl &&
        !epg.hasLoadedPrograms;
    final epgStatus = epg.isDownloading
        ? 'Downloading EPG data...'
        : epg.isParsing
            ? 'Parsing EPG data...'
            : epg.isLoading
                ? 'Loading EPG cache...'
                : null;
    return (
      epgBusy: epgBusy,
      shouldBlockForEpg: shouldBlockForEpg,
      epgStatus: epgStatus,
    );
  }
}
