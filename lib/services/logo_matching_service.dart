import 'dart:io';
import 'dart:math' as math;
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:crypto/crypto.dart';
import '../utils/throttled_notifier.dart';
import 'logo_matching_isolate.dart';
import 'package:path_provider/path_provider.dart';
import 'package:dio/dio.dart';
import '../utils/debug_helper.dart';

part 'logo_matching/logo_matching_logic.dart';
part 'logo_matching/logo_matching_helpers_io.dart';
part 'logo_matching/logo_matching_helpers_vision.dart';
part 'logo_matching/logo_matching_helpers_persist.dart';
part 'logo_matching/logo_matching_models.dart';

/// Service for logo-based channel matching using computer vision techniques
/// Compares channel logos to improve EPG matching accuracy
class LogoMatchingService extends ChangeNotifier with ThrottledNotifier {
  static const String _logoCacheDir = 'channel_logos';
  static const String _logoIndexFile = 'logo_index.json';
  static const int _maxCacheSize = 500; // Maximum number of logos to cache
  static const int _maxLogoSize =
      200; // Maximum width/height for processed logos

  final Dio _dio = Dio(BaseOptions(
    connectTimeout: Duration(seconds: 10),
    receiveTimeout: Duration(seconds: 15),
    sendTimeout: Duration(seconds: 10),
  ));

  final Map<String, LogoData> _logoCache = {};
  final Map<String, LogoFeatures> _logoFeatures = {};
  final Map<String, LogoFeatures> _featuresByHash = {};
  final Map<String, double> _similarityCache = {};

  Directory? _cacheDirectory;
  bool _isInitialized = false;

  // Getters
  bool get isInitialized => _isInitialized;
  int get cachedLogosCount => _logoCache.length;
  int get processedFeaturesCount => _logoFeatures.length;

  void _notifyLogoChange() => notifyListenersThrottled();
}

