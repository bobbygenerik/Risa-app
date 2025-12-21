import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';
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

enum SubtitleMode { off, regular, liveTranslation }

class EnhancedVideoPlayerScreen extends StatefulWidget {
  final Channel? channel;
  final Content? content;
  final String? streamUrl;
  final String? videoUrl;
  final String? title;
  final String? subtitle;
  final bool isLive;

  const EnhancedVideoPlayerScreen({
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
  State<EnhancedVideoPlayerScreen> createState() => _EnhancedVideoPlayerScreenState();
}

class _EnhancedVideoPlayerScreenState extends State<EnhancedVideoPlayerScreen> {
  // MediaKit controllers
  late final Player _player;
  late final VideoController _controller;
  
  bool _isLoading = true;
  bool _showControls = true;
  bool _isPlaying = false;
  bool _showGuide = false;
  BoxFit _videoFit = BoxFit.contain; // Added for aspect ratio control
  double _progress = 0.0;
  double _liveProgress = 0.0;
  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;
  
  SubtitleMode _subtitleMode = SubtitleMode.off;
  IntegratedTranscriptionService? _transcriptionService;
  Timer? _progressThrottle;
  Timer? _controlsHideTimer;
  Timer? _liveProgressTimer;
  Timer? _videoFallbackTimer;
  bool _hasVideo = false;
  bool _fallbackAttempted = false;
  late final FocusNode _playPauseFocus;
  
  // Stream subscriptions
  StreamSubscription? _durationSubscription;
  StreamSubscription? _positionSubscription;
  StreamSubscription? _playingSubscription;
  StreamSubscription? _errorSubscription;
  StreamSubscription? _completedSubscription;
  StreamSubscription? _videoParamsSubscription;
  
  @override
  void initState() {
    super.initState();
    _transcriptionService =
        Provider.of<IntegratedTranscriptionService>(context, listen: false);
    final settings = Provider.of<SettingsProvider>(context, listen: false);
    final useHwAccel = settings.hardwareAcceleration;
    final useHwDecoding = settings.hardwareDecoding;
    final isTv = TVFocusHelper.isAndroidTV;
    final resolvedHwAccel = isTv ? true : useHwAccel;
    
    // Initialize MediaKit Player
    _player = Player(
      configuration: PlayerConfiguration(
        title: 'Risa IPTV Player',
        // Use GPU output on TV to avoid audio-only playback.
        vo: 'gpu',
      ),
    );
    
    _controller = VideoController(
      _player,
      configuration: VideoControllerConfiguration(
        enableHardwareAcceleration: resolvedHwAccel,
        vo: isTv ? 'gpu' : null,
        hwdec: isTv ? 'mediacodec-copy' : null,
        androidAttachSurfaceAfterVideoParameters: isTv ? true : null,
      ),
    );
    _playPauseFocus = FocusNode(debugLabel: 'PlayerPlayPause');

    // Optimize player for IPTV streams
    try {
      if (_player.platform is NativePlayer) {
        final platform = _player.platform as NativePlayer;
        final hwDecoding = useHwDecoding || isTv;
        final hwdecValue = isTv
            ? 'mediacodec-copy'
            : (hwDecoding ? 'mediacodec' : 'no');
        platform.setProperty('hwdec', hwdecValue);
        platform.setProperty('network-timeout', '60');
        platform.setProperty('demuxer-max-bytes', '104857600'); // 100MB buffer
        platform.setProperty('demuxer-max-back-bytes', '52428800'); // 50MB back buffer
        platform.setProperty('cache', 'yes');
        platform.setProperty('cache-secs', '30');
      }
    } catch (e) {
      debugLog('MediaKit properties error: $e');
    }
    
    _setupListeners();
    unawaited(_initializePlayer());
    _startLiveProgressTimer();
    _hideControlsAfterDelay();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _playPauseFocus.requestFocus();
    });
  }

  void _setupListeners() {
    _durationSubscription = _player.stream.duration.listen((duration) {
      if (mounted) {
        setState(() => _duration = duration);
      }
    });

    _positionSubscription = _player.stream.position.listen((position) {
      if (mounted) {
        _position = position;
        // Throttled UI update
        if (_progressThrottle == null || !_progressThrottle!.isActive) {
           _progressThrottle = Timer(const Duration(milliseconds: 200), () {
             if (mounted && _duration.inMilliseconds > 0) {
              setState(() {
                _progress = position.inMilliseconds / _duration.inMilliseconds;
              });
             }
           });
        }
      }
    });

    _playingSubscription = _player.stream.playing.listen((playing) {
      if (mounted) {
        setState(() => _isPlaying = playing);
      }
    });
    
    _errorSubscription = _player.stream.error.listen((error) {
       debugLog('MediaKit Error: $error');
       _handleVideoError(error.toString());
    });
    
    _completedSubscription = _player.stream.completed.listen((completed) {
      if (completed) {
         debugLog('MediaKit: Playback completed');
         unawaited(_handleVideoEnded());
      }
    });

    _videoParamsSubscription = _player.stream.videoParams.listen((params) {
      if ((params.w ?? 0) > 0 && (params.h ?? 0) > 0) {
        _hasVideo = true;
      }
    });

    _player.stream.log.listen((log) {
      if (log.level != 'debug') {
        debugLog('MediaKit Log: [${log.level}] ${log.text}');
      }
    });
  }

  @override
  void dispose() {
    _progressThrottle?.cancel();
    _controlsHideTimer?.cancel();
    _liveProgressTimer?.cancel();
    _videoFallbackTimer?.cancel();
    _durationSubscription?.cancel();
    _positionSubscription?.cancel();
    _playingSubscription?.cancel();
    _errorSubscription?.cancel();
    _completedSubscription?.cancel();
    _videoParamsSubscription?.cancel();
    _playPauseFocus.dispose();
    
    unawaited(_saveCurrentPosition());
    
    try {
      if (_transcriptionService != null) {
        unawaited(_transcriptionService!.stopTranscription());
      }
    } catch (e) {
      debugLog('TTS cleanup error: $e');
    }
    unawaited(WakelockPlus.disable());
    
    // Dispose MediaKit resources
    unawaited(_player.dispose());
    
    super.dispose();
  }

  Future<void> _saveCurrentPosition() async {
    if (!widget.isLive) {
      final settings = Provider.of<SettingsProvider>(context, listen: false);
      
      if (settings.rememberPlaybackPosition) {
        final position = _position;
        final key = widget.content?.id ?? widget.title ?? widget.videoUrl ?? widget.streamUrl ?? widget.channel?.url ?? '';
        final prefs = await SharedPreferences.getInstance();
        await prefs.setInt('position_$key', position.inMilliseconds);
        
        // Update watch progress for content
        if (widget.content != null && mounted) {
          final contentProvider = Provider.of<ContentProvider>(context, listen: false);
          if (_duration.inMilliseconds > 0) {
            final progress = position.inMilliseconds / _duration.inMilliseconds;
            await contentProvider.updateWatchProgress(widget.content!.id, progress);
          }
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
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
              // Video player
              Positioned.fill(
                child: Video(
                  controller: _controller,
                  controls: NoVideoControls,
                  fit: _videoFit,
                  pauseUponEnteringBackgroundMode: false,
                  resumeUponEnteringForegroundMode: true,
                ),
              ),
              
              if (_isLoading)
                const Center(child: CircularProgressIndicator(color: Colors.white)),
              
              // Subtitle overlay
              if (_subtitleMode == SubtitleMode.liveTranslation)
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
              if (_showGuide)
                _buildGuideOverlay(),
            ],
          ),
        ),
      ),
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
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Row(
                  children: [
                    // Back button
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back, color: Colors.white, size: 24),
                    ),
                    const Spacer(),
                    // Live badge
                    if (widget.isLive)
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
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
                      icon: const Icon(Icons.dvr, color: Colors.white, size: 24),
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
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
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
                            icon: _subtitleMode == SubtitleMode.off 
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
                        valueColor: const AlwaysStoppedAnimation<Color>(AppTheme.primaryBlue),
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

  Future<void> _initializePlayer() async {
    final url = widget.videoUrl ?? widget.content?.videoUrl ?? widget.streamUrl ?? widget.channel?.url ?? '';
    final settings = Provider.of<SettingsProvider>(context, listen: false);
    await settings.initialize();
    
    final rememberPosition = settings.rememberPlaybackPosition;
    
    debugLog('MediaKit Player: Initializing with URL: $url');
    
    if (url.isEmpty) {
      if (mounted) {
        setState(() => _isLoading = false);
        _showErrorDialog('Invalid Stream', 'No stream URL provided for this channel.');
      }
      return;
    }
    
    try {
      // Common headers for IPTV to avoid blocks (User-Agent is key)
      final headers = <String, String>{
        'User-Agent': 'VLC/3.0.0 LibVLC/3.0.0', // Emulate VLC is usually safest for IPTV
        'Accept': '*/*',
        'Connection': 'keep-alive',
      };
      
      debugLog('MediaKit Player: Opening stream...');

      await _player.open(
        Media(
          url,
          httpHeaders: headers,
        ),
        play: true,
      );

      setState(() => _isLoading = false);
      unawaited(WakelockPlus.enable());

      _videoFallbackTimer?.cancel();
      _videoFallbackTimer = Timer(const Duration(seconds: 3), () {
        if (!mounted || _hasVideo || _fallbackAttempted) return;
        unawaited(_attemptVideoFallback(url, headers));
      });
      
      if (!widget.isLive && rememberPosition) {
        final prefs = await SharedPreferences.getInstance();
        final key = widget.content?.id ?? widget.title ?? url;
        final savedPosition = prefs.getInt('position_$key');
        if (savedPosition != null && savedPosition > 0) {
          await _player.seek(Duration(milliseconds: savedPosition));
        }
      }
    } catch (e) {
      debugLog('MediaKit Player: Init Error: $e');
      if (mounted) {
        setState(() => _isLoading = false);
         _handleVideoError(e.toString());
      }
    }
  }

  Future<void> _attemptVideoFallback(
    String url,
    Map<String, String> headers,
  ) async {
    if (_fallbackAttempted) return;
    _fallbackAttempted = true;
    debugLog('MediaKit Player: No video detected, retrying with hwdec=no');
    try {
      if (_player.platform is NativePlayer) {
        final platform = _player.platform as NativePlayer;
        unawaited(platform.setProperty('hwdec', 'no'));
        unawaited(platform.setProperty('vo', 'gpu'));
      }
      await _player.open(
        Media(url, httpHeaders: headers),
        play: true,
      );
    } catch (e) {
      debugLog('MediaKit Player: Fallback failed: $e');
    }
  }
  
  void _handleVideoError(String error) async {
    if (!mounted) return;
    // Show error dialog
    _showErrorDialog('Stream Error', 'Unable to play stream.\n\nError: $error');
  }
  
  Future<void> _retryWithFallback() async {
    // MediaKit handles most fallbacks internally (protocols), but we can retry opening
    await _initializePlayer();
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
              unawaited(_retryWithFallback());
            },
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }

  Future<void> _handleVideoEnded() async {
    final settings = Provider.of<SettingsProvider>(context, listen: false);
    final autoPlayNext = settings.autoPlayNextEpisode;
    
    if (!widget.isLive && autoPlayNext && widget.content != null) {
      final contentProvider = Provider.of<ContentProvider>(context, listen: false);
      final nextEpisode = contentProvider.getNextEpisode(widget.content!.id);
      
      if (nextEpisode != null) {
        context.pushReplacement('/player', extra: nextEpisode);
      }
    }
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
    final program = epg.getCurrentProgram(
      widget.channel!.tvgId ?? widget.channel!.id,
      channelName: widget.channel!.name,
    );
    final nextProgress = program?.progressPercentage ?? 0.0;
    if (mounted) {
      setState(() => _liveProgress = nextProgress);
    }
  }

  void _toggleVideoFit() {
    setState(() {
      if (_videoFit == BoxFit.contain) {
        _videoFit = BoxFit.cover; // Zoom to fill (crops edges)
      } else if (_videoFit == BoxFit.cover) {
        _videoFit = BoxFit.fill; // Stretch to fill (distorts)
      } else {
        _videoFit = BoxFit.contain; // Original aspect ratio
      }
    });

    // Provide visual feedback via snackbar
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
  void _togglePlayPause() {
    _player.playOrPause();
  }

  void _rewind() async {
    final currentPos = _position;
    final newPos = currentPos - const Duration(seconds: 10);
    await _player.seek(newPos >= Duration.zero ? newPos : Duration.zero);
  }

  void _fastForward() async {
    final currentPos = _position;
    final newPos = currentPos + const Duration(seconds: 10);
    if (newPos < _duration) {
      await _player.seek(newPos);
    }
  }

  void _toggleAudio() async {
    // MediaKit supports tracks!
    final tracks = _player.state.tracks.audio;
    if (tracks.isEmpty) {
        showAppSnackBar(context, const SnackBar(content: Text('No alternative audio tracks')));
        return;
    }
    // Simple cycle through logic or dialog could be added here
    // For now, just show info
    showAppSnackBar(
        context,
        SnackBar(content: Text('Audio Tracks: ${tracks.length}')),
    );
  }

  void _showSubtitleMenu() {
    showDialog(
      context: context,
      builder: (context) => _buildSubtitleMenu(),
    );
  }

  void _setSubtitleMode(SubtitleMode mode) async {
    setState(() => _subtitleMode = mode);
    
    try {
      if (mode == SubtitleMode.liveTranslation && _transcriptionService != null) {
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
      setState(() => _subtitleMode = SubtitleMode.off);
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
              _subtitleMode == SubtitleMode.off,
              () => _setSubtitleMode(SubtitleMode.off),
            ),
            _buildMenuOption(
              'Regular Subtitles',
              Icons.closed_caption_outlined,
              _subtitleMode == SubtitleMode.regular,
              () => _setSubtitleMode(SubtitleMode.regular),
            ),
            _buildMenuOption(
              'Live Translation',
              Icons.translate,
              _subtitleMode == SubtitleMode.liveTranslation,
              () => _setSubtitleMode(SubtitleMode.liveTranslation),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuOption(String title, IconData icon, bool selected, VoidCallback onTap) {
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
