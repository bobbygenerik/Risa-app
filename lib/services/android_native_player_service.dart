import 'dart:io';

import 'package:flutter/services.dart';
import 'package:iptv_player/utils/debug_helper.dart';

/// Android playback: prefer external player (VLC) to avoid in-process OOM on TV.
class AndroidNativePlayerService {
  AndroidNativePlayerService._();

  static const MethodChannel _channel = MethodChannel('com.risa.app/player');

  static bool get isAvailable => Platform.isAndroid;

  /// Opens URL in VLC or system player. Returns immediately when launched.
  static Future<bool> openExternal(String url) async {
    if (!isAvailable || url.isEmpty) return false;

    debugLog('AndroidNativePlayerService: openExternal');
    try {
      final result = await _channel.invokeMethod<Map<Object?, Object?>>(
        'openExternal',
        {'url': url},
      );
      return result?['started'] == true;
    } on PlatformException catch (e) {
      debugLog('openExternal: ${e.code} ${e.message}');
      return false;
    }
  }

  /// In-app native fullscreen ExoPlayer (fallback when external fails).
  static Future<bool> playStream(String url, {String? title}) async {
    if (!isAvailable) return false;
    if (url.isEmpty) return false;

    debugLog('AndroidNativePlayerService: playStream');
    try {
      final result = await _channel.invokeMethod<Map<Object?, Object?>>(
        'playStream',
        {'url': url, if (title != null) 'title': title},
      );
      return result?['completed'] == true;
    } on PlatformException catch (e) {
      debugLog('playStream: ${e.code} ${e.message}');
      rethrow;
    }
  }
}
