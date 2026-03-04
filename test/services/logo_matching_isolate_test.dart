import 'dart:typed_data';
import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/services/logo_matching_isolate.dart';

void main() {
  group('Logo Matching Isolate Tests', () {
    test('extractLogoFeaturesIsolate does not crash on invalid input', () {
      final features = extractLogoFeaturesIsolate(Uint8List.fromList([1, 2, 3]));
      expect(features['width'], 0);
    });
  });
}
