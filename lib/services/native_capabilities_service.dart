import 'dart:io';

import 'package:flutter/services.dart';

/// Provides runtime checks for optional native integrations (ExoPlayer, etc.).
class NativeCapabilitiesService {
  NativeCapabilitiesService._();

  static const MethodChannel _channel = MethodChannel(
    'com.streamhub.iptv/native_capabilities',
  );
  static bool? _exoSupportedCache;

  /// Returns true when the Android host registered the native ExoPlayer view.
  /// Falls back to false (and caches the answer) if the method channel is
  /// missing or the platform is not Android.
  static Future<bool> supportsNativeExoPlayer() async {
    if (!Platform.isAndroid) return false;
    if (_exoSupportedCache != null) return _exoSupportedCache!;

    try {
      final result = await _channel.invokeMethod<bool>(
        'supportsNativeExoPlayer',
      );
      _exoSupportedCache = result ?? false;
    } on MissingPluginException {
      _exoSupportedCache = false;
    } catch (_) {
      _exoSupportedCache = false;
    }
    return _exoSupportedCache!;
  }
}
