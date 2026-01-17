import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:path/path.dart' as path;

// Mock model for the optimized version
class DownloadItem {
  final FileSystemEntity file;
  final FileStat stat;
  DownloadItem({required this.file, required this.stat});
}

void main() {
  test('Downloads Screen Sort and Access Benchmark', () async {
    // Setup: Create a temp dir with many files
    final tempDir = Directory.systemTemp.createTempSync('downloads_bench_');
    const fileCount = 500;

    print('Generating $fileCount files in ${tempDir.path}...');

    for (int i = 0; i < fileCount; i++) {
      final f = File(path.join(tempDir.path, 'video_$i.mp4'));
      f.createSync();
      // Add some variety to timestamps
      f.setLastModifiedSync(DateTime.now().subtract(Duration(minutes: i)));
    }

    print('Files generated. Starting benchmark.');

    // ---------------------------------------------------------
    // BASELINE: The current implementation (statSync in sort and loop)
    // ---------------------------------------------------------
    final stopwatchBaseline = Stopwatch()..start();

    // 1. List files
    final filesBaseline = tempDir.listSync()
        .whereType<File>()
        .where((f) => f.path.endsWith('.mp4'))
        .toList();

    // 2. Sort with statSync (The Anti-Pattern)
    filesBaseline.sort((a, b) {
      final aStat = a.statSync();
      final bStat = b.statSync();
      return bStat.modified.compareTo(aStat.modified);
    });

    // 3. Simulate Build/Access with statSync
    for (var file in filesBaseline) {
      final stat = file.statSync(); // Simulating access in ListView.builder
      final size = stat.size;
      final date = stat.modified;
      // access variables to prevent dead code elimination
      assert(size >= 0);
      assert(date.year > 2000);
    }

    stopwatchBaseline.stop();
    print('Baseline Time: ${stopwatchBaseline.elapsedMilliseconds} ms');


    // ---------------------------------------------------------
    // OPTIMIZED: Pre-fetch stats (The Fix)
    // ---------------------------------------------------------
    final stopwatchOptimized = Stopwatch()..start();

    // 1. List files
    final filesOptimized = await tempDir.list()
        .where((e) => e is File && e.path.endsWith('.mp4'))
        .toList();

    // 2. Async map to model (The Fix)
    final itemsFuture = filesOptimized.map((f) async {
      final stat = await f.stat();
      return DownloadItem(file: f, stat: stat);
    });

    final items = await Future.wait(itemsFuture);

    // 3. Sort using cached stats
    items.sort((a, b) => b.stat.modified.compareTo(a.stat.modified));

    // 4. Simulate Build/Access using cached stats
    for (var item in items) {
      final stat = item.stat; // No I/O here!
      final size = stat.size;
      final date = stat.modified;
      assert(size >= 0);
      assert(date.year > 2000);
    }

    stopwatchOptimized.stop();
    print('Optimized Time: ${stopwatchOptimized.elapsedMilliseconds} ms');

    // Cleanup
    tempDir.deleteSync(recursive: true);

    // Assert improvement
    print('Improvement: ${(stopwatchBaseline.elapsedMilliseconds - stopwatchOptimized.elapsedMilliseconds)} ms faster');
    print('Speedup: ${(stopwatchBaseline.elapsedMilliseconds / stopwatchOptimized.elapsedMilliseconds).toStringAsFixed(1)}x');
  });
}
