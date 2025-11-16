import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/screens/enhanced_video_player_screen.dart';

void main() {
  group('Subtitle parser', () {
    test('parses simple SRT with numeric indices and comma ms', () {
      const srt = '''1
00:00:01,000 --> 00:00:03,000
Hello world

2
00:00:04,500 --> 00:00:06,250
Second line''';

      final cues = parseSubtitlesPublic(srt);
      expect(cues, isNotEmpty);
      expect(cues.length, 2);

      final first = cues[0];
      expect(first['text'], 'Hello world');
      expect(first['start'], isA<Duration>());
      expect(first['end'], isA<Duration>());
      expect((first['start'] as Duration).inMilliseconds, 1000);
      expect((first['end'] as Duration).inMilliseconds, 3000);

      final second = cues[1];
      expect(second['text'], 'Second line');
      expect((second['start'] as Duration).inMilliseconds, 4500);
    });

    test('parses VTT style with dot ms and multi-line text', () {
      const vtt = '''WEBVTT\n\n00:00:00.000 --> 00:00:02.000\nFirst line\nSecond line\n\n''';
      final cues = parseSubtitlesPublic(vtt);
      expect(cues.length, 1);
      final cue = cues[0];
      expect(cue['text'], 'First line\nSecond line');
      expect((cue['end'] as Duration).inMilliseconds, 2000);
    });

    test('empty input returns empty list', () {
      expect(parseSubtitlesPublic('   '), isEmpty);
    });
  });

  group('Timestamp parser', () {
    test('parses hh:mm:ss,ms and mm:ss.ms and ss', () {
      expect(parseTimestampPublic('00:01:02,500'), equals(const Duration(minutes: 1, seconds: 2, milliseconds: 500)));
      expect(parseTimestampPublic('01:02.345'), equals(const Duration(minutes: 1, seconds: 2, milliseconds: 345)));
      expect(parseTimestampPublic('12.75'), equals(const Duration(milliseconds: 12750)));
    });
  });
}
