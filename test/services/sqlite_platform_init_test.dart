import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/services/sqlite_platform_init.dart';

void main() {
  group('usesSqfliteFfi', () {
    test('uses ffi on Linux desktop', () {
      expect(usesSqfliteFfi(isWeb: false, operatingSystem: 'linux'), isTrue);
    });

    test('does not use ffi on Android', () {
      expect(usesSqfliteFfi(isWeb: false, operatingSystem: 'android'), isFalse);
    });

    test('does not use ffi on web', () {
      expect(usesSqfliteFfi(isWeb: true, operatingSystem: 'linux'), isFalse);
    });
  });
}
