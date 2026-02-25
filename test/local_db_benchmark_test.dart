import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/services/local_db_service.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() {
    // Initialize FFI
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;

    // Mock path_provider
    const channel = MethodChannel('plugins.flutter.io/path_provider');
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, (MethodCall methodCall) async {
      if (methodCall.method == 'getApplicationDocumentsDirectory') {
        final dir = Directory.systemTemp.createTempSync();
        return dir.path;
      }
      if (methodCall.method == 'getApplicationCacheDirectory') {
        final dir = Directory.systemTemp.createTempSync();
        return dir.path;
      }
      return null;
    });
  });

  test('LocalDbService.insertAllPrograms Benchmark', () async {
    final service = LocalDbService.instance;
    await service.init();
    await service.clearPrograms();

    // 1. Generate large dataset
    // 100 channels, 1000 programs each = 100,000 items
    // This should be enough to show memory/CPU overhead of flattening
    const int channelCount = 100;
    const int programsPerChannel = 1000;

    final Map<String, List<Map<String, dynamic>>> data = {};

    print('Generating data...');
    for (int i = 0; i < channelCount; i++) {
      final epgId = 'channel_$i';
      final programs = <Map<String, dynamic>>[];
      for (int j = 0; j < programsPerChannel; j++) {
        programs.add({
          // 'epgId' is injected inside insertAllPrograms, so we don't add it here
          'startTs': 1000000 + j * 1000,
          'endTs': 1000000 + (j + 1) * 1000,
          'title': 'Program $j for Channel $i',
          'description': 'Description $j',
          'imageUrl': 'http://image.com/$j.jpg',
        });
      }
      data[epgId] = programs;
    }
    print('Data generated: ${channelCount * programsPerChannel} items.');

    // 2. Measure insertion time
    final stopwatch = Stopwatch()..start();
    await service.insertAllPrograms(data);
    stopwatch.stop();

    print('\n🚀 BENCHMARK RESULTS 🚀');
    print('==========================');
    print('Items inserted: ${channelCount * programsPerChannel}');
    print('Time taken:     ${stopwatch.elapsedMilliseconds}ms');
    print('Avg per item:   ${(stopwatch.elapsedMicroseconds / (channelCount * programsPerChannel)).toStringAsFixed(2)}µs');
    print('==========================\n');

    // 3. Verify
    final count = await service.programCount();
    expect(count, channelCount * programsPerChannel);

    // Clean up
    await service.clearPrograms();
  });
}
