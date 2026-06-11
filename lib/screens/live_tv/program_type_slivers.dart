import 'package:flutter/material.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/screens/live_tv/live_tv_program_type_row_cache.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/utils/program_classifier.dart';
import 'package:provider/provider.dart';

typedef LiveTvProgramPredicate = bool Function(
    Program? program, Channel channel);

/// One Live TV program-type row: stable sliver key, display title, and the
/// predicate that decides whether a channel's current program belongs in it.
class ProgramTypeRowSpec {
  const ProgramTypeRowSpec({
    required this.keyName,
    required this.title,
    required this.predicate,
  });

  final String keyName;
  final String title;
  final LiveTvProgramPredicate predicate;
}

final List<ProgramTypeRowSpec> liveTvProgramTypeRowSpecs = [
  ProgramTypeRowSpec(
    keyName: 'live_tv_sports',
    title: 'Live Sports',
    predicate: (program, channel) =>
        program != null && ProgramClassifier.isSportsProgram(program, channel),
  ),
  const ProgramTypeRowSpec(
    keyName: 'live_tv_news',
    title: 'News',
    predicate: ProgramClassifier.isNewsProgram,
  ),
  const ProgramTypeRowSpec(
    keyName: 'live_tv_movies',
    title: 'Movies',
    predicate: ProgramClassifier.isMovieProgram,
  ),
  const ProgramTypeRowSpec(
    keyName: 'live_tv_kids',
    title: 'Kids & Family',
    predicate: ProgramClassifier.isKidsProgram,
  ),
  const ProgramTypeRowSpec(
    keyName: 'live_tv_scifi',
    title: 'Sci-Fi & Fantasy',
    predicate: ProgramClassifier.isSciFiProgram,
  ),
  const ProgramTypeRowSpec(
    keyName: 'live_tv_comedy',
    title: 'Comedy',
    predicate: ProgramClassifier.isComedyProgram,
  ),
  const ProgramTypeRowSpec(
    keyName: 'live_tv_drama',
    title: 'Drama & Thriller',
    predicate: ProgramClassifier.isDramaProgram,
  ),
  const ProgramTypeRowSpec(
    keyName: 'live_tv_cooking',
    title: 'Cooking & Food',
    predicate: ProgramClassifier.isCookingProgram,
  ),
  const ProgramTypeRowSpec(
    keyName: 'live_tv_talkshows',
    title: 'Talk Shows',
    predicate: ProgramClassifier.isTalkShowProgram,
  ),
  const ProgramTypeRowSpec(
    keyName: 'live_tv_docs',
    title: 'Documentaries',
    predicate: ProgramClassifier.isDocumentaryProgram,
  ),
  const ProgramTypeRowSpec(
    keyName: 'live_tv_music',
    title: 'Music',
    predicate: ProgramClassifier.isMusicProgram,
  ),
];

List<Widget> buildLiveTvProgramTypeSlivers({
  required BuildContext context,
  required double rightInset,
  required List<Channel> channels,
  required LiveTvProgramTypeRowCache cache,
  required Widget Function(
    BuildContext? context,
    String title,
    List<Channel> channels,
  ) buildSection,
}) {
  final epgService = context.read<IncrementalEpgService>();
  cache.ensureFresh(
    channels: channels,
    specs: liveTvProgramTypeRowSpecs,
    currentProgramOf: (channel) => epgService.getCurrentProgram(
      channel.epgLookupId,
      channelName: channel.epgLookupNameFallback,
      groupTitle: channel.groupTitle,
    ),
  );

  return [
    for (final spec in liveTvProgramTypeRowSpecs)
      SliverPadding(
        padding: EdgeInsets.only(left: 0, right: rightInset),
        sliver: SliverToBoxAdapter(
          child: KeyedSubtree(
            key: ValueKey<String>(spec.keyName),
            child: cache.buildRow(
              context: context,
              title: spec.title,
              buildSection: buildSection,
            ),
          ),
        ),
      ),
  ];
}
