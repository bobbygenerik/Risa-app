import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/utils/json_offload.dart';

void main() {
  group('jsonEncodeOffMain', () {
    test('matches jsonEncode output for a snapshot-shaped map', () async {
      final snapshot = {
        'savedAt': 1781090320927,
        'playlistId': 'pl_f74e5558',
        'channelCount': 7134,
        'categories': [
          {
            'name': 'Local',
            'channels': [
              {
                'id': 'cbs12wpriprovidence.us',
                'name': 'CBS12 WPRI',
                'url': 'http://example.com/stream',
                'logoUrl': null,
                'channelNumber': 12,
                'programs': [
                  {
                    'startTs': 1781090000000,
                    'endTs': 1781093600000,
                    'title': 'NCIS',
                    'description': null,
                    'imageUrl': 'http://cltv.tmsimg.com/x.jpg',
                  },
                ],
              },
            ],
          },
        ],
      };
      expect(await jsonEncodeOffMain(snapshot), jsonEncode(snapshot));
    });

    test('handles empty map', () async {
      expect(await jsonEncodeOffMain(const <String, dynamic>{}), '{}');
    });
  });

  group('decodeJsonlBatchOffMain', () {
    test('decodes each line to a map, preserving order', () async {
      final lines = [
        '{"epgId":"cnn.us","startTs":1,"endTs":2,"title":"News"}',
        '{"epgId":"amc.us","startTs":3,"endTs":4,"title":"Gladiator"}',
      ];
      final maps = await decodeJsonlBatchOffMain(lines);
      expect(maps, hasLength(2));
      expect(maps[0]!['epgId'], 'cnn.us');
      expect(maps[1]!['title'], 'Gladiator');
    });

    test('returns null at the index of a malformed line', () async {
      final lines = [
        '{"epgId":"cnn.us"}',
        'not json at all',
        '{"epgId":"amc.us"}',
      ];
      final maps = await decodeJsonlBatchOffMain(lines);
      expect(maps, hasLength(3));
      expect(maps[0], isNotNull);
      expect(maps[1], isNull);
      expect(maps[2], isNotNull);
    });

    test('returns null for valid JSON that is not an object', () async {
      final maps = await decodeJsonlBatchOffMain(['[1,2,3]']);
      expect(maps.single, isNull);
    });

    test('handles empty input', () async {
      expect(await decodeJsonlBatchOffMain(const []), isEmpty);
    });
  });
}
