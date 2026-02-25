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
  setUpAll(() async {
    // Clean up cache file to ensure benchmark runs on cold cache (loop logic)
    final file = File('./channel_logos_cache.json');
    if (await file.exists()) {
      await file.delete();
    }

    PathProviderPlatform.instance = MockPathProviderPlatform();

    // Pre-populate ImageValidationService to avoid network calls
    // We copy a subset of known logos from ChannelLogoService to ensure they are marked valid
    final knownLogos = {
      'tsn':
          'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/tsn-ca.png',
      'tsn1':
          'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/canada/tsn-1-ca.png',
      'fox':
          'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/fox-us.png',
      'fox news':
          'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/fox-news-channel-us.png',
    };

    for (final url in knownLogos.values) {
      ImageValidationService.markValid(url);
    }
  });

  test('ChannelLogoService Benchmark', () async {
    // Warmup
    await ChannelLogoService.getLogoUrl('warmup');

    final stopwatch = Stopwatch()..start();

    const iterations = 100;

    // Exact match (using unique suffixes that normalize to the same key WON'T work for exact match because exact match requires key equality)
    // But we want to measure the LOOP for exact match scenario (where key == normalized).
    // Problem: Service caches result.
    // So we can only measure "Cold" exact match if we have many keys.
    // Since we can't clear cache, we will skip "Exact Match Cold" benchmark or just do it once.
    // However, we can test "Partial Match" which exercises the loop.

    // Partial match (prefix)
    // We append a suffix that doesn't get normalized away easily, e.g. " tsn channel $i"
    // "tsn channel $i" contains "tsn".
    // It will iterate the map.
    stopwatch.reset();
    for (int i = 0; i < iterations; i++) {
      // "tsn channel $i" is likely not in cache
      await ChannelLogoService.getLogoUrl('tsn channel $i');
    }
    final partialTime = stopwatch.elapsedMicroseconds;
    print('Partial match ($iterations iterations): ${partialTime / 1000}ms');

    // No match
    // "nomatch $i"
    stopwatch.reset();
    for (int i = 0; i < iterations; i++) {
      await ChannelLogoService.getLogoUrl('nomatch $i');
    }
    final noMatchTime = stopwatch.elapsedMicroseconds;
    print('No match ($iterations iterations): ${noMatchTime / 1000}ms');

    // Worst case: Partial match that triggers verification but fails?
    // We can't easily force failure since we mocked success for keys.
    // But the loop overhead is what we want to optimize.
  });

  test('ChannelLogoService Functional Tests', () async {
    // 1. Exact match
    final tsn = await ChannelLogoService.getLogoUrl('tsn');
    expect(tsn, contains('tsn-ca.png'));

    // 2. Partial match (Prefix)
    // "tsn 4k" should match "tsn" key
    final tsn4k = await ChannelLogoService.getLogoUrl('tsn 4k');
    expect(tsn4k, contains('tsn-ca.png'));

    // 3. Partial match (Longer Key First)
    // "fox sports 1" should match "fox sports 1" key, NOT "fox" or "fox sports"
    // Wait, "fox sports 1" is EXACT match for "fox sports 1" key.
    // Let's test a PARTIAL match that contains both.
    // "fox sports 1 hd" contains "fox sports 1", "fox sports", "fox".
    // It should match the longest: "fox sports 1".

    // We need to ensure "fox sports 1" is in known logos and valid.
    // Let's add "fox sports 1" to ImageValidationService valid list if not already.
    // In setUpAll, we added 'fox'. We need 'fox sports 1'.

    // We can't easily add to setUpAll now inside test.
    // But we can call markValid inside test.
    final foxSports1Url = 'https://raw.githubusercontent.com/tv-logo/tv-logos/main/countries/united-states/fox-sports-1-us.png';
    ImageValidationService.markValid(foxSports1Url);

    final foxSports1 = await ChannelLogoService.getLogoUrl('fox sports 1 hd');
    expect(foxSports1, foxSports1Url);

    // 4. No Match
    final noMatch = await ChannelLogoService.getLogoUrl('NonExistentChannelXYZ');
    expect(noMatch, isNull);
  });
}
