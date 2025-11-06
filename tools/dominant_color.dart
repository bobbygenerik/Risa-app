import 'dart:io';
import 'package:image/image.dart' as img;
import 'dart:typed_data';

int _quantize(int value, int step) => (value ~/ step) * step;

String dominantColorHex(String path) {
  final bytes = File(path).readAsBytesSync();
  final image = img.decodeImage(bytes);
  if (image == null) {
    throw Exception('Unable to decode image: $path');
  }
  // Downscale for speed
  final resized = img.copyResize(image, width: 200);

  final Map<int, int> hist = {};
  const step = 16; // 16-level per channel quantization (0-240)

  final Uint8List rgba = resized.getBytes(order: img.ChannelOrder.rgba);
  final w = resized.width;
  final h = resized.height;
  for (int y = 0; y < h; y += 2) {
    for (int x = 0; x < w; x += 2) {
      final idx = ((y * w) + x) * 4;
  if (idx + 3 >= rgba.length) continue;
  final r = rgba[idx + 0];
  final g = rgba[idx + 1];
  final b = rgba[idx + 2];
  final a = rgba[idx + 3];
      if (a < 10) continue; // ignore near fully transparent
      final rq = _quantize(r, step);
      final gq = _quantize(g, step);
      final bq = _quantize(b, step);
      final key = (rq << 16) | (gq << 8) | bq;
      hist.update(key, (v) => v + 1, ifAbsent: () => 1);
    }
  }

  if (hist.isEmpty) {
    return '#000000';
  }

  int bestKey = hist.entries.reduce((a, b) => a.value >= b.value ? a : b).key;
  final r = (bestKey >> 16) & 0xFF;
  final g = (bestKey >> 8) & 0xFF;
  final b = bestKey & 0xFF;
  return '#'
      '${r.toRadixString(16).padLeft(2, '0')}'
      '${g.toRadixString(16).padLeft(2, '0')}'
      '${b.toRadixString(16).padLeft(2, '0')}'
      .toUpperCase();
}

void main(List<String> args) {
  final path = args.isNotEmpty ? args.first : 'assets/images/croppedlogo2.png';
  final hex = dominantColorHex(path);
  stdout.writeln(hex);
}
