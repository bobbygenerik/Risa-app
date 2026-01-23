import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';
import 'package:iptv_player/services/http_client_service.dart';
import 'package:iptv_player/utils/debug_helper.dart';

/// Abstract interface for a video player controller.
/// This allows swapping player backends behind a single API.
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

  /// Factory to pick the best implementation for the current platform.
  static UniversalPlayerController create({
    required String url,
    bool autoPlay = true,
    bool isLive = false,
    bool preferStockOnLive = true,
    String? backend,
    bool hardwareAcceleration = false, // Changed default to false for stability
  }) {
    return VlcUniversalPlayerController(
      url,
      autoPlay: autoPlay,
      isLive: isLive,
      hardwareAcceleration: hardwareAcceleration,
    );
  }
}

/// Unified state value for the player.
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

/// Implementation wrapping VLC.
class VlcUniversalPlayerController extends UniversalPlayerController {
  VlcPlayerController? _controller;
  UniversalPlayerValue _value = const UniversalPlayerValue();
  bool _isDisposed = false;
  bool _pendingPlay = false;
  Duration? _pendingSeek;
  int? _pendingVolume;
  
  // Config parameters stored for lazy init
  final String _url;
  final bool _autoPlay;
  final bool _isLive;
  final bool _hwAcc;

  VlcUniversalPlayerController(
    String url, {
    bool autoPlay = true,
    bool isLive = false,
    bool hardwareAcceleration = false, // Changed default to false
  }) : _url = url,
       _autoPlay = autoPlay,
       _isLive = isLive,
       _hwAcc = hardwareAcceleration {
     // No native init here
     debugLog('VLC Lazy Controller Created for $_url (HW Acc: $_hwAcc)');
  }

  VlcPlayerController? get vlcController => _controller;

  void _syncValue(VlcPlayerValue vlcValue) {
    if (_isDisposed) return;
    final bufferPercent = vlcValue.bufferPercent.clamp(0.0, 100.0);
    final buffered = Duration(
      milliseconds:
          (vlcValue.duration.inMilliseconds * (bufferPercent / 100)).round(),
    );
    _value = _value.copyWith(
      duration: vlcValue.duration,
      position: vlcValue.position,
      buffered: buffered,
      isPlaying: vlcValue.isPlaying,
      isBuffering: vlcValue.isBuffering,
      isInitialized: vlcValue.isInitialized,
      errorDescription: vlcValue.hasError ? vlcValue.errorDescription : null,
      size: vlcValue.size,
    );
    notifyListeners();
  }

  void _onVlcUpdate() {
    if (_controller == null) return;
    _syncValue(_controller!.value);
    if (_controller!.value.isInitialized && !_controller!.value.hasError) {
      if (_pendingVolume != null) {
        final volume = _pendingVolume!;
        _pendingVolume = null;
        _controller!.setVolume(volume).catchError((e) {
          debugLog('VLC setVolume error: $e');
        });
      }
      if (_pendingSeek != null) {
        final position = _pendingSeek!;
        _pendingSeek = null;
        _controller!.seekTo(position).catchError((e) {
           debugLog('VLC seekTo error: $e');
        });
      }
      // Only auto-play if explicitly pending OR if autoPlay was requested and we just initialized
      if (_pendingPlay || (_autoPlay && !_value.isPlaying)) {
        _pendingPlay = false;
        _controller!.play().catchError((e) {
           debugLog('VLC play error: $e');
        });
      }
    }
  }

  @override
  UniversalPlayerValue get value => _value;

  @override
  Future<void> initialize() async {
    if (_controller != null) return;
    
    try {
      debugLog('VLC initializing native controller...');
      _controller = VlcPlayerController.network(
        _url,
        autoPlay: _autoPlay,
        hwAcc: _hwAcc ? HwAcc.auto : HwAcc.disabled,
        options: VlcPlayerOptions(
          advanced: VlcAdvancedOptions([
            VlcAdvancedOptions.networkCaching(_isLive ? 1200 : 800),
            VlcAdvancedOptions.liveCaching(_isLive ? 1200 : 800),
            VlcAdvancedOptions.clockSynchronization(0),
          ]),
          http: VlcHttpOptions([
            VlcHttpOptions.httpUserAgent(
              HttpClientService().videoHeaders['User-Agent'] ??
                  'VLC/3.0.0 LibVLC/3.0.0',
            ),
            VlcHttpOptions.httpReconnect(true),
            VlcHttpOptions.httpContinuous(true),
          ]),
        ),
      );
      
      _controller!.addListener(_onVlcUpdate);
      
      // Wait for initialization signal
      final completer = Completer<void>();
      void listener() {
        if (_controller == null) return;
        if (_controller!.value.isInitialized) {
          _controller!.removeListener(listener);
          _syncValue(_controller!.value);
          if (!completer.isCompleted) completer.complete();
        } else if (_controller!.value.hasError) {
           _controller!.removeListener(listener);
           _syncValue(_controller!.value);
            if (!completer.isCompleted) completer.complete();
        }
      }
      _controller!.addListener(listener);
      
      // Safety timeout
      Future.delayed(const Duration(seconds: 15), () {
        if (!completer.isCompleted) {
           debugLog('VLC init timeout');
           completer.complete();
        }
      });
      
      await completer.future;
    } catch (e) {
      debugLog('VLC initialize caught error: $e');
      _value = _value.copyWith(
        isInitialized: false,
        errorDescription: 'Failed to initialize player: ${e.toString()}',
        isPlaying: false,
      );
      notifyListeners();
    }
  }

  @override
  Future<void> play() {
    if (_controller == null || !_controller!.value.isInitialized) {
      _pendingPlay = true;
      // If we haven't initialized yet, try to do so
      if (_controller == null) initialize();
      return Future.value();
    }
    return _controller!.play().catchError((e) => debugLog('VLC play error: $e'));
  }

  @override
  Future<void> pause() {
    _pendingPlay = false;
    if (_controller == null || !_controller!.value.isInitialized) return Future.value();
    return _controller!.pause().catchError((e) => debugLog('VLC pause error: $e'));
  }

  @override
  Future<void> seekTo(Duration position) {
    if (_controller == null || !_controller!.value.isInitialized) {
      _pendingSeek = position;
      return Future.value();
    }
    return _controller!.seekTo(position).catchError((e) => debugLog('VLC seek error: $e'));
  }

  @override
  Future<void> setVolume(double volume) {
    final scaled = (volume * 100).round().clamp(0, 100);
    if (_controller == null || !_controller!.value.isInitialized) {
      _pendingVolume = scaled;
      return Future.value();
    }
    return _controller!.setVolume(scaled).catchError((e) => debugLog('VLC volume error: $e'));
  }

  @override
  Future<void> setMuted(bool muted) => setVolume(muted ? 0.0 : 1.0);

  @override
  Future<void> dispose() async {
    _isDisposed = true;
    if (_controller != null) {
      _controller!.removeListener(_onVlcUpdate);
      try {
        await _controller!.dispose();
      } catch (e) {
        debugLog('VLC dispose error: $e');
      }
      _controller = null;
    }
    super.dispose();
  }
}
