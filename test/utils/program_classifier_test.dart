import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/utils/program_classifier.dart';

void main() {
  group('ProgramClassifier', () {
    test('isNewsProgram correctly identifies news programs via title', () {
      final channel = Channel(id: 'ch1', name: 'BBC One', url: '');
      final program = Program(
        id: 'p1',
        channelId: 'ch1',
        title: 'BBC News at 10',
        startTime: DateTime.now(),
        endTime: DateTime.now(),
      );
      expect(ProgramClassifier.isNewsProgram(program, channel), isTrue);
    });

    test('isNewsProgram correctly identifies news programs via category', () {
      final channel = Channel(id: 'ch1', name: 'BBC One', url: '');
      final program = Program(
        id: 'p1',
        channelId: 'ch1',
        title: 'Morning Update',
        category: 'News',
        startTime: DateTime.now(),
        endTime: DateTime.now(),
      );
      expect(ProgramClassifier.isNewsProgram(program, channel), isTrue);
    });

    test('isNewsProgram correctly identifies news channels', () {
      final channel = Channel(id: 'ch1', name: 'CNN News', url: '');
      final program = Program(
        id: 'p1',
        channelId: 'ch1',
        title: 'News', // this IS generic title according to _genericTitleRe
        startTime: DateTime.now(),
        endTime: DateTime.now(),
      );
      expect(ProgramClassifier.isNewsProgram(program, channel), isTrue);
    });

    test('isNewsProgram returns false for non-news content', () {
      final channel = Channel(id: 'ch1', name: 'Cartoon Network', url: '');
      final program = Program(
        id: 'p1',
        channelId: 'ch1',
        title: 'Tom and Jerry',
        category: 'Animation',
        startTime: DateTime.now(),
        endTime: DateTime.now(),
      );
      expect(ProgramClassifier.isNewsProgram(program, channel), isFalse);
    });

    test('isSciFiProgram correctly identifies sci-fi programs', () {
      final channel = Channel(id: 'ch1', name: 'SyFy', url: '');
      final program = Program(
        id: 'p1',
        channelId: 'ch1',
        title: 'Star Trek: Picard',
        startTime: DateTime.now(),
        endTime: DateTime.now(),
      );
      expect(ProgramClassifier.isSciFiProgram(program, channel), isTrue);
    });
  });
}
