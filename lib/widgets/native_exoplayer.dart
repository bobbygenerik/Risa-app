import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NativeExoPlayerController {
  final int viewId;
  final MethodChannel _channel;

  // Use a per-view channel name that includes the numeric view id so native
  // side can register per-instance handlers. String interpolation is used
  // here to embed the id.
  NativeExoPlayerController._(this.viewId)
    : _channel = MethodChannel('com.streamhub.iptv/exoplayer_$viewId');

  Future<void> play() => _channel.invokeMethod('play');
  Future<void> pause() => _channel.invokeMethod('pause');
  Future<void> seekTo(int positionMs) => _channel.invokeMethod('seekTo', {'position': positionMs});
  Future<void> switchAudioTrack(int index, {int? groupIndex}) => _channel.invokeMethod('switchAudioTrack', {
        'trackIndex': index,
        if (groupIndex != null) 'groupIndex': groupIndex,
      });

  /// Apply a precise native override by rendererIndex, groupIndex and trackIndex.
  /// Returns a map with keys like 'success' and optional 'message'.
  Future<Map<String, dynamic>> switchAudioByIndices({required int rendererIndex, required int groupIndex, required int trackIndex}) async {
    final res = await _channel.invokeMethod('switchAudioByIndices', {
      'rendererIndex': rendererIndex,
      'groupIndex': groupIndex,
      'trackIndex': trackIndex,
    });
  if (res is Map) return Map<String, dynamic>.from(res);
    return {'success': false};
  }
  
  /// Return a list of native audio tracks exposed by the platform view.
  /// Each entry is a map with keys: label, language, groupIndex, trackIndex.
  Future<List<Map<String, dynamic>>> listAudioTracks() async {
    final res = await _channel.invokeMethod('listAudioTracks');
    if (res == null) return [];
    final out = <Map<String, dynamic>>[];
    for (final e in (res as List)) {
      if (e is Map) {
        try {
          out.add(Map<String, dynamic>.from(e));
        } catch (e) {
          debugPrint('Error parsing audio track: $e');
        }
      }
    }
    return out;
  }
  Future<int> getPosition() async => (await _channel.invokeMethod('getPosition')) as int;
  Future<int> getDuration() async => (await _channel.invokeMethod('getDuration')) as int;
  
  /// Enable AI upscaling on the native player (if supported).
  /// Returns true on success, false otherwise (or if not implemented).
  Future<bool> enableAIUpscaling() async {
    try {
      final res = await _channel.invokeMethod('enableAIUpscaling');
      if (res is bool) return res;
    } catch (e) {
      debugPrint('Error enabling AI upscaling: $e');
    }
    return false;
  }

  /// Disable AI upscaling on the native player (if supported).
  Future<bool> disableAIUpscaling() async {
    try {
      final res = await _channel.invokeMethod('disableAIUpscaling');
      if (res is bool) return res;
    } catch (e) {
      debugPrint('Error disabling AI upscaling: $e');
    }
    return false;
  }

  /// Set the AI upscaling quality on the native player (if supported).
  Future<bool> setAIQuality(String quality) async {
    try {
      final res = await _channel.invokeMethod('setAIQuality', {'quality': quality});
      if (res is bool) return res;
    } catch (e) {
      debugPrint('Error setting AI quality: $e');
    }
    return false;
  }

  /// Enable or disable the GPU delegate for the native upscaler. Returns true if the operation succeeded.
  Future<bool> setGPUDelegateEnabled(bool enabled) async {
    try {
      final res = await _channel.invokeMethod('setGPUDelegateEnabled', {'enabled': enabled});
      if (res is bool) return res;
    } catch (e) {
      debugPrint('Error setting GPU delegate: $e');
    }
    return false;
  }

  /// Return profiling information from the native upscaler (last run).
  Future<Map<String, dynamic>> getUpscalerProfile() async {
    try {
      final res = await _channel.invokeMethod('getUpscalerProfile');
      if (res is Map) return Map<String, dynamic>.from(res);
    } catch (e) {
      debugPrint('Error getting upscaler profile: $e');
    }
    return {};
  }

  /// Set overlap percent for tiled inference (0.0 - 0.9). Default 0.5.
  Future<bool> setOverlapPercent(double percent) async {
    try {
      final res = await _channel.invokeMethod('setOverlapPercent', {'percent': percent});
      if (res is bool) return res;
    } catch (e) {
      debugPrint('Error setting overlap percent: $e');
    }
    return false;
  }

  /// Enable or disable adaptive overlap tuning (default: enabled).
  Future<bool> setAdaptiveEnabled(bool enabled) async {
    try {
      final res = await _channel.invokeMethod('setAdaptiveEnabled', {'enabled': enabled});
      if (res is bool) return res;
    } catch (e) {
      debugPrint('Error setting adaptive enabled: $e');
    }
    return false;
  }

  /// Set target latency (ms) for adaptive tuning. The upscaler will try to
  /// adjust overlap so the total processing time approaches this target.
  Future<bool> setAdaptiveTargetMs(int ms) async {
    try {
      final res = await _channel.invokeMethod('setAdaptiveTargetMs', {'ms': ms});
      if (res is bool) return res;
    } catch (e) {
      debugPrint('Error setting adaptive target ms: $e');
    }
    return false;
  }

  /// Request the native player to upscale the current frame and return a
  /// base64-encoded PNG/JPEG string when available. Returns null if
  /// unsupported or on failure.
  Future<String?> upscaleCurrentFrame() async {
    try {
      final res = await _channel.invokeMethod('upscaleCurrentFrame');
      if (res is String) return res;
    } catch (e) {
      debugPrint('Error upscaling current frame: $e');
    }
    return null;
  }

  /// Capture, upscale and save the resulting image to app internal storage.
  /// Returns an absolute file path on success or null on failure.
  Future<String?> saveUpscaledCurrentFrame() async {
    try {
      final res = await _channel.invokeMethod('saveUpscaledCurrentFrame');
      if (res is String) return res;
    } catch (e) {
      debugPrint('Error saving upscaled frame: $e');
    }
    return null;
  }

  /// Ask the native player to load a TFLite model from a local file path.
  Future<bool> loadAIModel(String path) async {
    try {
      final res = await _channel.invokeMethod('loadAIModel', {'path': path});
      if (res is bool) return res;
    } catch (e) {
      debugPrint('Error loading AI model: $e');
    }
    return false;
  }
}

class NativeExoPlayer extends StatefulWidget {
  final String videoUrl;
  final bool autoPlay;
  final void Function(NativeExoPlayerController)? onCreated;

  const NativeExoPlayer({super.key, required this.videoUrl, this.autoPlay = true, this.onCreated});

  @override
  State<NativeExoPlayer> createState() => _NativeExoPlayerState();
}

class _NativeExoPlayerState extends State<NativeExoPlayer> {
  @override
  Widget build(BuildContext context) {
    if (!Platform.isAndroid) {
      return const Center(child: Text('Native ExoPlayer is available on Android only'));
    }

    return AndroidView(
      viewType: 'com.streamhub.iptv/exoplayer',
      creationParams: {
        'videoUrl': widget.videoUrl,
        'autoPlay': widget.autoPlay,
      },
      creationParamsCodec: const StandardMessageCodec(),
      onPlatformViewCreated: (id) {
        final controller = NativeExoPlayerController._(id);
        widget.onCreated?.call(controller);
      },
    );
  }
}
