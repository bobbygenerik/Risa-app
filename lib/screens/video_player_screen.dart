import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/services/ai_upscaling_service.dart';
import 'package:iptv_player/utils/app_theme.dart';

/// Full-screen video player with TV remote control support
/// Supports hardware acceleration, AI upscaling, and subtitles
class VideoPlayerScreen extends StatefulWidget {
  final String videoUrl;
  final String title;
  final String? subtitle;
  final bool isLive;

  const VideoPlayerScreen({
    super.key,
    required this.videoUrl,
    required this.title,
    this.subtitle,
    this.isLive = false,
  });

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;
  bool _isInitialized = false;
  bool _hasError = false;
  String? _errorMessage;
  
  // TV Remote control
  final FocusNode _playerFocusNode = FocusNode();
  bool _controlsVisible = true;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
    
    // Auto-hide controls after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        setState(() => _controlsVisible = false);
      }
    });
  }

  Future<void> _initializePlayer() async {
    try {
      print('VideoPlayer: Initializing player for: ${widget.videoUrl}');
      
      // Initialize video player
      _videoPlayerController = VideoPlayerController.networkUrl(
        Uri.parse(widget.videoUrl),
        videoPlayerOptions: VideoPlayerOptions(
          mixWithOthers: false,
          allowBackgroundPlayback: false,
        ),
        httpHeaders: {
          'User-Agent': 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36',
          'Referer': widget.videoUrl.contains('http') ? Uri.parse(widget.videoUrl).origin : '',
        },
      );
      
      // Add listener to monitor playback state
      _videoPlayerController.addListener(() {
        if (_videoPlayerController.value.hasError) {
          print('VideoPlayer: Playback error detected: ${_videoPlayerController.value.errorDescription}');
          if (mounted) {
            setState(() {
              _hasError = true;
              _errorMessage = 'Playback error: ${_videoPlayerController.value.errorDescription}';
            });
          }
        }
        if (_videoPlayerController.value.isPlaying) {
          print('VideoPlayer: Stream is playing');
        }
        if (_videoPlayerController.value.isBuffering) {
          print('VideoPlayer: Stream is buffering');
        }
      });

      print('VideoPlayer: Waiting for initialization...');
      await _videoPlayerController.initialize();
      print('VideoPlayer: Initialization complete');

      // Check if video is valid
      if (_videoPlayerController.value.hasError) {
        throw Exception('Video player error: ${_videoPlayerController.value.errorDescription}');
      }

      print('VideoPlayer: Duration: ${_videoPlayerController.value.duration}');
      print('VideoPlayer: Size: ${_videoPlayerController.value.size}');
      print('VideoPlayer: isInitialized: ${_videoPlayerController.value.isInitialized}');

      // Initialize Chewie with TV-optimized controls
      _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController,
        autoPlay: true,
        looping: widget.isLive,
        aspectRatio: 16 / 9,
        allowFullScreen: true,
        allowMuting: true,
        showControls: true,
        showControlsOnInitialize: true,
        progressColors: ChewieProgressColors(
          playedColor: AppTheme.accentPink,
          handleColor: AppTheme.accentPink,
          backgroundColor: AppTheme.textSecondary,
          bufferedColor: AppTheme.textSecondary.withOpacity(0.5),
        ),
        placeholder: Container(
          color: Colors.black,
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
        errorBuilder: (context, errorMessage) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error, color: AppTheme.accentRed, size: 48),
                const SizedBox(height: 16),
                Text(
                  'Playback Error',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                Text(
                  errorMessage,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          );
        },
      );

      setState(() {
        _isInitialized = true;
        _hasError = false;
      });

      // Enable AI upscaling if available
      final aiService = context.read<AIUpscalingService>();
      if (aiService.isModelLoaded) {
        aiService.setEnabled(true);
      }
    } catch (e, stackTrace) {
      print('VideoPlayer: Error initializing player: $e');
      print('VideoPlayer: Stack trace: $stackTrace');
      setState(() {
        _hasError = true;
        _errorMessage = 'Failed to load stream:\n\n$e\n\nURL: ${widget.videoUrl}';
      });
    }
  }

  @override
  void dispose() {
    _playerFocusNode.dispose();
    _chewieController?.dispose();
    _videoPlayerController.dispose();
    super.dispose();
  }

  void _toggleControls() {
    setState(() => _controlsVisible = !_controlsVisible);
  }

  void _handleKeyPress(KeyEvent event) {
    if (event is KeyDownEvent) {
      switch (event.logicalKey) {
        case LogicalKeyboardKey.select:
        case LogicalKeyboardKey.enter:
        case LogicalKeyboardKey.space:
          // Play/Pause
          if (_videoPlayerController.value.isPlaying) {
            _videoPlayerController.pause();
          } else {
            _videoPlayerController.play();
          }
          _toggleControls();
          break;
        case LogicalKeyboardKey.arrowLeft:
          // Seek backward 10 seconds
          final currentPosition = _videoPlayerController.value.position;
          _videoPlayerController.seekTo(
            currentPosition - const Duration(seconds: 10),
          );
          _toggleControls();
          break;
        case LogicalKeyboardKey.arrowRight:
          // Seek forward 10 seconds
          final currentPosition = _videoPlayerController.value.position;
          _videoPlayerController.seekTo(
            currentPosition + const Duration(seconds: 10),
          );
          _toggleControls();
          break;
        case LogicalKeyboardKey.arrowUp:
          // Volume up (if supported)
          _toggleControls();
          break;
        case LogicalKeyboardKey.arrowDown:
          // Volume down (if supported)
          _toggleControls();
          break;
        case LogicalKeyboardKey.escape:
        case LogicalKeyboardKey.goBack:
          // Exit player
          Navigator.of(context).pop();
          break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: KeyboardListener(
        focusNode: _playerFocusNode,
        autofocus: true,
        onKeyEvent: _handleKeyPress,
        child: Stack(
          children: [
            // Video player
            if (_isInitialized && !_hasError)
              Center(
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Chewie(controller: _chewieController!),
                ),
              ),
            // Slim gradient buffering indicator at bottom
            if (_isInitialized && !_hasError && _videoPlayerController.value.isBuffering)
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  height: 3,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [AppTheme.primaryBlue, AppTheme.accentPink],
                    ),
                  ),
                ),
              ),

            // Loading indicator with logo and channel info
            if (!_isInitialized && !_hasError)
              Center(
                child: Container(
                  padding: const EdgeInsets.all(48.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // App logo instead of generic icon
                                // App logo (new branding)
                                Image.asset(
                                  'assets/images/croppedlogo2.png',
                                  height: 120,
                                  fit: BoxFit.contain,
                                  errorBuilder: (context, error, stackTrace) {
                                    // Fallback to gradient icon if logo not found
                                    return Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [Color(0xFF2E3192), AppTheme.accentPink],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Icon(
                                        Icons.play_arrow,
                                        color: Colors.white,
                                        size: 60,
                                      ),
                                    );
                                  },
                                ),
                      const SizedBox(height: 32),
                      // Channel name
                      Text(
                        widget.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      if (widget.subtitle != null) ...[
                        const SizedBox(height: 8),
                        Text(
                          widget.subtitle!,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                      const SizedBox(height: 32),
                      const CircularProgressIndicator(),
                      const SizedBox(height: 16),
                      const Text(
                        'Loading stream...',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            // Error view
            if (_hasError)
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.error_outline, size: 64, color: AppTheme.accentRed),
                      const SizedBox(height: 24),
                      Text(
                        'Failed to load video',
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        _errorMessage ?? 'Unknown error',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.white70,
                        ),
                      ),
                      const SizedBox(height: 32),
                      ElevatedButton.icon(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(Icons.arrow_back),
                        label: const Text('Go Back'),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 32,
                            vertical: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            // Custom overlay with title and controls hint
            if (_isInitialized && _controlsVisible)
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.7),
                        Colors.transparent,
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.arrow_back, color: Colors.white, size: 32),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.title,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                if (widget.subtitle != null)
                                  Text(
                                    widget.subtitle!,
                                    style: const TextStyle(
                                      color: Colors.white70,
                                      fontSize: 16,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                              ],
                            ),
                          ),
                          if (widget.isLive)
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: AppTheme.accentPink,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Text(
                                'LIVE',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

            // TV Remote hints overlay
            if (_isInitialized && _controlsVisible)
              Positioned(
                bottom: 80,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildRemoteHint(Icons.keyboard_arrow_left, 'Back 10s'),
                      const SizedBox(width: 32),
                      _buildRemoteHint(Icons.play_arrow, 'Play/Pause'),
                      const SizedBox(width: 32),
                      _buildRemoteHint(Icons.keyboard_arrow_right, 'Forward 10s'),
                      const SizedBox(width: 32),
                      _buildRemoteHint(Icons.exit_to_app, 'Exit'),
                    ],
                  ),
                ),
              ),

            // AI Upscaling indicator
            Consumer<AIUpscalingService>(
              builder: (context, aiService, _) {
                if (aiService.isEnabled && aiService.isModelLoaded) {
                  return Positioned(
                    top: 24,
                    right: 24,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: AppTheme.primaryBlue),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.auto_awesome,
                            color: AppTheme.primaryBlue,
                            size: 16,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'AI ${aiService.quality}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRemoteHint(IconData icon, String label) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.7),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.white, size: 24),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
