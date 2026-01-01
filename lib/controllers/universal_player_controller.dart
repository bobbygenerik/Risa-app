import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

/// Abstract interface for a video player controller.
/// This allows switching between the stock `video_player` (Texture-based)
/// and a custom native `ExoPlayer` (Surface-based) implementation.
abstract class UniversalPlayerController extends ChangeNotifier {
  UniversalPlayerValue get value;

  Future<void> initialize();
  Future<void> play();
  Future<void> pause();
  Future<void> seekTo(Duration position);
  Future<void> setVolume(double volume);
  Future<void> setMuted(bool muted);
  Future<void> dispose();
  
  /// Factory to pick the best implementation for the current platform
  static UniversalPlayerController create({
    required String url,
    bool autoPlay = true,
  }) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      // Use native implementation on Android to fix color tinting issues (Nvidia Shield)
      return NativeExoPlayerController(url, autoPlay: autoPlay);
    }
    // Use stock implementation on other platforms
    return StockPlayerController(url, autoPlay: autoPlay);
  }
}

/// Unified state value for the player
class UniversalPlayerValue {
  final Duration duration;
  final Duration position;
  final Duration buffered;
  final bool isPlaying;
  final bool isBuffering;
  final bool isInitialized;
  final String? errorDescription;
  final Size size;

  const UniversalPlayerValue({
    this.duration = Duration.zero,
    this.position = Duration.zero,
    this.buffered = Duration.zero,
    this.isPlaying = false,
    this.isBuffering = false,
    this.isInitialized = false,
    this.errorDescription,
    this.size = Size.zero,
  });

  UniversalPlayerValue copyWith({
    Duration? duration,
    Duration? position,
    Duration? buffered,
    bool? isPlaying,
    bool? isBuffering,
    bool? isInitialized,
    String? errorDescription,
    Size? size,
  }) {
    return UniversalPlayerValue(
      duration: duration ?? this.duration,
      position: position ?? this.position,
      buffered: buffered ?? this.buffered,
      isPlaying: isPlaying ?? this.isPlaying,
      isBuffering: isBuffering ?? this.isBuffering,
      isInitialized: isInitialized ?? this.isInitialized,
      errorDescription: errorDescription ?? this.errorDescription,
      size: size ?? this.size,
    );
  }
}

/// Implementation wrapping the standard `video_player` package
class StockPlayerController extends UniversalPlayerController {
  final VideoPlayerController _controller;
  final bool autoPlay;
  bool _isDisposed = false;

  StockPlayerController(String url, {this.autoPlay = true})
      : _controller = VideoPlayerController.networkUrl(Uri.parse(url));

  /// Expose the underlying controller if needed (e.g. for VideoPlayer widget)
  VideoPlayerController get rawController => _controller;

  @override
  UniversalPlayerValue get value {
    final v = _controller.value;
    return UniversalPlayerValue(
      duration: v.duration,
      position: v.position,
      buffered: v.buffered.isNotEmpty ? v.buffered.last.end : Duration.zero,
      isPlaying: v.isPlaying,
      isBuffering: v.isBuffering,
      isInitialized: v.isInitialized,
      errorDescription: v.errorDescription,
      size: v.size,
    );
  }

  @override
  Future<void> initialize() async {
    await _controller.initialize();
    _controller.addListener(_listener);
    if (autoPlay) {
      await _controller.play();
    }
    notifyListeners();
  }

  void _listener() {
    if (_isDisposed) return;
    notifyListeners();
  }

  @override
  Future<void> play() => _controller.play();

  @override
  Future<void> pause() => _controller.pause();

  @override
  Future<void> seekTo(Duration position) => _controller.seekTo(position);

  @override
  Future<void> setVolume(double volume) => _controller.setVolume(volume);
  
  @override
  Future<void> setMuted(bool muted) => _controller.setVolume(muted ? 0 : 1);

  @override
  Future<void> dispose() async {
    _isDisposed = true;
    _controller.removeListener(_listener);
    await _controller.dispose();
    super.dispose();
  }
}

/// Implementation wrapping the custom Native ExoPlayer (MethodChannel)
class NativeExoPlayerController extends UniversalPlayerController {
  final String url;
  final bool autoPlay;
  MethodChannel? _channel;
  UniversalPlayerValue _value = const UniversalPlayerValue();
  bool _isDisposed = false;
  
  // A unique ID is assigned by the view, but we are a controller *before* the view is created.
  // Strategy: The Controller holds the state, and the View (when created) connects to this controller.
  // HOWEVER, PlatformViews on Android are usually self-contained.
  // To bridge this, the `ExoPlayerVideoView` widget will accept this controller
  // and register its MethodChannel with us once the platform view is created.
  
  NativeExoPlayerController(this.url, {this.autoPlay = true});

  /// Called by the `ExoPlayerVideoView` when the platform view is ready
  void onPlatformViewCreated(int id) {
    _channel = MethodChannel('com.streamhub.iptv/exoplayer_$id');
    _channel!.setMethodCallHandler(_handleMethodCall);
    _value = _value.copyWith(isInitialized: true);
    notifyListeners();
    
    // Initial load
    _channel!.invokeMethod('loadVideo', {
      'videoUrl': url,
      'autoPlay': autoPlay,
    });
  }

  Future<void> _handleMethodCall(MethodCall call) async {
    if (_isDisposed) return;
    
    switch (call.method) {
      case 'onPlaybackStateChanged':
        final state = call.arguments['state'];
        final isPlaying = state == 'ready'; // Simplification, handled by onPlayingChanged usually
        final isBuffering = state == 'buffering';
        _value = _value.copyWith(
          isBuffering: isBuffering,
        );
        notifyListeners();
        break;
      case 'onPlayingChanged':
        final isPlaying = call.arguments['isPlaying'] as bool;
        _value = _value.copyWith(isPlaying: isPlaying);
        notifyListeners();
        break;
      case 'onPositionUpdate':
        final pos = call.arguments['position'] as int;
        final dur = call.arguments['duration'] as int;
        final buf = call.arguments['bufferedPosition'] as int;
        _value = _value.copyWith(
          position: Duration(milliseconds: pos),
          duration: Duration(milliseconds: dur),
          buffered: Duration(milliseconds: buf),
        );
        notifyListeners();
        break;
      case 'onPlayerError':
        final error = call.arguments['error'];
        _value = _value.copyWith(errorDescription: error.toString());
        notifyListeners();
        break;
    }
  }

  @override
  UniversalPlayerValue get value => _value;

  @override
  Future<void> initialize() async {
    // Initialization happens when the View is created and calls onPlatformViewCreated
    // For API consistency, we can just return here.
    return;
  }

  @override
  Future<void> play() async => _channel?.invokeMethod('play');

  @override
  Future<void> pause() async => _channel?.invokeMethod('pause');

  @override
  Future<void> seekTo(Duration position) async {
    await _channel?.invokeMethod('seekTo', {'position': position.inMilliseconds});
  }

  @override
  Future<void> setVolume(double volume) async {
    await _channel?.invokeMethod('setVolume', {'volume': volume});
  }
  
  @override
  Future<void> setMuted(bool muted) async {
    await _channel?.invokeMethod('setMuted', {'muted': muted});
  }

  @override
  Future<void> dispose() async {
    _isDisposed = true;
    await _channel?.invokeMethod('stop');
    super.dispose();
  }
}
