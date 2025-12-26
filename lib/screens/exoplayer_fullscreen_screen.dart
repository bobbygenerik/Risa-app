import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:go_router/go_router.dart';
import '../models/channel.dart';
import '../models/content.dart';
import '../widgets/live_subtitle_overlay.dart';
import '../services/integrated_transcription_service.dart';
import '../providers/settings_provider.dart';
import '../providers/content_provider.dart';
import '../services/incremental_epg_service.dart';
import '../utils/app_theme.dart';
import '../utils/snackbar_helper.dart';
import '../utils/tv_focus_helper.dart';
import '../screens/epg_screen.dart';

import 'package:wakelock_plus/wakelock_plus.dart';

enum ExoSubtitleMode { off, regular, liveTranslation }

/// A fullscreen video player using native ExoPlayer for Android.
/// This implementation is optimized for Android TV devices like the Nvidia Shield.
class ExoPlayerFullscreenScreen extends StatefulWidget {
  final Channel? channel;
  final Content? content;
  final String? streamUrl;
  final String? videoUrl;
  final String? title;
  final String? subtitle;
  final bool isLive;

  const ExoPlayerFullscreenScreen({
    super.key,
    this.channel,
    this.content,
    this.streamUrl,
    this.videoUrl,
    this.title,
    this.subtitle,
    this.isLive = false,
  });

  @override
  State<ExoPlayerFullscreenScreen> createState() =>
      _ExoPlayerFullscreenScreenState();
}

class _ExoPlayerFullscreenScreenState extends State<ExoPlayerFullscreenScreen> {
  MethodChannel? _channel;
  bool _isLoading = true;
  bool _showControls = true;
  bool _isPlaying = false;
  bool _showGuide = false;
  BoxFit _videoFit = BoxFit.contain;
  double _progress = 0.0;
  double _liveProgress = 0.0;
  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;

  ExoSubtitleMode _subtitleMode = ExoSubtitleMode.off;
  IntegratedTranscriptionService? _transcriptionService;
  Timer? _controlsHideTimer;
  Timer? _liveProgressTimer;
  late final FocusNode _playPauseFocus;

  @override
  void initState() {
    super.initState();
    _transcriptionService =
        Provider.of<IntegratedTranscriptionService>(context, listen: false);
    _playPauseFocus = FocusNode(debugLabel: 'ExoPlayerPlayPause');

    _hideControlsAfterDelay();
    _startLiveProgressTimer();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _playPauseFocus.requestFocus();
    });

    unawaited(WakelockPlus.enable());
  }

  void _onPlatformViewCreated(int id) {
    _channel = MethodChannel('com.streamhub.iptv/exoplayer_$id');
    _channel?.setMethodCallHandler(_handleMethodCall);

    debugLog('ExoPlayer: Platform view created with id $id');
  }

  Future<void> _handleMethodCall(MethodCall call) async {
    switch (call.method) {
      case 'onPlaybackStateChanged':
        final state = call.arguments['state'] as String;
        debugLog('ExoPlayer state: $state');
        if (mounted) {
          setState(() {
            _isLoading = state == 'buffering';
          });
        }
        break;

      case 'onPlayingChanged':
        final isPlaying = call.arguments['isPlaying'] as bool;
        if (mounted) {
          setState(() => _isPlaying = isPlaying);
        }
        break;

      case 'onPositionUpdate':
        final position = (call.arguments['position'] as num).toInt();
        final duration = (call.arguments['duration'] as num).toInt();
        if (mounted && !widget.isLive) {
          _position = Duration(milliseconds: position);
          _duration = Duration(milliseconds: duration);
          if (duration > 0) {
            setState(() {
              _progress = position / duration;
            });
          }
        }
        break;

      case 'onPlayerError':
        final error = call.arguments['error'] as String?;
        debugLog('ExoPlayer error: $error');
        if (mounted) {
          _showErrorDialog('Stream Error', error ?? 'Unknown error');
        }
        break;
    }
  }

  @override
  void dispose() {
    _controlsHideTimer?.cancel();
    _liveProgressTimer?.cancel();
    _playPauseFocus.dispose();

    // Save position for VOD content
    unawaited(_saveCurrentPosition());

    try {
      if (_transcriptionService != null) {
        unawaited(_transcriptionService!.stopTranscription());
      }
    } catch (e) {
      debugLog('TTS cleanup error: $e');
    }

    unawaited(WakelockPlus.disable());

    // Stop the native player
    _channel?.invokeMethod('stop');

    super.dispose();
  }

  Future<void> _saveCurrentPosition() async {
    if (!widget.isLive && _position.inMilliseconds > 0) {
      final settings = Provider.of<SettingsProvider>(context, listen: false);

      if (settings.rememberPlaybackPosition) {
        final key = widget.content?.id ??
            widget.title ??
            widget.videoUrl ??
            widget.streamUrl ??
            widget.channel?.url ??
            '';
        final prefs = await SharedPreferences.getInstance();
        await prefs.setInt('position_$key', _position.inMilliseconds);

        // Update watch progress for content
        if (widget.content != null && mounted) {
          final contentProvider =
              Provider.of<ContentProvider>(context, listen: false);
          if (_duration.inMilliseconds > 0) {
            final progress =
                _position.inMilliseconds / _duration.inMilliseconds;
            await contentProvider.updateWatchProgress(
                widget.content!.id, progress);
          }
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform != TargetPlatform.android) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Text(
            'ExoPlayer is only available on Android',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    }

    final url = widget.videoUrl ??
        widget.content?.videoUrl ??
        widget.streamUrl ??
        widget.channel?.url ??
        '';
    final progressValue = widget.isLive ? _liveProgress : _progress;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Focus(
        autofocus: true,
        onKeyEvent: (node, event) {
          if (event is KeyDownEvent) {
            _showControlsAndAutoHide();
          }
          return KeyEventResult.ignored;
        },
        child: GestureDetector(
          onTap: _toggleControls,
          child: Stack(
            children: [
              // Native ExoPlayer view
              Positioned.fill(
                child: _buildExoPlayerView(url),
              ),

              if (_isLoading)
                const Center(
                    child: CircularProgressIndicator(color: Colors.white)),

              // Subtitle overlay
              if (_subtitleMode == ExoSubtitleMode.liveTranslation)
                Positioned(
                  bottom: context.tvSpacing(80),
                  left: context.tvSpacing(20),
                  right: context.tvSpacing(20),
                  child: const LiveSubtitleOverlay(showSubtitles: true),
                ),

              // Modern streaming controls
              if (_showControls && !_isLoading)
                _buildModernControls(progressValue),

              // Guide overlay
              if (_showGuide) _buildGuideOverlay(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExoPlayerView(String url) {
    const String viewType = 'com.streamhub.iptv/exoplayer';
    final Map<String, dynamic> creationParams = <String, dynamic>{
      'videoUrl': url,
      'autoPlay': true,
      'muted': false,
      'surfaceType': 'texture',
    };

    return AndroidView(
      viewType: viewType,
      layoutDirection: TextDirection.ltr,
      creationParams: creationParams,
      creationParamsCodec: const StandardMessageCodec(),
      onPlatformViewCreated: _onPlatformViewCreated,
    );
  }

  Widget _buildModernControls(double progressValue) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black.withValues(alpha: 0.7),
            Colors.transparent,
            Colors.transparent,
            Colors.black.withValues(alpha: 0.8),
          ],
          stops: const [0.0, 0.3, 0.7, 1.0],
        ),
      ),
      child: Stack(
        children: [
          // Top bar
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Row(
                  children: [
                    // Back button
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back,
                          color: Colors.white, size: 24),
                    ),
                    const Spacer(),
                    // Live badge
                    if (widget.isLive)
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Text(
                          'LIVE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    const SizedBox(width: 16),
                    // Guide button
                    IconButton(
                      onPressed: _toggleGuide,
                      icon:
                          const Icon(Icons.dvr, color: Colors.white, size: 24),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Bottom controls
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Control buttons
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 16),
                    child: FocusTraversalGroup(
                      policy: WidgetOrderTraversalPolicy(),
                      child: Row(
                        children: [
                          // Rewind
                          _buildControlButton(
                            icon: Icons.replay_10,
                            onPressed: _rewind,
                          ),
                          const SizedBox(width: 12),
                          // Play/Pause
                          _buildControlButton(
                            icon: _isPlaying ? Icons.pause : Icons.play_arrow,
                            onPressed: _togglePlayPause,
                            focusNode: _playPauseFocus,
                            autofocus: true,
                          ),
                          const SizedBox(width: 12),
                          // Fast Forward
                          _buildControlButton(
                            icon: Icons.forward_10,
                            onPressed: _fastForward,
                          ),
                          const SizedBox(width: 24),
                          // Audio
                          _buildControlButton(
                            icon: Icons.audiotrack,
                            onPressed: _toggleAudio,
                          ),
                          const SizedBox(width: 12),
                          // Subtitles Menu
                          _buildControlButton(
                            icon: _subtitleMode == ExoSubtitleMode.off
                                ? Icons.subtitles_outlined
                                : Icons.subtitles,
                            onPressed: _showSubtitleMenu,
                          ),
                          const SizedBox(width: 12),
                          // Multi-view
                          _buildControlButton(
                            icon: Icons.grid_view,
                            onPressed: _toggleMultiView,
                          ),
                          const SizedBox(width: 12),
                          // Aspect Ratio Toggle
                          _buildControlButton(
                            icon: Icons.aspect_ratio,
                            onPressed: _toggleVideoFit,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Progress bar
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: SizedBox(
                      height: 4,
                      width: double.infinity,
                      child: LinearProgressIndicator(
                        value: progressValue.clamp(0.0, 1.0),
                        backgroundColor: Colors.white.withValues(alpha: 0.3),
                        valueColor: const AlwaysStoppedAnimation<Color>(
                            AppTheme.primaryBlue),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildControlButton({
    required IconData icon,
    required VoidCallback onPressed,
    double size = 20,
    FocusNode? focusNode,
    bool autofocus = false,
  }) {
    return FocusableActionDetector(
      focusNode: focusNode,
      autofocus: autofocus,
      actions: <Type, Action<Intent>>{
        ActivateIntent: CallbackAction<ActivateIntent>(
          onInvoke: (intent) {
            onPressed();
            return null;
          },
        ),
      },
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          return AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            curve: Curves.easeOutCubic,
            decoration: BoxDecoration(
              color: isFocused ? Colors.white : null,
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              onPressed: onPressed,
              icon: Icon(
                icon,
                color: isFocused ? Colors.black : Colors.white,
                size: size,
              ),
              padding: const EdgeInsets.all(8),
            ),
          );
        },
      ),
    );
  }

  Widget _buildGuideOverlay() {
    return Container(
      color: Colors.black.withValues(alpha: 0.7),
      child: Stack(
        children: [
          // EPG Screen embedded as overlay
          Positioned.fill(
            child: EPGScreen(
              initialChannel: widget.channel,
              continuePlayback: true,
            ),
          ),
          // Close button
          Positioned(
            top: 40,
            right: 20,
            child: SafeArea(
              child: IconButton(
                onPressed: _toggleGuide,
                icon: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.7),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(Icons.close, color: Colors.white, size: 24),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _hideControlsAfterDelay() {
    _controlsHideTimer?.cancel();
    _controlsHideTimer = Timer(const Duration(seconds: 4), () {
      if (mounted) setState(() => _showControls = false);
    });
  }

  void _showControlsAndAutoHide() {
    if (mounted && !_showControls) {
      setState(() => _showControls = true);
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) _playPauseFocus.requestFocus();
      });
    }
    _hideControlsAfterDelay();
  }

  void _toggleControls() {
    setState(() {
      _showControls = !_showControls;
    });
    if (_showControls) {
      _hideControlsAfterDelay();
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) _playPauseFocus.requestFocus();
      });
    }
  }

  void _startLiveProgressTimer() {
    if (!widget.isLive || widget.channel == null) return;
    _liveProgressTimer?.cancel();
    _updateLiveProgress();
    _liveProgressTimer = Timer.periodic(const Duration(seconds: 15), (_) {
      _updateLiveProgress();
    });
  }

  void _updateLiveProgress() {
    if (!mounted || widget.channel == null) return;
    final epg = Provider.of<IncrementalEpgService>(context, listen: false);
    epg
        .getProgramForChannelAsync(
          widget.channel!.tvgId ?? widget.channel!.id,
          channelName: widget.channel!.name,
        )
        .then((program) {
      final nextProgress = program?.progressPercentage ?? 0.0;
      if (mounted) {
        setState(() => _liveProgress = nextProgress);
      }
    });
  }

  void _toggleVideoFit() {
    setState(() {
      if (_videoFit == BoxFit.contain) {
        _videoFit = BoxFit.cover;
      } else if (_videoFit == BoxFit.cover) {
        _videoFit = BoxFit.fill;
      } else {
        _videoFit = BoxFit.contain;
      }
    });

    final label = _videoFit == BoxFit.contain
        ? 'Fit'
        : (_videoFit == BoxFit.cover ? 'Zoom' : 'Stretch');
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Scale: $label'),
        duration: const Duration(seconds: 1),
        backgroundColor: Colors.black87,
      ),
    );
  }

  void _togglePlayPause() async {
    try {
      await _channel?.invokeMethod('playOrPause');
    } catch (e) {
      debugLog('ExoPlayer playOrPause error: $e');
    }
  }

  void _rewind() async {
    try {
      await _channel?.invokeMethod('seekBackward', {'seconds': 10});
    } catch (e) {
      debugLog('ExoPlayer rewind error: $e');
    }
  }

  void _fastForward() async {
    try {
      await _channel?.invokeMethod('seekForward', {'seconds': 10});
    } catch (e) {
      debugLog('ExoPlayer fastForward error: $e');
    }
  }

  void _toggleAudio() async {
    try {
      final tracks = await _channel?.invokeMethod('listAudioTracks');
      if (!mounted) return;
      if (tracks == null || (tracks as List).isEmpty) {
        showAppSnackBar(context,
            const SnackBar(content: Text('No alternative audio tracks')));
        return;
      }
      showAppSnackBar(
        context,
        SnackBar(content: Text('Audio Tracks: ${tracks.length}')),
      );
    } catch (e) {
      debugLog('ExoPlayer listAudioTracks error: $e');
    }
  }

  void _showSubtitleMenu() {
    showDialog(
      context: context,
      builder: (context) => _buildSubtitleMenu(),
    );
  }

  void _setSubtitleMode(ExoSubtitleMode mode) async {
    setState(() => _subtitleMode = mode);

    try {
      if (mode == ExoSubtitleMode.liveTranslation &&
          _transcriptionService != null) {
        if (!_transcriptionService!.isInitialized) {
          final initialized = await _transcriptionService!.initialize();
          if (!initialized) {
            throw Exception('Failed to initialize transcription service');
          }
        }

        _transcriptionService!.setTranslationEnabled(true);
        final streamUrl = widget.videoUrl ?? widget.channel?.url;
        if (streamUrl != null) {
          await _transcriptionService!.transcribeVideoStream(streamUrl);
        }
      } else if (_transcriptionService != null) {
        await _transcriptionService!.stopTranscription();
      }
    } catch (e) {
      debugLog('Transcription error: $e');
      setState(() => _subtitleMode = ExoSubtitleMode.off);
      if (mounted) {
        showAppSnackBar(
          context,
          const SnackBar(content: Text('Live translation error')),
        );
      }
    }
  }

  void _toggleMultiView() {
    if (mounted) {
      context.push('/multi-view');
    }
  }

  void _toggleGuide() {
    setState(() => _showGuide = !_showGuide);
  }

  void _showErrorDialog(String title, String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.grey[900],
        title: Text(title, style: const TextStyle(color: Colors.white)),
        content: Text(message, style: const TextStyle(color: Colors.white70)),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
            child: const Text('Close'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              // Retry by reloading the video
              final url = widget.videoUrl ??
                  widget.content?.videoUrl ??
                  widget.streamUrl ??
                  widget.channel?.url ??
                  '';
              _channel?.invokeMethod(
                  'loadVideo', {'videoUrl': url, 'autoPlay': true});
            },
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }

  Widget _buildSubtitleMenu() {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 280),
        decoration: BoxDecoration(
          color: Colors.black.withValues(alpha: 0.9),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white.withValues(alpha: 0.1)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildMenuOption(
              'Off',
              Icons.subtitles_off_outlined,
              _subtitleMode == ExoSubtitleMode.off,
              () => _setSubtitleMode(ExoSubtitleMode.off),
            ),
            _buildMenuOption(
              'Regular Subtitles',
              Icons.closed_caption_outlined,
              _subtitleMode == ExoSubtitleMode.regular,
              () => _setSubtitleMode(ExoSubtitleMode.regular),
            ),
            _buildMenuOption(
              'Live Translation',
              Icons.translate,
              _subtitleMode == ExoSubtitleMode.liveTranslation,
              () => _setSubtitleMode(ExoSubtitleMode.liveTranslation),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuOption(
      String title, IconData icon, bool selected, VoidCallback onTap) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          onTap();
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Row(
            children: [
              Icon(
                icon,
                color: selected ? AppTheme.primaryBlue : Colors.white70,
                size: 20,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    color: selected ? AppTheme.primaryBlue : Colors.white,
                    fontSize: 16,
                    fontWeight: selected ? FontWeight.w600 : FontWeight.normal,
                  ),
                ),
              ),
              if (selected)
                Icon(
                  Icons.check,
                  color: AppTheme.primaryBlue,
                  size: 18,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
