import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/screens/live_tv/live_tv_program_type_row_cache.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('IncrementalEpgService.dataRevision', () {
    late IncrementalEpgService service;

    setUp(() {
      service = IncrementalEpgService();
    });

    tearDown(() {
      service.dispose();
    });

    test('bumps when a notification is delivered', () {
      final before = service.dataRevision;
      service.notifyListeners();
      expect(service.dataRevision, greaterThan(before));
    });

    test('throttled notifies do not bump until delivered', () async {
      service.notifyListeners();
      final afterFirst = service.dataRevision;
      // Second notify inside the 250ms throttle window is deferred.
      service.notifyListeners();
      expect(service.dataRevision, afterFirst,
          reason: 'deferred notify must not bump the revision yet');
      // Once the throttle elapses the pending notify is delivered.
      await Future<void>.delayed(const Duration(milliseconds: 350));
      expect(service.dataRevision, greaterThan(afterFirst));
    });
  });

  group('LiveTvProgramTypeRowCache.shouldRefreshFor', () {
    test('true on first call, false while revision is unchanged', () {
      final cache = LiveTvProgramTypeRowCache();
      expect(cache.shouldRefreshFor(0), isTrue);
      expect(cache.shouldRefreshFor(0), isFalse);
      expect(cache.shouldRefreshFor(0), isFalse);
    });

    test('true again when revision advances', () {
      final cache = LiveTvProgramTypeRowCache();
      expect(cache.shouldRefreshFor(3), isTrue);
      expect(cache.shouldRefreshFor(3), isFalse);
      expect(cache.shouldRefreshFor(4), isTrue);
      expect(cache.shouldRefreshFor(4), isFalse);
    });
  });
}
