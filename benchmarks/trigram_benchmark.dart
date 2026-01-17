import 'dart:math';

// CURRENT IMPLEMENTATION SIMULATION
String _normalize(String text) {
  // Simplified normalization for benchmark
  return text.toLowerCase().trim();
}

double _trigramSimilarityOld(String a, String b) {
  final sa = _normalize(a);
  final sb = _normalize(b);
  if (sa.isEmpty || sb.isEmpty) return 0.0;

  final aTr = <String>{};
  for (var i = 0; i + 3 <= sa.length; i++) {
    aTr.add(sa.substring(i, i + 3));
  }
  final bTr = <String>{};
  for (var i = 0; i + 3 <= sb.length; i++) {
    bTr.add(sb.substring(i, i + 3));
  }
  if (aTr.isEmpty || bTr.isEmpty) return 0.0;
  final inter = aTr.intersection(bTr).length;
  final union = aTr.length + bTr.length - inter;
  if (union == 0) return 0.0;
  return inter / union;
}

// OPTIMIZED IMPLEMENTATION
Set<int> _generateTrigramSet(String s) {
  final set = <int>{};
  final len = s.length;
  if (len < 3) return set;

  final units = s.codeUnits;
  for (var i = 0; i < len - 2; i++) {
     final t = (units[i] << 32) | (units[i+1] << 16) | units[i+2];
     set.add(t);
  }
  return set;
}

double _calculateTrigramSetSimilarity(Set<int> aSet, String b) {
  // Assume b is already normalized in the optimized flow
  final bSet = _generateTrigramSet(b);
  if (aSet.isEmpty || bSet.isEmpty) return 0.0;

  final inter = aSet.intersection(bSet).length;
  final union = aSet.length + bSet.length - inter;
  if (union == 0) return 0.0;
  return inter / union;
}


void main() {
  const iterations = 10000;
  final channels = List.generate(1000, (i) => "channel_name_$i_sport_hd");
  final target = "channel_name_500_sport";
  final normalizedTarget = _normalize(target);

  print('Benchmarking Trigram Similarity...');
  print('Channels: ${channels.length}');
  print('Iterations: $iterations');

  // Benchmark Old
  final swOld = Stopwatch()..start();
  double checksumOld = 0;
  for (var i = 0; i < iterations; i++) {
    // Simulate the loop in _findBestEpgId
    for (final channel in channels) {
      checksumOld += _trigramSimilarityOld(target, channel);
    }
  }
  swOld.stop();
  print('Old Implementation: ${swOld.elapsedMilliseconds} ms');

  // Benchmark New
  final swNew = Stopwatch()..start();
  double checksumNew = 0;
  // Pre-calculate target
  final targetSet = _generateTrigramSet(normalizedTarget);

  for (var i = 0; i < iterations; i++) {
    for (final channel in channels) {
      // In real code, channels in map are already normalized.
      // We simulate that by passing the string directly (assuming it's normalized enough for this bench)
      checksumNew += _calculateTrigramSetSimilarity(targetSet, channel);
    }
  }
  swNew.stop();
  print('New Implementation: ${swNew.elapsedMilliseconds} ms');

  print('Speedup: ${(swOld.elapsedMilliseconds / swNew.elapsedMilliseconds).toStringAsFixed(2)}x');
}
