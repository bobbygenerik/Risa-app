import 'package:flutter/material.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/utils/program_classifier.dart';

typedef LiveTvProgramPredicate = bool Function(
    Program? program, Channel channel);
typedef LiveTvProgramTypeRowBuilder = Widget Function(
  BuildContext context,
  String title,
  List<Channel> channels,
  LiveTvProgramPredicate predicate,
);

List<Widget> buildLiveTvProgramTypeSlivers({
  required BuildContext context,
  required double rightInset,
  required List<Channel> channels,
  required LiveTvProgramTypeRowBuilder buildRow,
}) {
  return [
    _programTypeSliver(
      context: context,
      rightInset: rightInset,
      keyName: 'live_tv_sports',
      title: 'Live Sports',
      channels: channels,
      predicate: (program, channel) =>
          program != null &&
          ProgramClassifier.isSportsProgram(program, channel),
      buildRow: buildRow,
    ),
    _programTypeSliver(
      context: context,
      rightInset: rightInset,
      keyName: 'live_tv_news',
      title: 'News',
      channels: channels,
      predicate: ProgramClassifier.isNewsProgram,
      buildRow: buildRow,
    ),
    _programTypeSliver(
      context: context,
      rightInset: rightInset,
      keyName: 'live_tv_movies',
      title: 'Movies',
      channels: channels,
      predicate: ProgramClassifier.isMovieProgram,
      buildRow: buildRow,
    ),
    _programTypeSliver(
      context: context,
      rightInset: rightInset,
      keyName: 'live_tv_kids',
      title: 'Kids & Family',
      channels: channels,
      predicate: ProgramClassifier.isKidsProgram,
      buildRow: buildRow,
    ),
    _programTypeSliver(
      context: context,
      rightInset: rightInset,
      keyName: 'live_tv_scifi',
      title: 'Sci-Fi & Fantasy',
      channels: channels,
      predicate: ProgramClassifier.isSciFiProgram,
      buildRow: buildRow,
    ),
    _programTypeSliver(
      context: context,
      rightInset: rightInset,
      keyName: 'live_tv_comedy',
      title: 'Comedy',
      channels: channels,
      predicate: ProgramClassifier.isComedyProgram,
      buildRow: buildRow,
    ),
    _programTypeSliver(
      context: context,
      rightInset: rightInset,
      keyName: 'live_tv_drama',
      title: 'Drama & Thriller',
      channels: channels,
      predicate: ProgramClassifier.isDramaProgram,
      buildRow: buildRow,
    ),
    _programTypeSliver(
      context: context,
      rightInset: rightInset,
      keyName: 'live_tv_cooking',
      title: 'Cooking & Food',
      channels: channels,
      predicate: ProgramClassifier.isCookingProgram,
      buildRow: buildRow,
    ),
    _programTypeSliver(
      context: context,
      rightInset: rightInset,
      keyName: 'live_tv_talkshows',
      title: 'Talk Shows',
      channels: channels,
      predicate: ProgramClassifier.isTalkShowProgram,
      buildRow: buildRow,
    ),
    _programTypeSliver(
      context: context,
      rightInset: rightInset,
      keyName: 'live_tv_docs',
      title: 'Documentaries',
      channels: channels,
      predicate: ProgramClassifier.isDocumentaryProgram,
      buildRow: buildRow,
    ),
    _programTypeSliver(
      context: context,
      rightInset: rightInset,
      keyName: 'live_tv_music',
      title: 'Music',
      channels: channels,
      predicate: ProgramClassifier.isMusicProgram,
      buildRow: buildRow,
    ),
  ];
}

Widget _programTypeSliver({
  required BuildContext context,
  required double rightInset,
  required String keyName,
  required String title,
  required List<Channel> channels,
  required LiveTvProgramPredicate predicate,
  required LiveTvProgramTypeRowBuilder buildRow,
}) {
  return SliverPadding(
    padding: EdgeInsets.only(left: 0, right: rightInset),
    sliver: SliverToBoxAdapter(
      child: KeyedSubtree(
        key: ValueKey<String>(keyName),
        child: buildRow(context, title, channels, predicate),
      ),
    ),
  );
}
