import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/services/live_tv_artwork_service.dart';

void main() {
  group('LiveTvArtworkService', () {
    test('does not treat poster EPG images as ready artwork', () {
      final service = LiveTvArtworkService(onArtworkUpdate: () {});
      final channel = _channel();
      final now = DateTime.now();
      final posterProgram = _program(
        now,
        imageUrl: 'https://image.tmdb.org/t/p/w342/poster.jpg',
      );

      expect(service.hasArtworkReady(posterProgram, channel), isFalse);
    });

    test('treats landscape EPG images as ready artwork', () {
      final service = LiveTvArtworkService(onArtworkUpdate: () {});
      final channel = _channel();
      final now = DateTime.now();
      final landscapeProgram = _program(
        now,
        imageUrl: 'https://image.tmdb.org/t/p/w1280/backdrop.jpg',
      );

      expect(service.hasArtworkReady(landscapeProgram, channel), isTrue);
    });
  });
}

Channel _channel() {
  return Channel(
    id: 'channel-1',
    name: 'Test Channel',
    url: 'https://example.com/stream.m3u8',
    tvgId: 'channel-1',
  );
}

Program _program(DateTime now, {required String imageUrl}) {
  return Program(
    id: 'program-1',
    channelId: 'channel-1',
    title: 'Example Show',
    startTime: now.subtract(const Duration(minutes: 10)),
    endTime: now.add(const Duration(minutes: 50)),
    imageUrl: imageUrl,
  );
}
