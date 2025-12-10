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
  Future<void> seekTo(int positionMs) =>
      _channel.invokeMethod('seekTo', {'position': positionMs});
  Future<void> switchAudioTrack(int index, {int? groupIndex}) =>
      _channel.invokeMethod('switchAudioTrack', {
        'trackIndex': index,
        if (groupIndex != null) 'groupIndex': groupIndex,
      });

  /// Apply a precise native override by rendererIndex, groupIndex and trackIndex.
  /// Returns a map with keys like 'success' and optional 'message'.
  Future<Map<String, dynamic>> switchAudioByIndices(
      {required int rendererIndex,
      required int groupIndex,
      required int trackIndex}) async {
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

  Future<int> getPosition() async =>
      (await _channel.invokeMethod('getPosition')) as int;
  Future<int> getDuration() async =>
      (await _channel.invokeMethod('getDuration')) as int;


}

class NativeExoPlayer extends StatefulWidget {
  final String videoUrl;
  final bool autoPlay;
  final void Function(NativeExoPlayerController)? onCreated;

  const NativeExoPlayer(
      {super.key,
      required this.videoUrl,
      this.autoPlay = true,
      this.onCreated});

  @override
  State<NativeExoPlayer> createState() => _NativeExoPlayerState();
}

class _NativeExoPlayerState extends State<NativeExoPlayer> {
  @override
  Widget build(BuildContext context) {
    if (!Platform.isAndroid) {
      return const Center(
          child: Text('Native ExoPlayer is available on Android only'));
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
