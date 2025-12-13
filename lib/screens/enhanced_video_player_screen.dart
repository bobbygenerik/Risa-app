import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
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
import '../services/http_client_service.dart';
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
  VideoPlayerController? _videoController;
  ChewieController? _chewieController;
  bool _isLoading = true;
  bool _showControls = true;
  bool _isPlaying = false;
  bool _showGuide = false;
  double _progress = 0.0;
  SubtitleMode _subtitleMode = SubtitleMode.off;
  IntegratedTranscriptionService? _transcriptionService;
  Timer? _progressThrottle;
  
  @override
  void initState() {
    super.initState();
    _transcriptionService = Provider.of<IntegratedTranscriptionService>(context, listen: false);
    unawaited(_initializePlayer());
    _hideControlsAfterDelay();
  }

  @override
  void dispose() {
    _progressThrottle?.cancel();
    unawaited(_saveCurrentPosition());
    try {
      if (_transcriptionService != null) {
        unawaited(_transcriptionService!.stopTranscription());
      }
    } catch (e) {
      debugLog('TTS cleanup error: $e');
    }
    unawaited(WakelockPlus.disable());
    _chewieController?.dispose();
    _videoController?.dispose();
    super.dispose();
  }

  Future<void> _saveCurrentPosition() async {
    if (!widget.isLive && _videoController?.value.isInitialized == true) {
      final settings = Provider.of<SettingsProvider>(context, listen: false);
      
      if (settings.rememberPlaybackPosition) {
        final position = _videoController!.value.position;
        final key = widget.content?.id ?? widget.title ?? widget.videoUrl ?? widget.streamUrl ?? widget.channel?.url ?? '';
        final prefs = await SharedPreferences.getInstance();
        await prefs.setInt('position_$key', position.inMilliseconds);
        
        // Update watch progress for content
        if (widget.content != null && mounted) {
          final contentProvider = Provider.of<ContentProvider>(context, listen: false);
          final duration = _videoController!.value.duration;
          if (duration.inMilliseconds > 0) {
            final progress = position.inMilliseconds / duration.inMilliseconds;
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
            if (_chewieController != null)
              Positioned.fill(
                child: Chewie(
                  controller: _chewieController!,
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
                        value: _progress,
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
    
    try {
      _videoController = VideoPlayerController.networkUrl(
        Uri.parse(url),
        httpHeaders: HttpClientService().isInitialized ? HttpClientService().videoHeaders : {},
        videoPlayerOptions: VideoPlayerOptions(
          mixWithOthers: true,
          allowBackgroundPlayback: false,
          webOptions: const VideoPlayerWebOptions(
            controls: VideoPlayerWebOptionsControls.disabled(),
          ),
        ),
        formatHint: VideoFormat.hls,
      );
      await _videoController!.initialize();
    } catch (e) {
      debugLog('Video initialization error: $e');
      if (mounted) {
        setState(() => _isLoading = false);
        _showErrorDialog('Failed to load stream', 'The video stream could not be loaded. Please check your connection and try again.');
      }
      return;
    }
    
    _chewieController = ChewieController(
      videoPlayerController: _videoController!,
      autoPlay: true,
      looping: false,
      showControls: false,
      aspectRatio: _videoController!.value.aspectRatio,
      allowFullScreen: false,
      allowMuting: true,
      allowPlaybackSpeedChanging: false,
      autoInitialize: true,
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error, color: Colors.red, size: 60),
              const SizedBox(height: 16),
              const Text('Stream Error', style: TextStyle(color: Colors.white, fontSize: 18)),
              const SizedBox(height: 8),
              Text(errorMessage, style: const TextStyle(color: Colors.white70), textAlign: TextAlign.center),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  _videoController?.seekTo(Duration.zero);
                  _videoController?.play();
                },
                child: const Text('Retry'),
              ),
            ],
          ),
        );
      },
      materialProgressColors: ChewieProgressColors(
        playedColor: const Color(0xFF007AFF),
        handleColor: const Color(0xFF007AFF),
        backgroundColor: Colors.white.withValues(alpha: 0.3),
        bufferedColor: Colors.white.withValues(alpha: 0.5),
      ),
    );
    
    setState(() => _isLoading = false);
    
    unawaited(WakelockPlus.enable());
    
    if (!widget.isLive && rememberPosition) {
      final prefs = await SharedPreferences.getInstance();
      final key = widget.content?.id ?? widget.title ?? url;
      final savedPosition = prefs.getInt('position_$key');
      if (savedPosition != null && savedPosition > 0) {
        await _videoController!.seekTo(Duration(milliseconds: savedPosition));
      }
    }
    
    _videoController!.addListener(() {
      if (mounted) {
        final value = _videoController!.value;
        final isPlaying = value.isPlaying;
        final position = value.position;
        final duration = value.duration;
        
        _progressThrottle?.cancel();
        _progressThrottle = Timer(const Duration(milliseconds: 100), () {
          if (mounted) {
            setState(() {
              _isPlaying = isPlaying;
              if (duration.inMilliseconds > 0) {
                _progress = position.inMilliseconds / duration.inMilliseconds;
              }
            });
          }
        });
        
        if (value.hasError) {
          debugLog('Video error: ${value.errorDescription}');
          _handleVideoError(value.errorDescription ?? 'Unknown error');
        }
        
        if (!isPlaying && position == duration && duration.inMilliseconds > 0) {
          unawaited(_handleVideoEnded());
        }
      }
    });
  }
  
  void _handleVideoError(String error) async {
    if (!mounted) return;
    
    if (error.contains('Source error') || error.contains('ExoPlaybackException')) {
      _showErrorDialog('Stream Error', 'The video stream encountered an error. This may be due to network issues or an invalid stream URL.');
    } else {
      unawaited(Future.delayed(const Duration(seconds: 2), () {
        if (mounted && _videoController != null && !_videoController!.value.hasError) {
          _videoController!.play();
        }
      }));
    }
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
              unawaited(_retryStream());
            },
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
  
  Future<void> _retryStream() async {
    setState(() => _isLoading = true);
    unawaited(_videoController?.dispose());
    _chewieController?.dispose();
    _videoController = null;
    _chewieController = null;
    await _initializePlayer();
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
    if (_videoController?.value.isInitialized == true) {
      if (_isPlaying) {
        _videoController?.pause();
      } else {
        _videoController?.play();
      }
    }
  }

  void _rewind() async {
    if (_videoController?.value.isInitialized == true) {
      final currentPos = _videoController!.value.position;
      final newPos = currentPos - const Duration(seconds: 10);
      if (newPos.inMilliseconds > 0) {
        await _videoController!.seekTo(newPos);
      }
    }
  }

  void _fastForward() async {
    if (_videoController?.value.isInitialized == true) {
      final currentPos = _videoController!.value.position;
      final duration = _videoController!.value.duration;
      final newPos = currentPos + const Duration(seconds: 10);
      if (newPos < duration) {
        await _videoController!.seekTo(newPos);
      }
    }
  }

  void _toggleAudio() async {
    if (mounted) {
      showAppSnackBar(
        context,
        const SnackBar(content: Text('Audio track selection not available')),
      );
    }
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
        // Ensure service is initialized
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
      // Reset to off mode if transcription fails
      setState(() => _subtitleMode = SubtitleMode.off);
      if (mounted) {
        showAppSnackBar(
          context,
          const SnackBar(content: Text('Live translation from video audio not yet implemented')),
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