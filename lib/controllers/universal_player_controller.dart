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
    bool hardwareAcceleration = true,
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
  final VlcPlayerController _controller;
  UniversalPlayerValue _value = const UniversalPlayerValue();
  bool _isDisposed = false;
  bool _pendingPlay = false;
  Duration? _pendingSeek;
  int? _pendingVolume;

  VlcUniversalPlayerController(
    String url, {
    bool autoPlay = true,
    bool isLive = false,
    bool hardwareAcceleration = true,
  }) : _controller = VlcPlayerController.network(
          url,
          autoPlay: autoPlay,
          hwAcc: hardwareAcceleration ? HwAcc.auto : HwAcc.disabled,
          options: VlcPlayerOptions(
            advanced: VlcAdvancedOptions([
              VlcAdvancedOptions.networkCaching(isLive ? 1200 : 800),
              VlcAdvancedOptions.liveCaching(isLive ? 1200 : 800),
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
        ) {
    debugLog('=== VLC CONTROLLER CONSTRUCTOR ===');
    debugLog('URL: $url');
    debugLog('autoPlay: $autoPlay, isLive: $isLive, hwAcc: $hardwareAcceleration');
    logToSystem('VLC CTOR: $url', name: 'RisaVLC');
    try {
      _controller.addListener(_onVlcUpdate);
      debugLog('VLC listener attached successfully');
    } catch (e, st) {
      debugLog('=== VLC LISTENER ATTACH ERROR ===');
      debugLog('Error: $e');
      debugLog('Stack: $st');
      logToSystem('VLC LISTENER ERROR: $e', name: 'RisaVLC');
    }
  }

  VlcPlayerController get vlcController => _controller;

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
    _syncValue(_controller.value);
    if (_controller.value.isInitialized && !_controller.value.hasError) {
      if (_pendingVolume != null) {
        final volume = _pendingVolume!;
        _pendingVolume = null;
        _controller.setVolume(volume).catchError((e) {
          debugLog('VLC setVolume error: $e');
        });
      }
      if (_pendingSeek != null) {
        final position = _pendingSeek!;
        _pendingSeek = null;
        _controller.seekTo(position).catchError((e) {
           debugLog('VLC seekTo error: $e');
        });
      }
      if (_pendingPlay) {
        _pendingPlay = false;
        _controller.play().catchError((e) {
           debugLog('VLC play error: $e');
        });
      }
    }
  }

  @override
  UniversalPlayerValue get value => _value;

  @override
  Future<void> initialize() async {
    try {
      if (_controller.value.isInitialized) {
        _syncValue(_controller.value);
        return;
      }
      final completer = Completer<void>();
      void listener() {
        if (_controller.value.isInitialized) {
          _controller.removeListener(listener);
          _syncValue(_controller.value);
          if (!completer.isCompleted) {
            completer.complete();
          }
        } else if (_controller.value.hasError) {
           _controller.removeListener(listener);
           _syncValue(_controller.value);
            if (!completer.isCompleted) {
            // Don't error, just complete so UI can read the error state from value
            completer.complete();
          }
        }
      }
      _controller.addListener(listener);
      listener(); // Check appropriately in case already ready/error
      await completer.future;
    } catch (e, st) {
      if (e.toString().contains('PlatformException')) {
        debugLog('VLC initialize caught PlatformException: $e');
        _value = _value.copyWith(
          isInitialized: false,
          errorDescription: 'Failed to initialize player: ${e.toString()}',
          isPlaying: false,
        );
        notifyListeners();
      } else {
        debugLog('VLC initialize error: $e');
        debugLog(st.toString());
      }
    }
  }

  @override
  Future<void> play() {
    if (!_controller.value.isInitialized) {
      _pendingPlay = true;
      return Future.value();
    }
    return _controller.play().catchError((e, st) {
      debugLog('VLC play error: $e');
      debugLog(st.toString());
    });
  }

  @override
  Future<void> pause() {
    _pendingPlay = false;
    if (!_controller.value.isInitialized) {
      return Future.value();
    }
    return _controller.pause().catchError((e, st) {
      debugLog('VLC pause error: $e');
      debugLog(st.toString());
    });
  }

  @override
  Future<void> seekTo(Duration position) {
    if (!_controller.value.isInitialized) {
      _pendingSeek = position;
      return Future.value();
    }
    return _controller.seekTo(position).catchError((e, st) {
      debugLog('VLC seek error: $e');
      debugLog(st.toString());
    });
  }

  @override
  Future<void> setVolume(double volume) {
    final scaled = (volume * 100).round().clamp(0, 100);
    if (!_controller.value.isInitialized) {
      _pendingVolume = scaled;
      return Future.value();
    }
    return _controller.setVolume(scaled).catchError((e, st) {
      debugLog('VLC volume error: $e');
      debugLog(st.toString());
    });
  }

  @override
  Future<void> setMuted(bool muted) =>
      setVolume(muted ? 0.0 : 1.0);

  @override
  Future<void> dispose() async {
    _isDisposed = true;
    _controller.removeListener(_onVlcUpdate);
    try {
      await _controller.dispose();
    } catch (e, st) {
      debugLog('VLC dispose error: $e');
      debugLog(st.toString());
    }
    super.dispose();
  }
}
