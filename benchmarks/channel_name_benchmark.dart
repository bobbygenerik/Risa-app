
void main() {
  final info = '-1 tvg-id="cnn" tvg-logo="http://example.com/logo.png" group-title="News",CNN International';

  // Warmup
  for (int i = 0; i < 1000; i++) {
    extractChannelNameOriginal(info);
    extractChannelNameOptimized(info);
  }

  final stopwatch = Stopwatch()..start();

  int count = 10000000; // 10 million iterations
  for (int i = 0; i < count; i++) {
    extractChannelNameOriginal(info);
  }

  stopwatch.stop();
  print('Original: ${stopwatch.elapsedMilliseconds}ms');

  stopwatch.reset();
  stopwatch.start();

  for (int i = 0; i < count; i++) {
    extractChannelNameOptimized(info);
  }

  stopwatch.stop();
  print('Optimized: ${stopwatch.elapsedMilliseconds}ms');
}

String extractChannelNameOriginal(String info) {
  final parts = info.split(',');
  if (parts.length > 1) {
    return parts.last.trim();
  }
  return 'Unknown Channel';
}

String extractChannelNameOptimized(String info) {
  final lastComma = info.lastIndexOf(',');
  if (lastComma != -1) {
    return info.substring(lastComma + 1).trim();
  }
  return 'Unknown Channel';
}
