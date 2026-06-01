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
      ],
    );

    expect(resolved.selectionPool, hasLength(1));
    expect(resolved.selection.activeChannel, channelA);
    expect(resolved.selection.program, program);
  });
}
