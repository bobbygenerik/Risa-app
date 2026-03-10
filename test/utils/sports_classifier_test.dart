import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/utils/sports_classifier.dart';

void main() {
  group('SportsClassifier', () {
    test('isSportsChannel correctly identifies sports channels', () {
      final sportsChannel =
          Channel(id: '1', name: 'ESPN', url: 'http://example.com');
      final nonSportsChannel =
          Channel(id: '2', name: 'CNN', url: 'http://example.com');

      expect(SportsClassifier.isSportsChannel(sportsChannel), isTrue);
      expect(SportsClassifier.isSportsChannel(nonSportsChannel), isFalse);
    });

    test('isSportsProgram correctly identifies sports programs', () {
      final channel =
          Channel(id: '1', name: 'Random TV', url: 'http://example.com');

      final sportsProgramByTitle = Program(
          id: '1',
          channelId: '1',
          title: 'Super Bowl Final',
          startTime: DateTime.now(),
          endTime: DateTime.now().add(const Duration(hours: 1)));

      final sportsProgramByCategory = Program(
          id: '2',
          channelId: '1',
          title: 'Random Talk Show',
          category: 'Sports',
          startTime: DateTime.now(),
          endTime: DateTime.now().add(const Duration(hours: 1)));

      final nonSportsProgram = Program(
          id: '3',
          channelId: '1',
          title: 'Morning News',
          category: 'News',
          startTime: DateTime.now(),
          endTime: DateTime.now().add(const Duration(hours: 1)));

      expect(SportsClassifier.isSportsProgram(sportsProgramByTitle, channel),
          isTrue);
      expect(SportsClassifier.isSportsProgram(sportsProgramByCategory, channel),
          isTrue);
      expect(
          SportsClassifier.isSportsProgram(nonSportsProgram, channel), isFalse);
    });
  });
}
