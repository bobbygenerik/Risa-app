import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/screens/live_tv/artwork/artwork_slot.dart';
import 'package:iptv_player/screens/live_tv/artwork/artwork_source_resolver.dart';
import 'package:iptv_player/services/live_tv_artwork_service.dart';
import 'package:iptv_player/utils/program_classifier.dart';

void main() {
  final channel = Channel(
    id: 'wcvb',
    name: 'WCVB 5',
    url: 'http://example.com/stream.m3u8',
    groupTitle: 'Entertainment',
  );

  final program = Program(
    id: 'p1',
    channelId: 'wcvb',
    title: 'NewsCenter 5 at 11:00',
    startTime: DateTime(2026, 6, 8, 23, 0),
    endTime: DateTime(2026, 6, 9, 0, 0),
    imageUrl: 'https://image.tmdb.org/t/p/w1280/explosion.jpg',
  );

  test('NewsCenter titles classify as news', () {
    expect(ProgramClassifier.isNewsProgram(program, channel), isTrue);
  });

  test('news programs yield no remote artwork candidates', () {
    final resolver = ArtworkSourceResolver(
      LiveTvArtworkService(onArtworkUpdate: () {}),
    );
    final candidates = resolver
        .candidates(program, channel, slot: ArtworkSlot.hero)
        .toList();
    expect(candidates, isEmpty);
  });
}
