import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/models/channel.dart';

void main() {
  group('ChannelEpgLookup.epgLookupId', () {
    test('prefers tvgId when present', () {
      final channel = Channel(
        id: 'fallback-id',
        name: 'BBC One',
        url: 'http://example.com/stream',
        tvgId: 'bbc1.uk',
        attributes: {'tvg-name': 'BBC One HD'},
      );

      expect(channel.epgLookupId, 'bbc1.uk');
    });

    test('keeps the stable id when tvgId is missing', () {
      final channel = Channel(
        id: 'fallback-id',
        name: 'BBC One',
        url: 'http://example.com/stream',
        attributes: {'tvg-name': 'bbc1.uk'},
      );

      expect(channel.epgLookupId, 'fallback-id');
      expect(channel.epgLookupAliasId, 'bbc1.uk');
      expect(channel.epgLookupName, 'bbc1.uk');
    });

    test('falls back to tvg_name as transient lookup metadata', () {
      final channel = Channel(
        id: 'fallback-id',
        name: 'BBC One',
        url: 'http://example.com/stream',
        attributes: {'tvg_name': 'bbc1.uk.alt'},
      );

      expect(channel.epgLookupId, 'fallback-id');
      expect(channel.epgLookupAliasId, 'bbc1.uk.alt');
      expect(channel.epgLookupNameFallback, 'bbc1.uk.alt');
    });

    test('falls back to id when tvgId and tvg-name are missing', () {
      final channel = Channel(
        id: 'fallback-id',
        name: 'BBC One',
        url: 'http://example.com/stream',
      );

      expect(channel.epgLookupId, 'fallback-id');
    });
  });
}
