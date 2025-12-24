import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/services/m3u_parser_service.dart';

void main() {
  test('M3U Parsing Benchmark (10k channels)', () {
    // 1. Generate large M3U content
    final sb = StringBuffer();
    sb.writeln('#EXTM3U x-tvg-url="http://epg.com/guide.xml"');

    const count = 10000;
    for (int i = 0; i < count; i++) {
      sb.writeln(
          '#EXTINF:-1 tvg-id="channel$i" tvg-logo="http://logo.com/$i.png" group-title="Benchmark", Channel $i');
      sb.writeln('http://stream.com/live/$i.m3u8');
    }

    final content = sb.toString();
    final parser = M3UParserService();

    // 2. Measure parsing time
    final stopwatch = Stopwatch()..start();
    final channels = parser.parseM3U(content);
    stopwatch.stop();

    // 3. Report results
    print('\n🚀 BENCHMARK RESULTS 🚀');
    print('==========================');
    print('Items parsed: ${channels.length}');
    print('Time taken:   ${stopwatch.elapsedMilliseconds}ms');
    print(
        'Avg per item: ${(stopwatch.elapsedMicroseconds / count).toStringAsFixed(2)}µs');
    print('==========================\n');

    // 4. Validate
    expect(channels.length, count);
    expect(channels.first.name, 'Channel 0');
    expect(channels.last.name, 'Channel ${count - 1}');

    // Fail if too slow (e.g., > 2 seconds for 10k items on a dev machine is suspicious)
    // Adjust threshold based on environment, but 10k should be sub-second easily.
    if (stopwatch.elapsedMilliseconds > 2000) {
      fail('Parsing took too long: ${stopwatch.elapsedMilliseconds}ms');
    }
  });
}
