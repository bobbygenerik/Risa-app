import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/screens/enhanced_video_player_screen.dart';

void main() {
  group('parseSubtitlesPublic - WebVTT and edge cases', () {
    test('Parses WebVTT header and single cue with dot milliseconds', () {
      const data = '''WEBVTT\n\n00:00:01.500 --> 00:00:03.000\nHello WebVTT''';
      final cues = parseSubtitlesPublic(data);
      expect(cues.length, 1);
      expect(cues[0]['text'], 'Hello WebVTT');
      expect(cues[0]['start'], const Duration(milliseconds: 1500));
      expect(cues[0]['end'], const Duration(milliseconds: 3000));
    });

    test('Parses SRT style with comma milliseconds and index line', () {
      const data = '''1\n00:00:02,000 --> 00:00:04,500\nLine one\nLine two''';
      final cues = parseSubtitlesPublic(data);
      expect(cues.length, 1);
      expect(cues[0]['text'], 'Line one\nLine two');
      expect(cues[0]['start'], const Duration(milliseconds: 2000));
      expect(cues[0]['end'], const Duration(milliseconds: 4500));
    });

    test('Handles overlapping cues and picks correct cue by timestamp semantics', () {
      const data = '''00:00:00.000 --> 00:00:05.000\nFirst\n\n00:00:03.000 --> 00:00:06.000\nSecond''';
      final cues = parseSubtitlesPublic(data);
      expect(cues.length, 2);
      expect(cues[0]['text'], 'First');
      expect(cues[1]['text'], 'Second');
    });

    test('Parses multi-line cue and preserves line breaks', () {
      const data = '''00:00:10.000 --> 00:00:12.000\nThis is line one\nThis is line two\nThis is line three''';
      final cues = parseSubtitlesPublic(data);
      expect(cues.length, 1);
      expect(cues[0]['text'], 'This is line one\nThis is line two\nThis is line three');
    });

    test('Ignores malformed blocks and continues parsing', () {
      const data = '''BAD BLOCK\n\n00:00:01.000 --> 00:00:02.000\nGood''';
      final cues = parseSubtitlesPublic(data);
      expect(cues.length, 1);
      expect(cues[0]['text'], 'Good');
    });
  });
}
