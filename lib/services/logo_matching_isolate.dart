import 'dart:typed_data';
import 'package:image/image.dart' as img;
import 'dart:math' as math;

// NOTE: Feature extraction worker intentionally omitted for now.
// We keep a dedicated logo processing worker (`processLogoIsolate`) which
// handles decode/resize/encode off the main isolate. Full feature
// extraction can be implemented later using the pure-Dart `image` API.
Map<String, dynamic> extractLogoFeaturesIsolate(Uint8List bytes) {
  return {
    'colorHistogram': <double>[],
    'edgeFeatures': <double>[],
    'textureFeatures': <double>[],
    'width': 0,
    'height': 0,
  };
}

// Worker to process (resize/encode) a logo and return serialized bytes and dims
Map<String, dynamic> processLogoIsolate(Map<String, dynamic> params) {
  final bytes = params['bytes'] as Uint8List;
  final maxLogoSize = params['maxLogoSize'] as int? ?? 200;

  final decoded = img.decodeImage(bytes);
  if (decoded == null) return {'bytes': Uint8List(0), 'width': 0, 'height': 0};

  img.Image work = decoded;
  if (decoded.width > maxLogoSize || decoded.height > maxLogoSize) {
    work = img.copyResize(decoded, width: maxLogoSize, height: (decoded.height * maxLogoSize / decoded.width).round());
  }

  final encoded = img.encodePng(work);
  return {'bytes': Uint8List.fromList(encoded), 'width': work.width, 'height': work.height};
}
