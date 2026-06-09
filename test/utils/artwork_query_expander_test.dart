import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/utils/artwork_query_expander.dart';

void main() {
  final now = DateTime(2026, 6, 8, 22, 0);

  Program program(String title, {String? category}) => Program(
        id: 'p1',
        channelId: 'ch1',
        title: title,
        startTime: now,
        endTime: now.add(const Duration(hours: 1)),
        category: category,
      );

  test('strips live badges and extracts teams from at separator', () {
    final queries = ArtworkQueryExpander.expand(
      program(
        '2026 NBA Finals : San Antonio Spurs at New York Knicks ᴸᶦᵛᵉ',
        category: 'Sports',
      ),
      Channel(id: '1', name: 'WCVB5', url: 'http://x'),
    );
    expect(queries, contains('San Antonio Spurs vs New York Knicks'));
    expect(queries, contains('San Antonio Spurs'));
    expect(queries, contains('New York Knicks'));
  });

  test('adds channel name queries for news', () {
    final queries = ArtworkQueryExpander.expand(
      program('Boston 25 News at 10PM ᴸᶦᵛᵉ'),
      Channel(
        id: '1',
        name: 'Boston25 WFXT',
        url: 'http://x',
        groupTitle: 'News',
      ),
    );
    expect(queries, contains('Boston25 WFXT'));
    expect(queries, contains('Boston25 WFXT Boston 25 News at 10PM'));
  });

  test('stripDisplayBadges removes unicode and trailing new badges', () {
    expect(
      ArtworkQueryExpander.stripDisplayBadges(
        'NewsCenter 5 at 11:00 ᴺᵉʷ',
      ),
      'NewsCenter 5 at 11:00',
    );
    expect(
      ArtworkQueryExpander.stripDisplayBadges(
        'Boston 25 News at 10PM ᴸᶦᵛᵉ',
      ),
      'Boston 25 News at 10PM',
    );
  });
}
