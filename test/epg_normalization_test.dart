import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/utils/provider_normalizer.dart';

void main() {
  test('normalizeEpgUrl trims and adds scheme', () {
    final in1 = ' example.com/xmltv.php ';
    final out1 = normalizeEpgUrl(in1);
    expect(out1.startsWith('https://'), isTrue);
    expect(out1.contains('example.com/xmltv.php'), isTrue);

    final in2 = '//example.com/xmltv.php';
    final out2 = normalizeEpgUrl(in2);
    expect(out2.startsWith('https://'), isTrue);
    expect(out2.contains('example.com/xmltv.php'), isTrue);
  });

  test('normalizeEpgUrl rejects relative paths without host', () {
    final in1 = 'xmltv.php?u=1';
    expect(() => normalizeEpgUrl(in1), throwsA(isA<NormalizationError>()));
  });

  test('normalizeEpgUrl picks first valid in comma list', () {
    final list = ' , //bad, https://example.com/xmltv.php, http://other';
    final out = normalizeEpgUrl(list);
    expect(out.contains('example.com/xmltv.php'), isTrue);
  });
}
