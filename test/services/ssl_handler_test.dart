import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/services/ssl_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  test('does not allow all certificates by default', () async {
    SharedPreferences.setMockInitialValues({});

    await SSLHandler.init();

    expect(SSLHandler.allowAllCertificates, isFalse);
  });
}
