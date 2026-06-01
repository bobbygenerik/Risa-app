part of '../logo_matching_service.dart';

/// Data classes for logo matching
class LogoData {
  final Uint8List bytes;
  final int width;
  final int height;
  final String format;
  final String url;
  final String hash;
  final DateTime timestamp;

  LogoData({
    required this.bytes,
    required this.width,
    required this.height,
    required this.format,
    required this.url,
    required this.hash,
    required this.timestamp,
  });

  Map<String, dynamic> toJson() => {
        'width': width,
        'height': height,
        'format': format,
        'url': url,
        'hash': hash,
        'timestamp': timestamp.toIso8601String(),
        'bytes': bytes,
      };
}

class LogoFeatures {
  final List<double> colorHistogram;
  final List<double> edgeFeatures;
  final List<double> textureFeatures;
  final Point dimensions;

  LogoFeatures({
    required this.colorHistogram,
    required this.edgeFeatures,
    required this.textureFeatures,
    required this.dimensions,
  });

  Map<String, dynamic> toJson() => {
        'colorHistogram': colorHistogram,
        'edgeFeatures': edgeFeatures,
        'textureFeatures': textureFeatures,
        'dimensions': {'x': dimensions.x, 'y': dimensions.y},
      };
}

class LogoMatch {
  final String epgId;
  final double similarity;
  final LogoMatchType matchType;

  LogoMatch({
    required this.epgId,
    required this.similarity,
    required this.matchType,
  });
}

enum LogoMatchType {
  visualSimilarity,
  exactMatch,
  colorMatch,
}

class Point {
  final double x;
  final double y;

  Point(this.x, this.y);
}