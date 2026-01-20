// ignore_for_file: avoid_print
import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/utils/epg_matching_utils.dart';

// Unoptimized version (current implementation)
class UnoptimizedNormalizer {
  static String normalizeTitle(String title) {
    final aggressive = EPGMatchingUtils.isLikelyNewsTitle(title);
    var output = EPGMatchingUtils.normalizeTitleForLookup(
      title,
      aggressiveForNews: aggressive,
    );
    output =
        output.replaceAll(RegExp(r'\s*[\(\[\{](19|20)\d{2}[\)\]\}]\s*$'), '');
    output = output.replaceAll(RegExp(r'[\s\-_:]+(19|20)\d{2}$'), '');
    output = output.replaceAll(
        RegExp(r'\b(4k|uhd|fhd|hd|sd|1080p|720p|2160p)\b',
            caseSensitive: false),
        '');
    output = output.replaceAll(
        RegExp(r'\bS\d{1,2}\s*[\-:\.]?\s*E\d{1,2}\b', caseSensitive: false),
        '');
    output = output.replaceAll(
        RegExp(
            r'\b(?:Ep|Episode|Part|Chapter|Pt)\.?\s*\d+\b',
            caseSensitive: false),
        '');
    output = output.replaceAll(RegExp(r'\s+'), ' ').trim();
    return output;
  }
}

// Optimized version (proposed implementation)
class OptimizedNormalizer {
  static final RegExp _yearParens = RegExp(r'\s*[\(\[\{](19|20)\d{2}[\)\]\}]\s*$');
  static final RegExp _yearSuffix = RegExp(r'[\s\-_:]+(19|20)\d{2}$');
  static final RegExp _quality = RegExp(r'\b(4k|uhd|fhd|hd|sd|1080p|720p|2160p)\b',
      caseSensitive: false);
  static final RegExp _seasonEpisode = RegExp(
      r'\bS\d{1,2}\s*[\-:\.]?\s*E\d{1,2}\b',
      caseSensitive: false);
  static final RegExp _episodePart = RegExp(
      r'\b(?:Ep|Episode|Part|Chapter|Pt)\.?\s*\d+\b',
      caseSensitive: false);
  static final RegExp _whitespace = RegExp(r'\s+');

  static String normalizeTitle(String title) {
    final aggressive = EPGMatchingUtils.isLikelyNewsTitle(title);
    var output = EPGMatchingUtils.normalizeTitleForLookup(
      title,
      aggressiveForNews: aggressive,
    );
    output = output.replaceAll(_yearParens, '');
    output = output.replaceAll(_yearSuffix, '');
    output = output.replaceAll(_quality, '');
    output = output.replaceAll(_seasonEpisode, '');
    output = output.replaceAll(_episodePart, '');
    output = output.replaceAll(_whitespace, ' ').trim();
    return output;
  }
}

void main() {
  test('TMDB Normalization Benchmark', () {
    final titles = [
      'Breaking Bad S01E01 1080p',
      'The Matrix (1999)',
      'Stranger Things 2016',
      'Game of Thrones - 2011',
      'Avengers: Endgame [2019]',
      'Friends S10 E15 HD',
      'Planet Earth II UHD',
      'BBC News at 10',
      'Some Random Movie',
      'Another Title with Part 1',
      'A very long title that has no match but needs processing anyway to see if regex overhead matters even on misses',
    ];

    // Warmup
    for (var i = 0; i < 100; i++) {
      for (final title in titles) {
        UnoptimizedNormalizer.normalizeTitle(title);
        OptimizedNormalizer.normalizeTitle(title);
      }
    }

    final iterations = 5000;

    // Measure Unoptimized
    final stopwatchUnopt = Stopwatch()..start();
    for (var i = 0; i < iterations; i++) {
      for (final title in titles) {
        UnoptimizedNormalizer.normalizeTitle(title);
      }
    }
    stopwatchUnopt.stop();

    // Measure Optimized
    final stopwatchOpt = Stopwatch()..start();
    for (var i = 0; i < iterations; i++) {
      for (final title in titles) {
        OptimizedNormalizer.normalizeTitle(title);
      }
    }
    stopwatchOpt.stop();

    print('\n🚀 TMDB Normalization Benchmark 🚀');
    print('====================================');
    print('Iterations: $iterations * ${titles.length} titles');
    print('Unoptimized Time: ${stopwatchUnopt.elapsedMilliseconds}ms');
    print('Optimized Time:   ${stopwatchOpt.elapsedMilliseconds}ms');

    final speedup = stopwatchUnopt.elapsedMilliseconds / stopwatchOpt.elapsedMilliseconds;
    print('Speedup:          ${speedup.toStringAsFixed(2)}x');
    print('====================================\n');

    // Verification that both produce same output
    for (final title in titles) {
      expect(OptimizedNormalizer.normalizeTitle(title), equals(UnoptimizedNormalizer.normalizeTitle(title)), reason: 'Mismatch for title: $title');
    }
  });
}
