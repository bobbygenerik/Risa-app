import 'dart:async';
import 'package:flutter/widgets.dart';

// Minimal shim of flutter_vlc_player API used by the app. Methods are no-ops
// or return sensible defaults so the app can compile. Runtime media won't play.

// Hardware acceleration enum
enum HwAcc { auto, full, disabled }

class VlcPlayerOptions {
  final List<dynamic>? advanced;
  final List<dynamic>? video;
  final List<dynamic>? audio;
  final List<dynamic>? rtp;
  final List<dynamic>? sout;

  VlcPlayerOptions({this.advanced, this.video, this.audio, this.rtp, this.sout});
}

class VlcAdvancedOptions {
  final List<dynamic> options;
  VlcAdvancedOptions(this.options);
  static dynamic networkCaching(int ms) => {'network_caching': ms};
  static dynamic liveCaching(int ms) => {'live_caching': ms};
}

class VlcVideoOptions {
  final List<dynamic> options;
  VlcVideoOptions(this.options);
  static dynamic dropLateFrames(bool v) => {'drop_late_frames': v};
}

class VlcAudioOptions {
  final List<dynamic> options;
  VlcAudioOptions(this.options);
}

class VlcRtpOptions {
  final List<dynamic> options;
  VlcRtpOptions(this.options);
  static dynamic rtpOverRtsp(bool v) => {'rtp_over_rtsp': v};
}

class VlcStreamOutputOptions {
  final List<dynamic> options;
  VlcStreamOutputOptions(this.options);
}

class VlcPlayerValue {
  Duration position;
  Duration duration;
  bool isPlaying;
  int volume;

  VlcPlayerValue({Duration? position, Duration? duration, this.isPlaying = false, this.volume = 100})
      : position = position ?? Duration.zero,
        duration = duration ?? const Duration(minutes: 5);
}

class VlcPlayerController {
  final String source;
  final bool autoPlay;
  final HwAcc? hwAcc;
  final VlcPlayerOptions? options;

  VlcPlayerValue _value = VlcPlayerValue();
  final List<VoidCallback> _listeners = [];

  VlcPlayerController._(this.source, {this.hwAcc, this.autoPlay = false, this.options});

  factory VlcPlayerController.network(String url, {HwAcc? hwAcc, bool autoPlay = false, VlcPlayerOptions? options}) {
    return VlcPlayerController._(url, hwAcc: hwAcc, autoPlay: autoPlay, options: options);
  }

  VlcPlayerValue get value => _value;

  Future<void> initialize() async {
    // no-op stub: pretend initialization completes
    _value = VlcPlayerValue(position: Duration.zero, duration: const Duration(minutes: 5), isPlaying: autoPlay);
    _notifyListeners();
    return Future.value();
  }

  void play() {
    _value.isPlaying = true;
    _notifyListeners();
  }

  void pause() {
    _value.isPlaying = false;
    _notifyListeners();
  }

  void seekTo(Duration position) {
    _value.position = position;
    _notifyListeners();
  }

  void setVolume(int vol) {
    _value.volume = vol.clamp(0, 100);
    _notifyListeners();
  }

  Future<int?> getSpuTracksCount() async => 0;
  Future<int?> getAudioTracksCount() async => 0;

  void setSpuTrack(int track) {}
  void setAudioTrack(int track) {}
  void addListener(VoidCallback listener) => _listeners.add(listener);
  void removeListener(VoidCallback listener) => _listeners.remove(listener);

  void dispose() {
    _listeners.clear();
  }

  void _notifyListeners() {
    for (final l in List<VoidCallback>.from(_listeners)) {
      try {
        l();
      } catch (_) {}
    }
  }
}

class VlcPlayer extends StatelessWidget {
  final VlcPlayerController controller;
  final double? aspectRatio;
  final Widget? placeholder;

  const VlcPlayer({required this.controller, this.aspectRatio, this.placeholder, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Minimal placeholder rendering — real video won't play in this shim.
    if (placeholder != null) return placeholder!;
    return Container(color: const Color(0xFF000000));
  }
}
