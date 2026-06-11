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
}
