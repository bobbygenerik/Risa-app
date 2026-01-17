import 'dart:typed_data';
import 'package:flutter_test/flutter_test.dart';
import 'package:image/image.dart' as img;

void main() {
  test('Benchmark decodeImage performance', () {
    // Create a 1920x1080 image
    final width = 1920;
    final height = 1080;
    final image = img.Image(width: width, height: height);

    // Fill with noise
    for (var y = 0; y < height; y++) {
      for (var x = 0; x < width; x++) {
        image.setPixel(x, y, img.ColorRgb8(x % 255, y % 255, (x + y) % 255));
      }
    }

    // Encode to PNG
    final pngBytes = Uint8List.fromList(img.encodePng(image));
    print('Generated PNG size: ${pngBytes.lengthInBytes / 1024 / 1024} MB');

    // Measure decode time
    final stopwatch = Stopwatch()..start();
    final decoded = img.decodeImage(pngBytes);
    stopwatch.stop();

    print('Time to decode 1920x1080 PNG: ${stopwatch.elapsedMilliseconds} ms');

    expect(decoded, isNotNull);
    expect(decoded!.width, width);
    expect(decoded.height, height);
  });

   test('Benchmark encodePng performance', () {
    // Create a 1920x1080 image
    final width = 1920;
    final height = 1080;
    final image = img.Image(width: width, height: height);

    // Measure encode time
    final stopwatch = Stopwatch()..start();
    img.encodePng(image);
    stopwatch.stop();

    print('Time to encode 1920x1080 PNG: ${stopwatch.elapsedMilliseconds} ms');
  });
}
