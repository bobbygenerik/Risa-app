import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/screens/live_tv/artwork_prefetcher.dart';

void main() {
  group('LiveTvArtworkPrefetcher', () {
    test('selects current and next distinct programs inside lookahead', () {
      final now = DateTime(2026, 6, 3, 12);
      final programs = [
        _program('a', 'Current Show', now, -10, 20),
        _program('b', 'Current Show', now, 20, 50),
        _program('c', 'Next Show', now, 50, 80),
        _program('d', 'Too Late', now, 180, 210),
      ];

      final selected = LiveTvArtworkPrefetcher.upcomingProgramsForArtwork(
        programs,
        now: now,
        lookAhead: const Duration(hours: 2),
        limit: 2,
      );

      expect(selected.map((p) => p.title), ['Current Show', 'Next Show']);
    });

    test('returns no programs when the window is empty', () {
      final now = DateTime(2026, 6, 3, 12);
      final programs = [
        _program('a', 'Later Show', now, 180, 210),
      ];

      final selected = LiveTvArtworkPrefetcher.upcomingProgramsForArtwork(
        programs,
        now: now,
        lookAhead: const Duration(hours: 1),
        limit: 2,
      );

      expect(selected, isEmpty);
    });
  });
}

Program _program(
  String id,
  String title,
  DateTime now,
  int startOffsetMinutes,
  int endOffsetMinutes,
) {
  return Program(
    id: id,
    channelId: 'channel-1',
    title: title,
    startTime: now.add(Duration(minutes: startOffsetMinutes)),
    endTime: now.add(Duration(minutes: endOffsetMinutes)),
  );
}
