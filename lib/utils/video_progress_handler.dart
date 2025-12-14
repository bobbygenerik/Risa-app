import 'package:flutter/widgets.dart';
import 'package:video_player/video_player.dart';
import 'debouncer.dart';

/// Optimized video progress handler that prevents memory leaks
/// Uses frame-based throttling instead of timers
class VideoProgressHandler {
  final VideoPlayerController controller;
  final void Function(Duration position, Duration duration)? onProgressUpdate;
  final void Function(bool isPlaying)? onPlayingStateChanged;
  
  late final FrameThrottler _progressThrottler;
  late final Debouncer _stateDebouncer;
  
  bool _isDisposed = false;
  Duration _lastPosition = Duration.zero;
  bool _lastPlayingState = false;
  
  VideoProgressHandler({
    required this.controller,
    this.onProgressUpdate,
    this.onPlayingStateChanged,
  }) {
    _progressThrottler = FrameThrottler();
    _stateDebouncer = Debouncer(delay: const Duration(milliseconds: 100));
    
    // Listen to controller changes
    controller.addListener(_onControllerUpdate);
  }
  
  void _onControllerUpdate() {
    if (_isDisposed || !controller.value.isInitialized) return;
    
    final currentPosition = controller.value.position;
    final duration = controller.value.duration;
    final isPlaying = controller.value.isPlaying;
    
    // Throttle progress updates using frame-based approach
    if (currentPosition != _lastPosition) {
      _lastPosition = currentPosition;
      _progressThrottler(() {
        if (!_isDisposed && onProgressUpdate != null) {
          onProgressUpdate!(currentPosition, duration);
        }
      });
    }
    
    // Debounce playing state changes
    if (isPlaying != _lastPlayingState) {
      _lastPlayingState = isPlaying;
      _stateDebouncer(() {
        if (!_isDisposed && onPlayingStateChanged != null) {
          onPlayingStateChanged!(isPlaying);
        }
      });
    }
  }
  
  /// Dispose of the handler and clean up resources
  void dispose() {
    if (_isDisposed) return;
    
    _isDisposed = true;
    controller.removeListener(_onControllerUpdate);
    _progressThrottler.cancel();
    _stateDebouncer.dispose();
  }
}

/// Mixin for widgets that need optimized video progress handling
mixin VideoProgressMixin<T extends StatefulWidget> on State<T> {
  VideoProgressHandler? _progressHandler;
  
  /// Initialize video progress handling
  void initVideoProgress(
    VideoPlayerController controller, {
    void Function(Duration position, Duration duration)? onProgressUpdate,
    void Function(bool isPlaying)? onPlayingStateChanged,
  }) {
    _progressHandler?.dispose();
    _progressHandler = VideoProgressHandler(
      controller: controller,
      onProgressUpdate: onProgressUpdate,
      onPlayingStateChanged: onPlayingStateChanged,
    );
  }
  
  /// Dispose video progress handling
  void disposeVideoProgress() {
    _progressHandler?.dispose();
    _progressHandler = null;
  }
  
  @override
  void dispose() {
    disposeVideoProgress();
    super.dispose();
  }
}