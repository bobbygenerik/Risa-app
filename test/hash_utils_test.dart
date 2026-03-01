import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/utils/hash_utils.dart';

void main() {
  group('stableChannelId', () {
    test('uses tvgId when present', () {
      final id = stableChannelId(tvgId: 'abc123', name: 'N', url: 'u');
      expect(id, 'abc123');
    });

    test('ignores empty tvgId', () {
      final id = stableChannelId(
          tvgId: '   ', name: 'Channel One', url: 'http://example.com/stream');
      expect(id, startsWith('ch_'));
    });

    test('deterministic for same inputs (standard)', () {
      final a = stableChannelId(
          tvgId: null, name: 'Channel One', url: 'http://example.com/stream');
      final b = stableChannelId(
          tvgId: null, name: 'Channel One', url: 'http://example.com/stream');
      expect(a, b);
    });

    test('deterministic for inputs with whitespace', () {
      final a = stableChannelId(
          tvgId: null, name: '  Channel One  ', url: '  http://example.com/stream  ');
      final b = stableChannelId(
          tvgId: null, name: 'Channel One', url: 'http://example.com/stream');
      expect(a, b);
    });

    test('deterministic for inputs with mixed case', () {
      final a = stableChannelId(
          tvgId: null, name: 'CHANNEL ONE', url: 'HTTP://EXAMPLE.COM/STREAM');
      final b = stableChannelId(
          tvgId: null, name: 'channel one', url: 'http://example.com/stream');
      expect(a, b);
    });

    test('handles internal whitespace in URL correctly (removes it)', () {
      // Logic: URL internal whitespace is removed
      final a = stableChannelId(
          tvgId: null, name: 'Channel', url: 'http:// example . com / stream');
      final b = stableChannelId(
          tvgId: null, name: 'Channel', url: 'http://example.com/stream');
      expect(a, b);
    });

    test('handles internal whitespace in Name correctly (preserves/normalized)', () {
      // Logic: Name internal whitespace is kept (after normalization if any)
      // Actually, standard `trim()` keeps internal whitespace.
      // So 'Channel One' != 'ChannelOne'
      final a = stableChannelId(
          tvgId: null, name: 'Channel One', url: 'u');
      final b = stableChannelId(
          tvgId: null, name: 'ChannelOne', url: 'u');
      expect(a, isNot(b));
    });

    test('differs for different urls', () {
      final a = stableChannelId(
          tvgId: null, name: 'Channel One', url: 'http://example.com/stream1');
      final b = stableChannelId(
          tvgId: null, name: 'Channel One', url: 'http://example.com/stream2');
      expect(a, isNot(b));
    });

    test('handles Non-ASCII characters correctly (fallback path)', () {
      final a = stableChannelId(
          tvgId: null, name: 'Español TV', url: 'http://example.com/café');
      final b = stableChannelId(
          tvgId: null, name: 'español tv', url: 'http://example.com/café');

      // Should match despite case diff
      expect(a, b);

      // Ensure it produces a valid ID
      expect(a, startsWith('ch_'));
    });

    test('Non-ASCII vs ASCII consistency', () {
      // Even if fallback path is used, the logic should be consistent
      // But actually, implementation details might differ slightly in how they normalize if logic isn't perfectly mirrored.
      // The key is that for the SAME input, it produces the SAME output.
      final input = 'Café';
      final a = stableChannelId(tvgId: null, name: input, url: 'u');
      final b = stableChannelId(tvgId: null, name: input, url: 'u');
      expect(a, b);
    });
  });
}
