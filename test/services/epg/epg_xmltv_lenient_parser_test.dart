import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/services/epg/epg_xmltv_lenient_parser.dart';

void main() {
  group('drainXmltvChannelAndProgrammeBlocks', () {
    test('drains channel and programme blocks in document order', () {
      final channels = <String>[];
      final programmes = <String>[];
      const buffer = '<tv>'
          '<channel id="a"><display-name>A</display-name></channel>'
          '<programme channel="a" start="x" stop="y"><title>P1</title></programme>'
          '<channel id="b"><display-name>B</display-name></channel>'
          '<programme channel="b" start="x" stop="y"><title>P2</title></programme>';

      final tail = drainXmltvChannelAndProgrammeBlocks(
          buffer, channels.add, programmes.add);

      expect(channels, hasLength(2));
      expect(programmes, hasLength(2));
      expect(programmes[0], contains('P1'));
      expect(programmes[1], contains('P2'));
      expect(tail, isNot(contains('<programme')));
    });

    test('programme interleaved before a later channel block is not lost', () {
      final channels = <String>[];
      final programmes = <String>[];
      const buffer =
          '<programme channel="a" start="x" stop="y"><title>P1</title></programme>'
          '<channel id="b"><display-name>B</display-name></channel>';

      drainXmltvChannelAndProgrammeBlocks(buffer, channels.add, programmes.add);

      expect(programmes, hasLength(1));
      expect(channels, hasLength(1));
    });

    test('keeps partial block across chunk boundary', () {
      final programmes = <String>[];
      const chunk1 = '<programme channel="a" start="x" stop="y"><title>Spl';
      final tail1 =
          drainXmltvChannelAndProgrammeBlocks(chunk1, (_) {}, programmes.add);
      expect(programmes, isEmpty);

      final tail2 = drainXmltvChannelAndProgrammeBlocks(
          '${tail1}it</title></programme>', (_) {}, programmes.add);
      expect(programmes, hasLength(1));
      expect(programmes.first, contains('Split'));
      expect(tail2, isNot(contains('<programme')));
    });

    test('caps an unterminated block instead of growing unbounded', () {
      final junk =
          '<programme channel="a" start="x" stop="y">${'x' * (kEpgMaxPartialBlock + 1024)}';
      final tail = drainXmltvChannelAndProgrammeBlocks(junk, (_) {}, (_) {});
      expect(tail.length, lessThanOrEqualTo(kEpgDrainTailKeep));
    });
  });

  group('parseXmltvTime', () {
    test('parses XMLTV timestamp with offset', () {
      final dt = parseXmltvTime('20260609120000 +0000');
      expect(dt, isNotNull);
      expect(dt!.toUtc().hour, 12);
    });

    test('returns null for garbage instead of DateTime.now()', () {
      expect(parseXmltvTime('not-a-time'), isNull);
      expect(parseXmltvTime(''), isNull);
    });
  });
}
