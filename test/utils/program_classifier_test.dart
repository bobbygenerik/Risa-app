import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/utils/program_classifier.dart';

void main() {
  group('ProgramClassifier', () {
    final testChannel = Channel(
      id: '1',
      name: 'Test Channel',
      groupTitle: 'General',
      url: 'http://test.com',
    );

    test('isNewsProgram identifies news correctly', () {
      final newsProgram = Program(
        id: '1',
        channelId: '1',
        title: 'Daily News',
        startTime: DateTime.now(),
        endTime: DateTime.now(),
      );
      expect(ProgramClassifier.isNewsProgram(newsProgram, testChannel), isTrue);

      final nonNewsProgram = Program(
        id: '2',
        channelId: '1',
        title: 'Random Show',
        startTime: DateTime.now(),
        endTime: DateTime.now(),
      );
      expect(ProgramClassifier.isNewsProgram(nonNewsProgram, testChannel), isFalse);
    });

    test('isKidsProgram identifies kids shows correctly', () {
      final kidsProgram = Program(
        id: '1',
        channelId: '1',
        title: 'SpongeBob SquarePants',
        category: 'Kids',
        startTime: DateTime.now(),
        endTime: DateTime.now(),
      );
      expect(ProgramClassifier.isKidsProgram(kidsProgram, testChannel), isTrue);

      final adultAnimation = Program(
        id: '2',
        channelId: '1',
        title: 'Family Guy',
        category: 'Animation',
        startTime: DateTime.now(),
        endTime: DateTime.now(),
      );
      expect(ProgramClassifier.isKidsProgram(adultAnimation, testChannel), isFalse);
    });

    test('handles null values safely', () {
      final nullProgram = Program(
        id: '1',
        channelId: '1',
        title: '',
        startTime: DateTime.now(),
        endTime: DateTime.now(),
      );
      // Empty title shouldn't crash and should probably be false for specific genres unless channel name matches
      expect(ProgramClassifier.isMovieProgram(nullProgram, testChannel), isFalse);
    });
  });
}
