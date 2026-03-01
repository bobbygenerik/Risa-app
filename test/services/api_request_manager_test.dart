import 'dart:async';
import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/services/api_request_manager.dart';

void main() {
  setUp(() {
    ApiRequestManager().clear();
  });

  tearDown(() {
    ApiRequestManager().clear();
  });

  test('ApiRequestManager deadlock reproduction', () async {
    final manager = ApiRequestManager();
    const cacheKey = 'test_key';

    try {
      // This should complete quickly. If it hangs, it's deadlocked.
      // The deadlock happens because _executeTracked awaits the result of _inFlightRequests.remove(key),
      // which returns the Future of _executeTracked itself (which is still running).
      final result = await manager.execute(
        cacheKey,
        () async => 'success',
      ).timeout(const Duration(seconds: 2));

      expect(result, 'success');
    } on TimeoutException {
      fail('Deadlock detected: ApiRequestManager.execute timed out');
    }
  });
}
