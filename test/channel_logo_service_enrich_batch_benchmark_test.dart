import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/services/channel_logo_service.dart';
import 'package:iptv_player/services/image_validation_service.dart';
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'dart:io';

class MockPathProviderPlatform extends Fake
    with MockPlatformInterfaceMixin
    implements PathProviderPlatform {
  @override
  Future<String?> getApplicationSupportPath() async {
    return '.';
  }
}

void main() {
  setUp(() async {
    final file = File('./channel_logos_cache.json');
    if (await file.exists()) {
      await file.delete();
    }
    PathProviderPlatform.instance = MockPathProviderPlatform();

    final knownLogos = {
      'tsn':
          'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/tsn-ca.png',
      'fox':
          'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/fox-us.png',
      'cnn':
          'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/cnn-us.png',
      'nbc':
          'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/nbc-us.png',
      'cbs':
          'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/cbs-us.png',
    };

    for (final url in knownLogos.values) {
      ImageValidationService.markValid(url);
    }
  });

  test('Benchmark enrichBatch After Optimization', () async {
    // Generate 500 channels to amplify the loop overhead
    final channelNames = List.generate(500, (i) => 'channel $i');

    // Mix in some valid ones
    for (int i = 0; i < 500; i += 10) {
      channelNames[i] = 'tsn channel $i';
      channelNames[i + 1] = 'fox channel $i';
    }

    final stopwatch1 = Stopwatch()..start();
    final results1 = await ChannelLogoService.enrichBatch(channelNames);
    stopwatch1.stop();

    print('Parallel enrichBatch took: ${stopwatch1.elapsedMilliseconds}ms');

    expect(results1.length, 500);
  });
}
