import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/services/epg/mapping_persist_buffer.dart';

void main() {
  group('MappingPersistBuffer', () {
    test('coalesces adds into a single flush after the debounce window', () {
      fakeAsync((async) {
        final flushed = <Map<String, String>>[];
        final buffer = MappingPersistBuffer(
          flushDelay: const Duration(milliseconds: 500),
          onFlush: (batch) async => flushed.add(Map.of(batch)),
        );

        buffer.add('cnn', 'cnn.us');
        buffer.add('amc', 'amc.us');
        buffer.add('cnn', 'cnn2.us'); // later value wins
        expect(flushed, isEmpty, reason: 'nothing flushes inside the window');

        async.elapse(const Duration(milliseconds: 600));
        expect(flushed, hasLength(1));
        expect(flushed.single, {'cnn': 'cnn2.us', 'amc': 'amc.us'});
      });
    });

    test('adds after a flush start a new batch', () {
      fakeAsync((async) {
        final flushed = <Map<String, String>>[];
        final buffer = MappingPersistBuffer(
          flushDelay: const Duration(milliseconds: 500),
          onFlush: (batch) async => flushed.add(Map.of(batch)),
        );

        buffer.add('cnn', 'cnn.us');
        async.elapse(const Duration(milliseconds: 600));
        buffer.add('amc', 'amc.us');
        async.elapse(const Duration(milliseconds: 600));

        expect(flushed, hasLength(2));
        expect(flushed[0], {'cnn': 'cnn.us'});
        expect(flushed[1], {'amc': 'amc.us'});
      });
    });

    test('flushNow drains immediately and cancels the timer', () {
      fakeAsync((async) {
        final flushed = <Map<String, String>>[];
        final buffer = MappingPersistBuffer(
          flushDelay: const Duration(milliseconds: 500),
          onFlush: (batch) async => flushed.add(Map.of(batch)),
        );

        buffer.add('cnn', 'cnn.us');
        buffer.flushNow();
        expect(flushed, hasLength(1));

        async.elapse(const Duration(seconds: 1));
        expect(flushed, hasLength(1), reason: 'no double flush');
      });
    });

    test('flush errors are reported, not thrown', () {
      fakeAsync((async) {
        Object? reported;
        final buffer = MappingPersistBuffer(
          flushDelay: const Duration(milliseconds: 100),
          onFlush: (batch) async => throw StateError('db closed'),
          onError: (e) => reported = e,
        );

        buffer.add('cnn', 'cnn.us');
        async.elapse(const Duration(milliseconds: 200));
        expect(reported, isA<StateError>());
      });
    });
  });
}
