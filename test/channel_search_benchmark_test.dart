import 'package:flutter_test/flutter_test.dart';
// ignore_for_file: avoid_print

void main() {
  test('Channel Search Benchmark (50k items)', () {
    // 1. Generate large list of names
    const count = 50000;
    final names = List.generate(count, (i) => 'Channel Number $i - Test Stream');
    // Pre-calculate lower case names as the provider does
    final lowerNames = names.map((n) => n.toLowerCase()).toList();

    final query = 'number 4999'; // Search for something at the end

    // 2. Measure linear search time on main thread
    final stopwatch = Stopwatch()..start();

    final resultIndices = <int>[];
    for (int i = 0; i < lowerNames.length; i++) {
      if (lowerNames[i].contains(query)) {
        resultIndices.add(i);
        if (resultIndices.length >= 50) break;
      }
    }

    stopwatch.stop();

    // 3. Report results
    print('\n🚀 SEARCH BENCHMARK RESULTS 🚀');
    print('==========================');
    print('Items searched: $count');
    print('Query: "$query"');
    print('Time taken:   ${stopwatch.elapsedMilliseconds}ms');
    print('==========================\n');
  });
}
