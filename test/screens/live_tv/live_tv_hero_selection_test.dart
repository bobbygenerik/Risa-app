import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/screens/live_tv/live_tv_hero_candidate_cache.dart';
import 'package:iptv_player/screens/live_tv/live_tv_models.dart';

void main() {
  final channelA = Channel(
    id: 'a',
    name: 'Channel A',
    url: 'https://example.com/a.m3u8',
    logoUrl: 'https://example.com/a-logo.png',
  );
  final channelB = Channel(
    id: 'b',
    name: 'Channel B',
    url: 'https://example.com/b.m3u8',
    logoUrl: 'https://example.com/b-logo.png',
  );
  final program = Program(
    id: 'prog-1',
    channelId: 'a',
    title: 'Show',
    startTime: DateTime(2026, 1, 1, 12),
    endTime: DateTime(2026, 1, 1, 13),
  );

  test('hero selection pool only includes candidates with artwork', () {
    final resolved = LiveTvHeroSelectionResolver.resolve(
      featuredChannel: channelA,
      allChannels: [channelA, channelB],
      featuredIndex: 0,
      heroCandidates: [
        LiveTvHeroCandidate(
          channel: channelA,
          program: program,
          heroImage: 'https://example.com/backdrop.jpg',
        ),
        LiveTvHeroCandidate(
          channel: channelB,
          program: program,
          heroImage: '',
        ),
        LiveTvHeroCandidate(
          channel: channelB,
          program: program,
          heroImage: 'https://example.com/backdrop-b.jpg',
        ),
        LiveTvHeroCandidate(
          channel: channelA,
          program: program,
          heroImage: 'https://example.com/backdrop-c.jpg',
        ),
      ],
    );

    expect(resolved.selectionPool, hasLength(3));
    expect(resolved.selection.activeChannel, channelA);
    expect(resolved.selection.program, program);
  });

  test('cold hero art pool rotates fallback channel by featured index', () {
    final resolved = LiveTvHeroSelectionResolver.resolve(
      featuredChannel: channelA,
      allChannels: [channelA, channelB],
      featuredIndex: 1,
      heroCandidates: const [],
    );

    expect(resolved.selectionPool, isEmpty);
    expect(resolved.selection.activeChannel, channelB);
    expect(resolved.selection.program, isNull);
    expect(resolved.selection.hasArtwork, isFalse);
    expect(resolved.selection.candidateCount, 2);
  });

  test('too-small art pool still rotates fallback channels while cache warms',
      () {
    final resolved = LiveTvHeroSelectionResolver.resolve(
      featuredChannel: channelA,
      allChannels: [channelA, channelB],
      featuredIndex: 1,
      heroCandidates: [
        LiveTvHeroCandidate(
          channel: channelA,
          program: program,
          heroImage: 'https://example.com/backdrop.jpg',
        ),
      ],
    );

    expect(resolved.selectionPool, hasLength(1));
    expect(resolved.selectedHero, isNull);
    expect(resolved.selection.activeChannel, channelB);
    expect(resolved.selection.program, isNull);
    expect(resolved.selection.hasArtwork, isFalse);
    expect(resolved.selection.candidateCount, 2);
  });
}
