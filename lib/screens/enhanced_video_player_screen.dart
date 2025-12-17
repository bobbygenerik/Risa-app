import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:async';
import 'package:flutter/material.dart';
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
import '../utils/app_theme.dart';
import '../utils/snackbar_helper.dart';
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
  double _progress = 0.0;
  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;
  
  SubtitleMode _subtitleMode = SubtitleMode.off;
  IntegratedTranscriptionService? _transcriptionService;
  Timer? _progressThrottle;
  
  // Stream subscriptions
  StreamSubscription? _durationSubscription;
  StreamSubscription? _positionSubscription;
  StreamSubscription? _playingSubscription;
  StreamSubscription? _errorSubscription;
  StreamSubscription? _completedSubscription;
  
  @override
  void initState() {
    super.initState();
    _transcriptionService = Provider.of<IntegratedTranscriptionService>(context, listen: false);
    
    // Initialize MediaKit Player
    _player = Player(
      configuration: const PlayerConfiguration(
        title: 'Risa IPTV Player',
        // Enable hardware acceleration if possible
        vo: 'gpu', 
      ),
    );
    
    _controller = VideoController(
      _player, 
      configuration: const VideoControllerConfiguration(
        enableHardwareAcceleration: true,

      ),
    );
    
    _setupListeners();
    unawaited(_initializePlayer());
    _hideControlsAfterDelay();
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
         unawaited(_handleVideoEnded());
      }
    });
  }

  @override
  void dispose() {
    _progressThrottle?.cancel();
    _durationSubscription?.cancel();
    _positionSubscription?.cancel();
    _playingSubscription?.cancel();
    _errorSubscription?.cancel();
    _completedSubscription?.cancel();
    
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
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: _toggleControls,
        child: Stack(
          children: [
            // Video player
            Positioned.fill(
              child: Video(
                controller: _controller,
                controls: NoVideoControls,
                pauseUponEnteringBackgroundMode: false,
                resumeUponEnteringForegroundMode: true,
              ),
            ),
            
            if (_isLoading)
              const Center(child: CircularProgressIndicator(color: Colors.white)),
            
            // Subtitle overlay
            if (_subtitleMode == SubtitleMode.liveTranslation)
              const LiveSubtitleOverlay(showSubtitles: true),
            
            // Modern streaming controls
            if (_showControls && !_isLoading)
              _buildModernControls(),
              
            // Guide overlay
            if (_showGuide)
              _buildGuideOverlay(),
          ],
        ),
      ),
    );
  }

  Widget _buildModernControls() {
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
                      ],
                    ),
                  ),
                  // Progress bar
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: SizedBox(
                      height: 4,
                      width: double.infinity,
                      child: LinearProgressIndicator(
                        value: _progress.clamp(0.0, 1.0),
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
  }) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon, color: Colors.white, size: size),
      padding: const EdgeInsets.all(8),
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
    unawaited(Future.delayed(const Duration(seconds: 4), () {
      if (mounted) setState(() => _showControls = false);
    }));
  }

  void _toggleControls() {
    setState(() => _showControls = !_showControls);
    if (_showControls) _hideControlsAfterDelay();
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
