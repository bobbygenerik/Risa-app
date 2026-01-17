import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/models/content.dart';

// This benchmark measures the difference between synchronous JSON decoding
// and asynchronous decoding using `compute` (Isolate).
// Run with: flutter test test/json_benchmark.dart

void main() {
  test('Benchmark JSON Decoding Performance', () async {
    print('Generating large JSON dataset...');
    // Generate 20,000 items to simulate a large history/library
    final largeList = List.generate(20000, (index) => {
      'id': 'movie_$index',
      'title': 'Movie Title $index',
      'description': 'This is a description for movie $index. It has some length to it to simulate real data.',
      'type': 'movie',
      'imageUrl': 'https://example.com/image_$index.jpg',
      'rating': 4.5,
      'genres': ['Action', 'Adventure', 'Sci-Fi'],
      'watchProgress': 0.5,
      'lastWatchedDate': DateTime.now().toIso8601String(),
    });

    final jsonStr = jsonEncode(largeList);
    print('JSON payload size: ${(jsonStr.length / 1024 / 1024).toStringAsFixed(2)} MB');

    // Benchmark Synchronous
    print('\nRunning Synchronous Benchmark...');
    final stopwatchSync = Stopwatch()..start();
    final List<dynamic> parsedListSync = jsonDecode(jsonStr);
    final contentsSync = parsedListSync.map((m) => Content.fromMap(m)).toList();
    stopwatchSync.stop();
    print('Synchronous parsing time: ${stopwatchSync.elapsedMilliseconds} ms');

    // Benchmark Compute (Isolate)
    print('\nRunning Isolate (compute) Benchmark...');
    final stopwatchCompute = Stopwatch()..start();

    final contentsCompute = await compute(parseContentList, jsonStr);

    stopwatchCompute.stop();
    print('Isolate (compute) parsing time: ${stopwatchCompute.elapsedMilliseconds} ms');

    final diff = stopwatchSync.elapsedMilliseconds - stopwatchCompute.elapsedMilliseconds;
    if (diff > 0) {
      print('Improvement (Main Thread Unblocked): ${diff} ms (Note: Total time might be higher due to serialization overhead, but main thread is free)');
    } else {
      print('Difference: $diff ms');
    }

    // Verification
    expect(contentsCompute.length, contentsSync.length);
    expect(contentsCompute.first.id, contentsSync.first.id);
  });
}

// Top-level function for compute
List<Content> parseContentList(String jsonStr) {
  final List<dynamic> list = jsonDecode(jsonStr);
  return list.map((m) => Content.fromMap(m as Map<String, dynamic>)).toList();
}
