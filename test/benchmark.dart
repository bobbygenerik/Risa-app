import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/services/local_db_service.dart';
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class MockPathProviderPlatform extends Fake
    with MockPlatformInterfaceMixin
    implements PathProviderPlatform {
  @override
  Future<String?> getApplicationDocumentsPath() async => '.';

  @override
  Future<String?> getApplicationCachePath() async => '.';
}

void main() async {
  test('benchmark N+1 vs batch', () async {
    WidgetsFlutterBinding.ensureInitialized();
    PathProviderPlatform.instance = MockPathProviderPlatform();
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;

    final db = LocalDbService.instance;
    await db.init();
    await db.clearChannels();

    // Populate mock data
    final List<Map<String, dynamic>> channels = [];
    final List<String> categories = ['News', 'Sports', 'Movies', 'Kids', 'Documentary', 'Music', 'Local', 'International', 'Premium', 'Adult'];

    for (int i = 0; i < 5000; i++) {
      channels.add({
        'id': 'channel_$i',
        'name': 'Channel $i',
        'url': 'http://example.com/$i',
        'groupTitle': categories[i % categories.length],
        'idx': i,
      });
    }
    await db.insertChannels(channels);

    print('Data inserted. Starting benchmark...');

    // Benchmark N+1 approach
    final startNPlusOne = DateTime.now();
    final resultNPlusOne = <String, List<Map<String, dynamic>>>{};
    for (final c in categories) {
      final rows = await db.getChannelsForCategoryPage(
        c,
        offset: 0,
        limit: 30,
      );
      resultNPlusOne[c] = rows;
    }
    final durationNPlusOne = DateTime.now().difference(startNPlusOne);
    print('N+1 approach took: ${durationNPlusOne.inMicroseconds} microseconds');

    // Benchmark New approach
    try {
      final startBatch = DateTime.now();
      final resultBatch = await db.getChannelsForCategoriesPage(
        categories,
        offset: 0,
        limit: 30,
      );
      final durationBatch = DateTime.now().difference(startBatch);
      print('Batch approach took: ${durationBatch.inMicroseconds} microseconds');

      bool match = true;
      for (final c in categories) {
        if (resultNPlusOne[c]!.length != resultBatch[c]!.length) match = false;
      }
      print('Results match: $match');
    } catch(e) {
      print('Batch approach error: $e');
    }
  });
}
