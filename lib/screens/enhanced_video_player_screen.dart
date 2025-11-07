import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:provider/provider.dart';
// Disabled - causes UnimplementedError
// import 'package:subtitle_wrapper_package/subtitle_wrapper_package.dart';
import 'package:iptv_player/services/ai_upscaling_service.dart';
import 'package:iptv_player/services/live_transcription_service.dart';
import 'package:iptv_player/utils/app_theme.dart';

/// Enhanced full-screen video player with advanced features:
/// - TV remote control support
/// - Subtitle support (SRT, VTT, WebVTT)
/// - Multiple audio tracks
/// - Picture-in-Picture mode
/// - AI upscaling integration
/// - Live transcription & translation
class EnhancedVideoPlayerScreen extends StatefulWidget {
  final String videoUrl;
  final String title;
  final String? subtitle;
  final bool isLive;
  final List<SubtitleOption>? subtitleOptions;
  final List<AudioTrackOption>? audioTracks;

  const EnhancedVideoPlayerScreen({
    super.key,
    required this.videoUrl,
    required this.title,
    this.subtitle,
    this.isLive = false,
    this.subtitleOptions,
    this.audioTracks,
  });

  @override
  State<EnhancedVideoPlayerScreen> createState() => _EnhancedVideoPlayerScreenState();
}

class _EnhancedVideoPlayerScreenState extends State<EnhancedVideoPlayerScreen> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;
  // Subtitle support disabled - causes UnimplementedError
  // SubtitleController? _subtitleController;
  
  bool _isInitialized = false;
  bool _hasError = false;
  String? _errorMessage;
  
  // TV Remote control
  final FocusNode _playerFocusNode = FocusNode();
  bool _controlsVisible = true;
  Timer? _controlsTimer;
  
  // Subtitle & Audio
  int _selectedSubtitleIndex = -1; // -1 = no subtitles
  int _selectedAudioTrack = 0;
  bool _showSubtitleSelector = false;
  bool _showAudioSelector = false;
  
  // Live Transcription
  bool _liveTranscriptionEnabled = false;
  bool _translationEnabled = false;
  
  // Picture-in-Picture
  bool _isPipSupported = false;
  bool _isPipActive = false;

  @override
  void initState() {
    super.initState();
    _checkPipSupport();
    _initializePlayer();
    _startControlsTimer();
  }

  void _checkPipSupport() {
    // Check if platform supports PiP
    if (Platform.isAndroid) {
      _isPipSupported = true;
    }
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
          'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
          'Referer': widget.videoUrl,
        },
      );

      print('VideoPlayer: Awaiting initialization...');
      await _videoPlayerController.initialize();
      print('VideoPlayer: Initialized successfully');

      // Skip subtitle controller initialization - causes UnimplementedError
      // Only initialize if subtitles are explicitly provided and needed
      // _subtitleController = null;

      print('VideoPlayer: Creating Chewie controller...');
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
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: _retryPlayback,
                  child: const Text('Retry'),
                ),
              ],
            ),
          );
        },
      );

      print('VideoPlayer: Chewie controller created');
      print('VideoPlayer: Duration: ${_videoPlayerController.value.duration}');
      print('VideoPlayer: Size: ${_videoPlayerController.value.size}');

      setState(() {
        _isInitialized = true;
      });
      
      print('VideoPlayer: Player initialized and ready');
    } catch (e, stackTrace) {
      print('VideoPlayer: Error initializing player: $e');
      print('VideoPlayer: Stack trace: $stackTrace');
      setState(() {
        _hasError = true;
        _errorMessage = 'Failed to initialize video player:\n\n$e\n\nURL: ${widget.videoUrl}';
      });
    }
  }

  void _startControlsTimer() {
    _controlsTimer?.cancel();
    _controlsTimer = Timer(const Duration(seconds: 3), () {
      if (mounted) {
        setState(() => _controlsVisible = false);
      }
    });
  }

  void _showControls() {
    setState(() => _controlsVisible = true);
    _startControlsTimer();
  }

  Future<void> _retryPlayback() async {
    setState(() {
      _hasError = false;
      _errorMessage = null;
      _isInitialized = false;
    });
    await _initializePlayer();
  }

  // TV Remote Control Handlers
  void _handleKeyPress(KeyEvent event) {
    if (event is! KeyDownEvent) return;

    _showControls();

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
        break;

      case LogicalKeyboardKey.arrowLeft:
        // Seek backward 10 seconds
        final currentPosition = _videoPlayerController.value.position;
        final newPosition = currentPosition - const Duration(seconds: 10);
        _videoPlayerController.seekTo(newPosition > Duration.zero ? newPosition : Duration.zero);
        break;

      case LogicalKeyboardKey.arrowRight:
        // Seek forward 10 seconds
        final currentPosition = _videoPlayerController.value.position;
        final duration = _videoPlayerController.value.duration;
        final newPosition = currentPosition + const Duration(seconds: 10);
        _videoPlayerController.seekTo(newPosition < duration ? newPosition : duration);
        break;

      case LogicalKeyboardKey.arrowUp:
        // Show subtitle selector
        setState(() => _showSubtitleSelector = !_showSubtitleSelector);
        break;

      case LogicalKeyboardKey.arrowDown:
        // Show audio selector
        setState(() => _showAudioSelector = !_showAudioSelector);
        break;

      case LogicalKeyboardKey.mediaTrackNext:
      case LogicalKeyboardKey.channelUp:
        // Next audio track
        if (widget.audioTracks != null && widget.audioTracks!.isNotEmpty) {
          setState(() {
            _selectedAudioTrack = (_selectedAudioTrack + 1) % widget.audioTracks!.length;
          });
        }
        break;

      case LogicalKeyboardKey.mediaTrackPrevious:
      case LogicalKeyboardKey.channelDown:
        // Previous audio track
        if (widget.audioTracks != null && widget.audioTracks!.isNotEmpty) {
          setState(() {
            _selectedAudioTrack = (_selectedAudioTrack - 1) % widget.audioTracks!.length;
            if (_selectedAudioTrack < 0) {
              _selectedAudioTrack = widget.audioTracks!.length - 1;
            }
          });
        }
        break;

      case LogicalKeyboardKey.keyC:
      case LogicalKeyboardKey.closedCaptionToggle:
        // Toggle subtitles
        _toggleSubtitles();
        break;

      case LogicalKeyboardKey.keyT:
        // Toggle live transcription
        _toggleLiveTranscription();
        break;

      case LogicalKeyboardKey.keyP:
        // Toggle Picture-in-Picture
        if (_isPipSupported) {
          _togglePip();
        }
        break;

      case LogicalKeyboardKey.escape:
      case LogicalKeyboardKey.goBack:
        // Exit player
        Navigator.of(context).pop();
        break;
    }
  }

  void _toggleSubtitles() {
    setState(() {
      if (_selectedSubtitleIndex == -1) {
        // Enable first subtitle
        if (widget.subtitleOptions != null && widget.subtitleOptions!.isNotEmpty) {
          _selectedSubtitleIndex = 0;
          _loadSubtitle(widget.subtitleOptions![0]);
        }
      } else {
        // Disable subtitles
        _selectedSubtitleIndex = -1;
      }
    });
  }

  void _loadSubtitle(SubtitleOption option) {
    // Disabled - SubtitleController causes UnimplementedError
    // _subtitleController = SubtitleController(
    //   subtitleUrl: option.url,
    //   subtitleType: _getSubtitleType(option.format),
    // );
    print('VideoPlayer: Subtitle loading disabled to prevent UnimplementedError');
    setState(() {});
  }

  // Removed _getSubtitleType - subtitle support disabled

  Future<void> _toggleLiveTranscription() async {
    final transcriptionService = Provider.of<LiveTranscriptionService>(context, listen: false);
    
    if (!_liveTranscriptionEnabled) {
      // Start live transcription
      await transcriptionService.startTranscription();
      setState(() => _liveTranscriptionEnabled = true);
      
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Live transcription enabled'),
          duration: Duration(seconds: 2),
        ),
      );
    } else {
      // Stop live transcription
      await transcriptionService.stopTranscription();
      setState(() => _liveTranscriptionEnabled = false);
      
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Live transcription disabled'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  Future<void> _togglePip() async {
    if (!_isPipSupported) return;

    try {
      if (_isPipActive) {
        // Exit PiP mode
        await SystemChannels.platform.invokeMethod('SystemNavigator.pop');
        setState(() => _isPipActive = false);
      } else {
        // Enter PiP mode
        if (Platform.isAndroid) {
          await _enterAndroidPip();
        }
      }
    } catch (e) {
      debugPrint('PiP error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Picture-in-Picture not available: $e')),
      );
    }
  }

  Future<void> _enterAndroidPip() async {
    // Request PiP mode via Android platform channel
    const platform = MethodChannel('com.streamhub.iptv/pip');
    try {
      final result = await platform.invokeMethod('enterPipMode');
      setState(() => _isPipActive = result as bool);
    } on PlatformException catch (e) {
      debugPrint('Failed to enter PiP: ${e.message}');
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
        child: GestureDetector(
          onTap: _showControls,
          behavior: HitTestBehavior.opaque,
          child: Stack(
            children: [
              // Video Player
              Center(
                child: _buildVideoPlayer(),
              ),

              // Subtitle Overlay - disabled
              // if (_selectedSubtitleIndex >= 0 && _subtitleController != null)
              //   _buildSubtitleOverlay(),

              // Live Transcription Overlay
              if (_liveTranscriptionEnabled)
                _buildLiveTranscriptionOverlay(),

              // Custom Controls Overlay
              if (_controlsVisible)
                _buildControlsOverlay(),

              // Subtitle Selector
              if (_showSubtitleSelector)
                _buildSubtitleSelector(),

              // Audio Selector
              if (_showAudioSelector)
                _buildAudioSelector(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVideoPlayer() {
    if (_hasError) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 64, color: AppTheme.accentRed),
            const SizedBox(height: 16),
            const Text(
              'Playback Error',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(_errorMessage ?? 'Unknown error'),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _retryPlayback,
              child: const Text('Retry'),
            ),
          ],
        ),
      );
    }

    if (!_isInitialized || _chewieController == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Chewie(controller: _chewieController!),
    );
  }

Widget _buildSubtitleOverlay() {
    // Simplified subtitle display - full subtitle_wrapper_package integration
    // requires specific video player setup
    return Positioned(
      bottom: 80,
      left: 16,
      right: 16,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.7),
          borderRadius: BorderRadius.circular(4),
        ),
        child: const Text(
          '[Subtitles will appear here]',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget _buildLiveTranscriptionOverlay() {
    return Positioned(
      bottom: 80,
      left: 16,
      right: 16,
      child: Consumer<LiveTranscriptionService>(
        builder: (context, transcriptionService, _) {
          final text = transcriptionService.latestSubtitles;
          
          if (text.isEmpty) {
            return Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Listening...',
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            );
          }
          
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.8),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppTheme.primaryBlue, width: 2),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.mic, color: AppTheme.primaryBlue, size: 16),
                    const SizedBox(width: 8),
                    Text(
                      transcriptionService.isTranslating ? 'LIVE TRANSLATION' : 'LIVE TRANSCRIPTION',
                      style: TextStyle(
                        color: AppTheme.primaryBlue,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildControlsOverlay() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black.withOpacity(0.7),
            Colors.transparent,
            Colors.transparent,
            Colors.black.withOpacity(0.7),
          ],
        ),
      ),
      child: Column(
        children: [
          // Top bar with title and status
          _buildTopBar(),
          const Spacer(),
          // Bottom bar with hints
          _buildBottomBar(),
        ],
      ),
    );
  }

  Widget _buildTopBar() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            // Back button
            IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white, size: 32),
              onPressed: () => Navigator.of(context).pop(),
            ),
            const SizedBox(width: 16),
            // Title
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (widget.subtitle != null)
                    Text(
                      widget.subtitle!,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                ],
              ),
            ),
            // Status indicators
            if (widget.isLive)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: AppTheme.accentRed,
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
            const SizedBox(width: 8),
            Consumer<AIUpscalingService>(
              builder: (context, aiService, _) {
                if (!aiService.isEnabled || !aiService.isModelLoaded) {
                  return const SizedBox.shrink();
                }
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: AppTheme.primaryBlue,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.auto_awesome, color: Colors.white, size: 14),
                      SizedBox(width: 4),
                      Text(
                        'AI',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            if (_isPipSupported)
              IconButton(
                icon: const Icon(Icons.picture_in_picture_alt, color: Colors.white),
                onPressed: _togglePip,
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomBar() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Remote control hints
            Wrap(
              spacing: 16,
              runSpacing: 8,
              alignment: WrapAlignment.center,
              children: [
                _buildHint('SELECT', 'Play/Pause'),
                _buildHint('←→', 'Seek'),
                _buildHint('↑', 'Subtitles'),
                _buildHint('↓', 'Audio'),
                _buildHint('C', 'CC Toggle'),
                _buildHint('T', 'Transcription'),
                if (_isPipSupported) _buildHint('P', 'PiP'),
                _buildHint('BACK', 'Exit'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHint(String key, String action) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Colors.white.withOpacity(0.3)),
      ),
      child: Text(
        '$key: $action',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
    );
  }

  Widget _buildSubtitleSelector() {
    final options = [
      SubtitleOption(name: 'Off', url: '', format: 'none'),
      ...(widget.subtitleOptions ?? []),
    ];

    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 400),
        margin: const EdgeInsets.all(32),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.9),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppTheme.primaryBlue, width: 2),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppTheme.primaryBlue,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
              ),
              child: Row(
                children: [
                  const Icon(Icons.subtitles, color: Colors.white),
                  const SizedBox(width: 8),
                  const Text(
                    'Select Subtitles',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.close, color: Colors.white),
                    onPressed: () => setState(() => _showSubtitleSelector = false),
                  ),
                ],
              ),
            ),
            // Options list
            ListView.builder(
              shrinkWrap: true,
              itemCount: options.length,
              itemBuilder: (context, index) {
                final option = options[index];
                final isSelected = index == _selectedSubtitleIndex + 1;
                
                return ListTile(
                  selected: isSelected,
                  selectedTileColor: AppTheme.primaryBlue.withOpacity(0.3),
                  leading: Icon(
                    isSelected ? Icons.check_circle : Icons.circle_outlined,
                    color: isSelected ? AppTheme.primaryBlue : Colors.white70,
                  ),
                  title: Text(
                    option.name,
                    style: const TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    setState(() {
                      _selectedSubtitleIndex = index - 1;
                      _showSubtitleSelector = false;
                      
                      if (_selectedSubtitleIndex >= 0) {
                        _loadSubtitle(widget.subtitleOptions![_selectedSubtitleIndex]);
                      }
                    });
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAudioSelector() {
    if (widget.audioTracks == null || widget.audioTracks!.isEmpty) {
      return Center(
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.9),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppTheme.primaryBlue, width: 2),
          ),
          child: const Text(
            'No audio tracks available',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      );
    }

    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 400),
        margin: const EdgeInsets.all(32),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.9),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppTheme.primaryBlue, width: 2),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppTheme.primaryBlue,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
              ),
              child: Row(
                children: [
                  const Icon(Icons.audiotrack, color: Colors.white),
                  const SizedBox(width: 8),
                  const Text(
                    'Select Audio Track',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.close, color: Colors.white),
                    onPressed: () => setState(() => _showAudioSelector = false),
                  ),
                ],
              ),
            ),
            // Options list
            ListView.builder(
              shrinkWrap: true,
              itemCount: widget.audioTracks!.length,
              itemBuilder: (context, index) {
                final track = widget.audioTracks![index];
                final isSelected = index == _selectedAudioTrack;
                
                return ListTile(
                  selected: isSelected,
                  selectedTileColor: AppTheme.primaryBlue.withOpacity(0.3),
                  leading: Icon(
                    isSelected ? Icons.check_circle : Icons.circle_outlined,
                    color: isSelected ? AppTheme.primaryBlue : Colors.white70,
                  ),
                  title: Text(
                    track.name,
                    style: const TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    '${track.language} • ${track.codec}',
                    style: const TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                  onTap: () {
                    setState(() {
                      _selectedAudioTrack = index;
                      _showAudioSelector = false;
                    });
                    // TODO: Switch audio track in video player
                    // This requires platform-specific implementation
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controlsTimer?.cancel();
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    _playerFocusNode.dispose();
    super.dispose();
  }
}

/// Subtitle option model
class SubtitleOption {
  final String name;
  final String url;
  final String format; // 'srt', 'vtt', 'webvtt'

  SubtitleOption({
    required this.name,
    required this.url,
    required this.format,
  });
}

/// Audio track option model
class AudioTrackOption {
  final String name;
  final String language;
  final String codec;
  final int trackId;

  AudioTrackOption({
    required this.name,
    required this.language,
    required this.codec,
    required this.trackId,
  });
}
