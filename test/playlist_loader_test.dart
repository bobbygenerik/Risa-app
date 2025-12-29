// async APIs are provided by flutter_test
import 'dart:io';

import 'package:iptv_player/providers/playlist_loader.dart';
import 'package:flutter_test/flutter_test.dart';

String makeM3U(int channels) {
  final sb = StringBuffer('#EXTM3U\n');
  for (var i = 0; i < channels; i++) {
    sb.writeln('#EXTINF:-1,Channel $i');
    sb.writeln('http://stream.example/$i');
  }
  return sb.toString();
}

void main() {
  group('PlaylistLoader', () {
    test('reports progress and parses full playlist', () async {
      final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
      final m3u = makeM3U(300);

      server.listen((HttpRequest req) async {
        req.response.statusCode = 200;
        req.response.headers.contentType =
            ContentType('text', 'plain', charset: 'utf-8');
        // send the whole playlist then close
        req.response.write(m3u);
        await req.response.close();
      });

      final port = server.port;
      final url = 'http://127.0.0.1:$port/playlist.m3u';

      final loader = PlaylistLoader();
      final progresses = <int>[];

      final parsed = await loader.loadFromUrl(url, onProgress: (count) {
        progresses.add(count);
      });

      expect(parsed, isA<Map<String, dynamic>>());
      final channelsFile = parsed['channelsFile'] as String?;
      final channelCount = parsed['channelCount'] as int?;
      expect(channelsFile, isNotNull);
      expect(channelCount, equals(300));
      if (channelsFile != null) {
        expect(File(channelsFile).existsSync(), isTrue);
      }
      expect(progresses.isNotEmpty, isTrue);

      await server.close(force: true);
    });

    test('cancels during download', () async {
      final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);

      // Create a large playlist and stream it slowly
      server.listen((HttpRequest req) async {
        req.response.statusCode = 200;
        req.response.headers.contentType =
            ContentType('text', 'plain', charset: 'utf-8');
        // stream in small chunks with delays
        for (var i = 0; i < 1000; i++) {
          if (i % 2 == 0) {
            req.response.write('#EXTINF:-1,Channel $i\n');
          } else {
            req.response.write('http://stream.example/$i\n');
          }
          await req.response.flush();
          await Future.delayed(Duration(milliseconds: 10));
        }
        await req.response.close();
      });

      final url = 'http://127.0.0.1:${server.port}/slow.m3u';
      final loader = PlaylistLoader();

      final future = loader.loadFromUrl(url, onProgress: (_) {});

      // Wait a short time then cancel
      await Future.delayed(Duration(milliseconds: 100));
      loader.cancelCurrent();

      try {
        final result = await future;
        // If it returned instead of throwing, it should be an empty/partial result
        final channels = result['channels'] as List<dynamic>?;
        expect(channels == null || channels.isEmpty, isTrue);
      } catch (e) {
        // Accept exceptions that indicate cancellation
        expect(e.toString().toLowerCase(), contains('cancel'));
      }

      await server.close(force: true);
    });
  });
}
