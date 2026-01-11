import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

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
  @override
  Future<void> dispose();
  
  /// Factory to pick the best implementation for the current platform
  static UniversalPlayerController create({
    required String url,
    bool autoPlay = true,
    bool isLive = false,
    bool preferStockOnLive = true,
    String? backend, // Optional backend selection
    bool hardwareAcceleration = true,
  }) {
    // Default behavior for 'Auto': Always prefer MediaKit for stability and memory efficiency.
    // ExoPlayer can cause OOM errors on some devices, so only use it when explicitly selected.
    final effectiveBackend = backend ?? 'Auto';
    if (effectiveBackend == 'ExoPlayer') {
       return NativeExoPlayerController(url, autoPlay: autoPlay);
    }
    
    // Default to MediaKit (mpv) for maximum codec compatibility, stability, and memory efficiency
    return MediaKitPlayerController(url, autoPlay: autoPlay, hardwareAcceleration: hardwareAcceleration);
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

/// Implementation wrapping media_kit (libmpv)
class MediaKitPlayerController extends UniversalPlayerController {
  final Player _player;
  late final VideoController _videoController;
  final bool autoPlay;
  bool _isDisposed = false;
  UniversalPlayerValue _value = const UniversalPlayerValue();

  MediaKitPlayerController(String url, {this.autoPlay = true, bool hardwareAcceleration = true})
      : _player = Player(configuration: PlayerConfiguration(
          title: 'IPTV Player',
        )) {
    
    // Fix for "Black Screen" on some Android devices:
    // androidAttachSurfaceAfterVideoOutput: true prevents surface race conditions.
    _videoController = VideoController(
      _player,
      configuration: VideoControllerConfiguration(
        enableHardwareAcceleration: hardwareAcceleration,
        // Helps avoid black/blank video on some Android TV devices (e.g. Shield).
        androidAttachSurfaceAfterVideoParameters: true,
      ),
    );

    _player.stream.position.listen(_onPositionChanged);
    _player.stream.duration.listen(_onDurationChanged);
    _player.stream.playing.listen(_onPlayingChanged);
    _player.stream.buffering.listen(_onBufferingChanged);
    _player.stream.error.listen(_onError);
    
    // Load the media
    _player.open(Media(url), play: autoPlay);
  }

  /// Expose the video controller for Video widget
  VideoController get videoController => _videoController;

  void _onPositionChanged(Duration position) {
    if (_isDisposed) return;
    _value = _value.copyWith(position: position);
    notifyListeners();
  }

  void _onDurationChanged(Duration duration) {
    if (_isDisposed) return;
    _value = _value.copyWith(duration: duration);
    notifyListeners();
  }

  void _onPlayingChanged(bool isPlaying) {
    if (_isDisposed) return;
    _value = _value.copyWith(isPlaying: isPlaying);
    notifyListeners();
  }

  void _onBufferingChanged(bool isBuffering) {
    if (_isDisposed) return;
    _value = _value.copyWith(isBuffering: isBuffering);
    notifyListeners();
  }

  void _onError(String error) {
    if (_isDisposed) return;
    _value = _value.copyWith(errorDescription: error);
    notifyListeners();
  }

  @override
  UniversalPlayerValue get value => _value;

  @override
  Future<void> initialize() async {
    // Media kit initializes automatically
    _value = _value.copyWith(isInitialized: true);
    notifyListeners();
  }

  @override
  Future<void> play() => _player.play();

  @override
  Future<void> pause() => _player.pause();

  @override
  Future<void> seekTo(Duration position) => _player.seek(position);

  @override
  Future<void> setVolume(double volume) => _player.setVolume(volume * 100);
  
  @override
  Future<void> setMuted(bool muted) => _player.setVolume(muted ? 0 : 100);

  @override
  Future<void> dispose() async {
    _isDisposed = true;
    await _player.dispose();
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
