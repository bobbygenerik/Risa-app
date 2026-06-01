import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/utils/url_redactor.dart';

void main() {
  test('redacts credential query parameters', () {
    final redacted = redactUrl(
      'https://host/player_api.php?username=alice&password=secret&action=x',
    );

    expect(redacted, contains('username=REDACTED'));
    expect(redacted, contains('password=REDACTED'));
    expect(redacted, isNot(contains('alice')));
    expect(redacted, isNot(contains('secret')));
  });

  test('redacts credential path segments in Xtream stream URLs', () {
    final redacted = redactUrl('https://host/live/alice/secret/123.ts');

    expect(redacted, 'https://host/live/REDACTED/REDACTED/123.ts');
  });

  test('redacts credentials embedded in non-url text', () {
    final redacted = redactUrl('prefix username=alice password=secret suffix');

    expect(redacted, 'prefix username=REDACTED password=REDACTED suffix');
  });
}
