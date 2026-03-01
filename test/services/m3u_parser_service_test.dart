import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/services/m3u_parser_service.dart';

void main() {
  group('M3UParserService', () {
    final parser = M3UParserService();

    test('parses simple M3U', () {
      final content = '''
#EXTM3U
#EXTINF:-1 tvg-id="cnn",CNN
http://stream.com/cnn
''';
      final channels = parser.parseM3U(content);
      expect(channels.length, 1);
      expect(channels[0].name, 'CNN');
      expect(channels[0].url, 'http://stream.com/cnn');
    });

    test('parses URL with parameters', () {
      final content = '''
#EXTM3U
#EXTINF:-1,Channel 1
http://stream.com/live?token=123&u=abc
''';
      final channels = parser.parseM3U(content);
      expect(channels[0].url, 'http://stream.com/live?token=123&u=abc');
    });

    test('parses nested URLs (redirects)', () {
      final content = '''
#EXTM3U
#EXTINF:-1,Redirect
http://redirect.com/play?url=http://stream.com/live
''';
      final channels = parser.parseM3U(content);
      expect(channels[0].url, 'http://redirect.com/play?url=http://stream.com/live');
    });

    test('parses unencoded nested URLs (tricky case)', () {
      // This is the case where my initial optimization failed but shadowed check fixed
      final content = '''
#EXTM3U
#EXTINF:-1,Nested
http://outer.com/http://inner.com
''';
      final channels = parser.parseM3U(content);
      expect(channels[0].url, 'http://outer.com/http://inner.com');
    });

    test('parses URL preceded by attribute', () {
      final content = '''
#EXTM3U
#EXTINF:-1 tvg-logo="http://logo.com",Logo Channel
http://stream.com/live
''';
      final channels = parser.parseM3U(content);
      expect(channels[0].url, 'http://stream.com/live');
      expect(channels[0].logoUrl, 'http://logo.com');
    });

    test('ignores attribute URL even if valid', () {
      // Here the line contains an attribute with a URL, but NO channel URL on the same line.
      // The parser expects channel URL on the next line or same line.
      // But if it is on the same line, it must not be an attribute.
      final content = '''
#EXTM3U
#EXTINF:-1 tvg-logo="http://logo.com",Logo Channel
''';
      // In parseM3U, it accumulates lines.
      // If EXTINF line doesn't have a URL (non-attribute), it waits for next line.
      final channels = parser.parseM3U(content);
      expect(channels.isEmpty, true);
    });

    test('parses URL on EXTINF line', () {
      final content = '''
#EXTM3U
#EXTINF:-1 tvg-logo="http://logo.com",Inline Channel http://inline.com/stream
''';
      final channels = parser.parseM3U(content);
      expect(channels.length, 1);
      expect(channels[0].url, 'http://inline.com/stream');
      expect(channels[0].logoUrl, 'http://logo.com');
    });

    test('parses URL starting with non-scheme chars but having scheme inside', () {
      // "root/http://nested.com" -> valid match is "http://nested.com"
      final content = '''
#EXTM3U
#EXTINF:-1,Root
root/http://nested.com
''';
      final channels = parser.parseM3U(content);
      expect(channels[0].url, 'http://nested.com');
    });

    test('parses messy line with attributes and URL', () {
      final content = '''
#EXTM3U
#EXTINF:-1,Messy
tvg-logo="http://ignore.me" http://real-url.com token=123
''';
      // Here "token=123" is suffix.
      // The parser's regex \S+ consumes token=123 if connected by non-whitespace.
      // But there is a space.
      // Regex `\S+` stops at space.
      // So url is `http://real-url.com`.
      final channels = parser.parseM3U(content);
      expect(channels[0].url, 'http://real-url.com');
    });

  });
}
