import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/utils/epg_title_disambiguation.dart';

void main() {
  final now = DateTime(2026, 6, 8, 23, 0);

  Program program({
    required String title,
    required Duration duration,
    String? description,
    String? imageUrl,
  }) =>
      Program(
        id: 'p1',
        channelId: 'ch1',
        title: title,
        description: description,
        startTime: now,
        endTime: now.add(duration),
        imageUrl: imageUrl,
      );

  test('detects bare franchise titles as under-specified', () {
    expect(EpgTitleDisambiguation.isUnderSpecified('Star Trek'), isTrue);
    expect(
      EpgTitleDisambiguation.isUnderSpecified('Star Trek: Discovery'),
      isFalse,
    );
    expect(
      EpgTitleDisambiguation.isUnderSpecified('Star Trek - The Menagerie'),
      isFalse,
    );
  });

  test('labels movie vs series from runtime', () {
    final movie = program(title: 'Star Trek', duration: const Duration(hours: 2));
    final episode =
        program(title: 'Star Trek', duration: const Duration(hours: 1));

    expect(EpgTitleDisambiguation.resolveDisplayTitle(movie, null),
        'Star Trek (Movie)');
    expect(
      EpgTitleDisambiguation.resolveDisplayTitle(
        episode,
        Channel(id: '1', name: 'H&I', url: 'http://x'),
      ),
      'Star Trek · Series',
    );
  });

  test('H&I hints prefer original series artwork queries', () {
    final hints = EpgTitleDisambiguation.artworkQueryHints(
      program(title: 'Star Trek', duration: const Duration(hours: 1)),
      Channel(id: '1', name: 'H&I', url: 'http://x'),
    );
    expect(hints, contains('Star Trek The Original Series'));
  });

  test('skips remote artwork when vague and no hints', () {
    expect(
      EpgTitleDisambiguation.shouldSkipRemoteArtwork(
        program(title: 'Star Trek', duration: const Duration(hours: 1)),
        Channel(id: '1', name: 'H&I', url: 'http://x'),
      ),
      isFalse,
    );
    expect(
      EpgTitleDisambiguation.shouldSkipRemoteArtwork(
        program(title: 'Show', duration: const Duration(minutes: 30)),
        null,
      ),
      isTrue,
    );
    expect(
      EpgTitleDisambiguation.shouldSkipRemoteArtwork(
        program(title: 'Star Trek', duration: const Duration(hours: 1)),
        null,
      ),
      isTrue,
    );
  });
}
