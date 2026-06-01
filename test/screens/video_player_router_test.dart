import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/screens/video_player_router.dart';

void main() {
  test('rejects empty stream URLs', () {
    expect(isUsableStreamUrl(''), isFalse);
    expect(isUsableStreamUrl('   '), isFalse);
  });

  test('accepts non-empty stream URLs', () {
    expect(isUsableStreamUrl('https://example.com/live.m3u8'), isTrue);
  });
}
