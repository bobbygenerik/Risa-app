import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/utils/hash_utils.dart';

void main() {
  test('stableChannelId uses tvgId when present', () {
    final id = stableChannelId(tvgId: 'abc123', name: 'N', url: 'u');
    expect(id, 'abc123');
  });

  test('stableChannelId deterministic for same inputs', () {
    final a = stableChannelId(
        tvgId: null, name: 'Channel One', url: 'http://example.com/stream');
    final b = stableChannelId(
        tvgId: null, name: 'Channel One', url: 'http://example.com/stream');
    expect(a, b);
  });

  test('stableChannelId differs for different urls', () {
    final a = stableChannelId(
        tvgId: null, name: 'Channel One', url: 'http://example.com/stream1');
    final b = stableChannelId(
        tvgId: null, name: 'Channel One', url: 'http://example.com/stream2');
    expect(a, isNot(b));
  });
}
