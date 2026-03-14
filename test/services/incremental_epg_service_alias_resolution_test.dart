import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('IncrementalEpgService alias resolution', () {
    late IncrementalEpgService service;

    setUp(() {
      service = IncrementalEpgService();
    });

    tearDown(() {
      service.dispose();
    });

    test('resolves exact EPG id from alias name while preserving stable channel key', () {
      final now = DateTime.now();
      service.applyProgramSnapshot({
        'bbc1.uk': [
          Program(
            id: 'program-1',
            channelId: 'bbc1.uk',
            title: 'Morning News',
            startTime: now.subtract(const Duration(minutes: 15)),
            endTime: now.add(const Duration(minutes: 15)),
          ),
        ],
      });

      expect(
        service.hasProgramsForChannel(
          'fallback-id',
          channelName: 'bbc1.uk',
        ),
        isTrue,
      );

      expect(service.getManualMapping('fallback-id'), isNull);

      final program = service.getCurrentProgram(
        'fallback-id',
        channelName: 'bbc1.uk',
      );

      expect(program, isNotNull);
      expect(program!.channelId, 'bbc1.uk');
      expect(program.title, 'Morning News');
    });
  });
}