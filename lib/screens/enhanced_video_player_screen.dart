import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
// import 'package:flutter_vlc_player/flutter_vlc_player.dart'; // DISABLED - causes build errors on Linux
import 'package:iptv_player/widgets/native_exoplayer.dart';
// Disabled - causes UnimplementedError
// import 'package:subtitle_wrapper_package/subtitle_wrapper_package.dart';
import 'package:iptv_player/services/ai_upscaling_service.dart';
import 'package:iptv_player/services/live_transcription_service.dart';
import 'package:iptv_player/services/native_capabilities_service.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'dart:io' as io;

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
  final bool forceVlc;
  final Channel? channel;

  const EnhancedVideoPlayerScreen({
    super.key,
    required this.videoUrl,
    required this.title,
    this.subtitle,
    this.isLive = false,
    this.subtitleOptions,
    this.audioTracks,
    this.forceVlc = false,
    this.channel,
  });

  @override
  State<EnhancedVideoPlayerScreen> createState() =>
      _EnhancedVideoPlayerScreenState();
}

class _EnhancedVideoPlayerScreenState extends State<EnhancedVideoPlayerScreen> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;
  // Optional VLC controller - DISABLED: flutter_vlc_player causes build errors
  bool _useVlcBackend = false;

  // Native exoplayer per-view controller (Android only)
  NativeExoPlayerController? _nativeController;
  List<Map<String, dynamic>> _nativeAudioTracks = [];
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
  static const int _subtitleIndexNone = -1;
  static const int _subtitleIndexTranscription = -2;

  // Tracks currently selected subtitle or transcription state.
  int _selectedSubtitleIndex = _subtitleIndexNone;
  List<_SubtitleCue> _subtitleCues = [];
  Timer? _subtitleTimer;
  String _currentSubtitleText = '';
  int _selectedAudioTrack = 0;
  bool _showSubtitleSelector = false;
  bool _showAudioSelector = false;
  // Labels discovered from VLC when using the VLC backend and no external
  // audioTracks list was provided by the caller.
  final List<String> _vlcAudioTrackLabels = [];

  // Live Transcription
  bool _liveTranscriptionEnabled = false;
  // translation flag removed (unused)

  // Picture-in-Picture
  bool _isPipSupported = false;
  bool _isPipActive = false;
  bool _nativeExoAvailable = false;
  bool _nativeExoCapabilityResolved = false;

  @override
  void initState() {
    super.initState();
    _checkPipSupport();
    _probeNativeExoAvailability();
    _initializePlayer();
    _startControlsTimer();
  }

  void _probeNativeExoAvailability() {
    NativeCapabilitiesService.supportsNativeExoPlayer().then((available) {
      if (!mounted) return;
      setState(() {
        _nativeExoAvailable = available;
        _nativeExoCapabilityResolved = true;
      });
    });
  }

  Future<void> _checkPipSupport() async {
    // Quick platform check first
    if (!Platform.isAndroid) {
      _isPipSupported = false;
      return;
    }

    _isPipSupported =
        true; // assume true on Android, then verify via platform channel
    try {
      const platform = MethodChannel('com.streamhub.iptv/pip');
      final available = await platform.invokeMethod<bool>('isPipAvailable');
      if (available == null || available == false) {
        _isPipSupported = false;
      }
    } catch (e) {
      // If the platform side isn't implemented, treat as not supported and log
      debugPrint('PiP availability check failed: $e');
      _isPipSupported = false;
    }

    if (mounted) setState(() {});
  }

  Future<void> _initializePlayer() async {
    try {
      debugPrint('VideoPlayer: Initializing player for: ${widget.videoUrl}');
      // If audioTracks are provided and non-empty, prefer the VLC backend
      // which supports real audio-track switching via setAudioTrack().
      // VLC DISABLED: flutter_vlc_player causes build errors
      _useVlcBackend = false;

      // Initialize video player
      _videoPlayerController = VideoPlayerController.networkUrl(
        Uri.parse(widget.videoUrl),
        videoPlayerOptions: VideoPlayerOptions(
          mixWithOthers: false,
          allowBackgroundPlayback: false,
        ),
        httpHeaders: {
          'User-Agent':
              'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
          'Referer': widget.videoUrl,
        },
      );

      debugPrint('VideoPlayer: Awaiting initialization...');
      await _videoPlayerController.initialize();
      debugPrint('VideoPlayer: Initialized successfully');

      // Skip subtitle controller initialization - causes UnimplementedError
      // Only initialize if subtitles are explicitly provided and needed
      // _subtitleController = null;

      debugPrint('VideoPlayer: Creating Chewie controller...');
      // If a previous Chewie controller exists, dispose it to avoid leaks
      if (_chewieController != null) {
        try {
          _chewieController?.dispose();
        } catch (_) {}
        _chewieController = null;
      }

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
        placeholder: Container(
          color: Colors.black,
          child: const Center(child: CircularProgressIndicator()),
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

      debugPrint('VideoPlayer: Chewie controller created');
      debugPrint(
        'VideoPlayer: Duration: ${_videoPlayerController.value.duration}',
      );
      debugPrint('VideoPlayer: Size: ${_videoPlayerController.value.size}');

      if (mounted) {
        setState(() {
          _isInitialized = true;
        });
      }
      // If a subtitle was selected before initialization, attempt to load it
      if (_selectedSubtitleIndex >= 0 &&
          widget.subtitleOptions != null &&
          widget.subtitleOptions!.length > _selectedSubtitleIndex) {
        _loadSubtitle(widget.subtitleOptions![_selectedSubtitleIndex]);
      }

      debugPrint('VideoPlayer: Player initialized and ready');
    } catch (e, stackTrace) {
      debugPrint('VideoPlayer: Error initializing player: $e');
      debugPrint('VideoPlayer: Stack trace: $stackTrace');
      if (mounted) {
        setState(() {
          _hasError = true;
          _errorMessage =
              'Failed to initialize video player:\n\n$e\n\nURL: ${widget.videoUrl}';
        });
      }
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

  void _togglePlayPause() {
    if (!_isInitialized) return;
    try {
      if (_videoPlayerController.value.isPlaying) {
        _videoPlayerController.pause();
      } else {
        _videoPlayerController.play();
      }
    } catch (_) {}
  }

  void _seekRelative(Duration offset) {
    if (!_isInitialized) return;
    try {
      final current = _videoPlayerController.value.position;
      final duration = _videoPlayerController.value.duration;
      var target = current + offset;
      if (target < Duration.zero) target = Duration.zero;
      if (target > duration) target = duration;
      _videoPlayerController.seekTo(target);
    } catch (_) {}
  }

  void _openSubtitleSelector() {
    setState(() => _showSubtitleSelector = true);
  }

  void _openAudioSelector() {
    final hasTracks = (widget.audioTracks?.isNotEmpty ?? false) ||
        _nativeAudioTracks.isNotEmpty ||
        (_useVlcBackend && _vlcAudioTrackLabels.isNotEmpty);
    if (!hasTracks) return;

    setState(() => _showAudioSelector = true);

    if (Platform.isAndroid && _nativeController != null) {
      _loadNativeAudioTracks();
    }
  }

  void _clearSubtitleCues() {
    _subtitleCues = [];
    _currentSubtitleText = '';
    _subtitleTimer?.cancel();
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

    // If player not ready yet, ignore key presses to avoid accessing
    // the controller before initialization.
    if (!_isInitialized) return;

    final bool isBackKey = event.logicalKey == LogicalKeyboardKey.escape ||
        event.logicalKey == LogicalKeyboardKey.goBack;

    // First back press reveals the overlay instead of exiting immediately.
    if (!_controlsVisible && isBackKey) {
      _showControls();
      return;
    }

    _showControls();

    switch (event.logicalKey) {
      case LogicalKeyboardKey.select:
      case LogicalKeyboardKey.enter:
      case LogicalKeyboardKey.space:
        // Play/Pause
        try {
          if (_videoPlayerController.value.isPlaying) {
            _videoPlayerController.pause();
          } else {
            _videoPlayerController.play();
          }
        } catch (_) {}
        break;

      case LogicalKeyboardKey.arrowLeft:
        // Seek backward 10 seconds
        try {
          final currentPosition = _videoPlayerController.value.position;
          final newPosition = currentPosition - const Duration(seconds: 10);
          _videoPlayerController.seekTo(
            newPosition > Duration.zero ? newPosition : Duration.zero,
          );
        } catch (_) {}
        break;

      case LogicalKeyboardKey.arrowRight:
        // Seek forward 10 seconds
        try {
          final currentPosition = _videoPlayerController.value.position;
          final duration = _videoPlayerController.value.duration;
          final newPosition = currentPosition + const Duration(seconds: 10);
          _videoPlayerController.seekTo(
            newPosition < duration ? newPosition : duration,
          );
        } catch (_) {}
        break;

      case LogicalKeyboardKey.arrowUp:
        // Switch to previous channel (live TV only)
        if (widget.isLive && widget.channel != null) {
          _switchToPreviousChannel();
        } else {
          // For VOD, toggle subtitle selector
          setState(() => _showSubtitleSelector = !_showSubtitleSelector);
        }
        break;

      case LogicalKeyboardKey.arrowDown:
        // Switch to next channel (live TV only)
        if (widget.isLive && widget.channel != null) {
          _switchToNextChannel();
        } else {
          // For VOD, toggle audio selector
          setState(() => _showAudioSelector = !_showAudioSelector);
          // If opening the audio selector and we have a native controller, fetch
          // the native audio track list for display.
          if (!_showAudioSelector && Platform.isAndroid) {
            // was open, now closed - do nothing
          } else if (_showAudioSelector &&
              _nativeController != null &&
              Platform.isAndroid) {
            _loadNativeAudioTracks();
          }
        }
        break;

      case LogicalKeyboardKey.mediaTrackNext:
      case LogicalKeyboardKey.channelUp:
        // Next audio track (cycle and switch)
        if ((widget.audioTracks != null && widget.audioTracks!.isNotEmpty) ||
            (_useVlcBackend && _vlcAudioTrackLabels.isNotEmpty)) {
          setState(() {
            final total = _useVlcBackend
                ? _vlcAudioTrackLabels.length
                : widget.audioTracks!.length;
            _selectedAudioTrack = (_selectedAudioTrack + 1) % total;
          });
          _switchAudioTrack(_selectedAudioTrack);
        }
        break;

      case LogicalKeyboardKey.mediaTrackPrevious:
      case LogicalKeyboardKey.channelDown:
        // Previous audio track (cycle and switch)
        if ((widget.audioTracks != null && widget.audioTracks!.isNotEmpty) ||
            (_useVlcBackend && _vlcAudioTrackLabels.isNotEmpty)) {
          setState(() {
            final total = _useVlcBackend
                ? _vlcAudioTrackLabels.length
                : widget.audioTracks!.length;
            _selectedAudioTrack = (_selectedAudioTrack - 1) % total;
            if (_selectedAudioTrack < 0) {
              _selectedAudioTrack = total - 1;
            }
          });
          _switchAudioTrack(_selectedAudioTrack);
        }
        break;

      case LogicalKeyboardKey.keyT:
        // Toggle live transcription
        _toggleLiveTranscription();
        break;
      case LogicalKeyboardKey.keyY:
        // Quick toggle for live transcription (alternate shortcut)
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
        // Exit player - navigate to EPG with mini player if this is live TV
        if (widget.isLive && widget.channel != null) {
          // For live TV, go back to EPG with mini player
          context.go(
            '/epg',
            extra: {'channel': widget.channel, 'continuePlayback': true},
          );
        } else {
          // For VOD, just pop
          Navigator.of(context).pop();
        }
        break;
    }
  }

  void _loadSubtitle(SubtitleOption option) {
    // Basic in-widget subtitle loader (supports simple SRT and VTT)
    // If URL is empty or 'none', clear subtitles
    if (option.url.isEmpty || option.format == 'none') {
      _subtitleCues = [];
      _currentSubtitleText = '';
      _subtitleTimer?.cancel();
      setState(() {});
      return;
    }

    // Load subtitle file via basic HttpClient to avoid adding a new dependency
    _subtitleTimer?.cancel();
    _subtitleCues = [];
    _currentSubtitleText = '';

    final uri = Uri.tryParse(option.url);
    if (uri == null) {
      debugPrint('Subtitle: Invalid URL: ${option.url}');
      setState(() {});
      return;
    }

    () async {
      try {
        final client = io.HttpClient();
        final request = await client.getUrl(uri);
        final response = await request.close();
        final body = await response.transform(const Utf8Decoder()).join();
        client.close(force: true);

        final cues = _parseSubtitles(body);
        if (mounted) {
          setState(() {
            _subtitleCues = cues;
          });
        }

        // Start periodic timer to update current subtitle from player position
        _subtitleTimer = Timer.periodic(const Duration(milliseconds: 300), (_) {
          if (!mounted) return;
          if (!_isInitialized) return;

          // Determine current playback position
          Duration pos = Duration.zero;
          try {
            pos = _videoPlayerController.value.position;
          } catch (_) {
            pos = Duration.zero;
          }

          final cue = _subtitleCues.firstWhere(
            (c) => pos >= c.start && pos <= c.end,
            orElse: () => _SubtitleCue(Duration.zero, Duration.zero, ''),
          );
          final text = cue.text;
          if (text != _currentSubtitleText) {
            setState(() {
              _currentSubtitleText = text;
            });
          }
        });
      } catch (e) {
        debugPrint('Subtitle load error: $e');
        if (mounted) setState(() {});
      }
    }();
  }

  Future<void> _loadNativeAudioTracks() async {
    if (_nativeController == null) return;
    try {
      final tracks = await _nativeController!.listAudioTracks();
      if (mounted) setState(() => _nativeAudioTracks = tracks);
    } catch (e) {
      debugPrint('Failed to list native audio tracks: $e');
    }
  }

  // Removed _getSubtitleType - subtitle support disabled

  void _switchToNextChannel() {
    final channelProvider = Provider.of<ChannelProvider>(
      context,
      listen: false,
    );
    final channels = channelProvider.channels;

    if (channels.isEmpty || widget.channel == null) return;

    // Find current channel index
    final currentIndex = channels.indexWhere(
      (ch) => ch.id == widget.channel!.id,
    );
    if (currentIndex == -1) return;

    // Get next channel (wrap around to first if at end)
    final nextIndex = (currentIndex + 1) % channels.length;
    final nextChannel = channels[nextIndex];

    // Navigate to next channel with mini player support
    if (mounted) {
      context.go('/player', extra: nextChannel);
    }
  }

  void _switchToPreviousChannel() {
    final channelProvider = Provider.of<ChannelProvider>(
      context,
      listen: false,
    );
    final channels = channelProvider.channels;

    if (channels.isEmpty || widget.channel == null) return;

    // Find current channel index
    final currentIndex = channels.indexWhere(
      (ch) => ch.id == widget.channel!.id,
    );
    if (currentIndex == -1) return;

    // Get previous channel (wrap around to last if at start)
    final previousIndex = (currentIndex - 1) < 0
        ? channels.length - 1
        : (currentIndex - 1);
    final previousChannel = channels[previousIndex];

    // Navigate to previous channel with mini player support
    if (mounted) {
      context.go('/player', extra: previousChannel);
    }
  }

  Future<void> _toggleLiveTranscription({bool? forceEnable}) async {
    final transcriptionService = Provider.of<LiveTranscriptionService>(
      context,
      listen: false,
    );

    final bool shouldEnable = forceEnable ?? !_liveTranscriptionEnabled;
    if (shouldEnable == _liveTranscriptionEnabled) {
      return;
    }

    if (shouldEnable) {
      await transcriptionService.startTranscription();
      if (mounted) {
        setState(() {
          _liveTranscriptionEnabled = true;
          _selectedSubtitleIndex = _subtitleIndexTranscription;
          _clearSubtitleCues();
        });
        showAppSnackBar(
          context,
          const SnackBar(
            content: Text('Live transcription enabled — press Y to toggle'),
            duration: Duration(seconds: 2),
          ),
        );
      }
    } else {
      await transcriptionService.stopTranscription();
      if (mounted) {
        setState(() {
          _liveTranscriptionEnabled = false;
          if (_selectedSubtitleIndex == _subtitleIndexTranscription) {
            _selectedSubtitleIndex = _subtitleIndexNone;
          }
        });
        showAppSnackBar(
          context,
          SnackBar(
            content: const Text(
              'Live transcription disabled — press Y to toggle',
            ),
            duration: const Duration(seconds: 4),
            action: SnackBarAction(
              label: 'Save',
              onPressed: () async {
                try {
                  final srt = transcriptionService.exportAsSRT();
                  await Clipboard.setData(ClipboardData(text: srt));
                  if (!mounted) return;
                  showAppSnackBar(
                    context,
                    const SnackBar(
                      content: Text('Transcript copied to clipboard'),
                    ),
                  );
                } catch (e) {
                  if (!mounted) return;
                  showAppSnackBar(
                    context,
                    const SnackBar(
                      content: Text('Failed to export transcript'),
                    ),
                  );
                }
              },
            ),
          ),
        );
      }
    }
  }

  Future<void> _togglePip() async {
    if (!_isPipSupported) return;

    try {
      if (_isPipActive) {
        // Exit PiP mode
        await SystemChannels.platform.invokeMethod('SystemNavigator.pop');
        if (mounted) setState(() => _isPipActive = false);
      } else {
        // Enter PiP mode
        if (Platform.isAndroid) {
          final ok = await _enterAndroidPip();
          if (!mounted) return;
          if (!ok) {
            showAppSnackBar(
              context,
              const SnackBar(content: Text('Picture-in-Picture not available')),
            );
          }
        }
      }
    } catch (e) {
      debugPrint('PiP error: $e');
      if (!mounted) return;
      showAppSnackBar(
        context,
        SnackBar(content: Text('Picture-in-Picture not available: $e')),
      );
    }
  }

  /// Try to enter Android PiP mode via platform channel.
  /// Returns true if PiP was activated, false otherwise.
  Future<bool> _enterAndroidPip() async {
    const platform = MethodChannel('com.streamhub.iptv/pip');
    try {
      final available = await platform.invokeMethod<bool>('isPipAvailable');
      if (available == null || available == false) return false;

      final result = await platform.invokeMethod<bool>('enterPipMode');
      final ok = result == true;
      if (mounted) setState(() => _isPipActive = ok);
      return ok;
    } on PlatformException catch (e) {
      debugPrint('Failed to enter PiP: ${e.message}');
      return false;
    } catch (e) {
      debugPrint('Failed to enter PiP: $e');
      return false;
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
              Center(child: _buildVideoPlayer()),

              // Subtitle Overlay (in-widget simple renderer)
              if (_currentSubtitleText.isNotEmpty) _buildSubtitleOverlay(),

              // Live Transcription Overlay
              if (_liveTranscriptionEnabled) _buildLiveTranscriptionOverlay(),

              // Custom Controls Overlay
              if (_controlsVisible) _buildControlsOverlay(),

              // Subtitle Selector
              if (_showSubtitleSelector) _buildSubtitleSelector(),

              // Audio Selector
              if (_showAudioSelector) _buildAudioSelector(),
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
            const Icon(
              Icons.error_outline,
              size: 64,
              color: AppTheme.accentRed,
            ),
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

    if (!_isInitialized) {
      return const Center(child: CircularProgressIndicator());
    }

    // VLC backend disabled - use standard video player

    // On Android, prefer the native ExoPlayer platform view for better native
    // audio-track support and performance. This will be a no-op on other platforms.
    if (Platform.isAndroid) {
      if (!_nativeExoCapabilityResolved) {
        return const Center(child: CircularProgressIndicator());
      }
      if (_nativeExoAvailable) {
        return AspectRatio(
          aspectRatio: 16 / 9,
          child: NativeExoPlayer(
            videoUrl: widget.videoUrl,
            autoPlay: true,
            onCreated: (controller) {
              // Keep selected audio track in sync if needed and retain controller
              _nativeController = controller;
              if (_selectedAudioTrack != 0) {
                controller.switchAudioTrack(_selectedAudioTrack);
              }
            },
          ),
        );
      }
    }
    // Default: Chewie/video_player
    if (_chewieController == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Chewie(controller: _chewieController!),
    );
  }

  // Subtitle overlay removed (subtitle support disabled to avoid platform plugin issues)

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
                color: Colors.black.withAlpha((0.7 * 255).round()),
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
                    style: const TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            );
          }

          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.black.withAlpha((0.8 * 255).round()),
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
                      transcriptionService.isTranslating
                          ? 'LIVE TRANSLATION'
                          : 'LIVE TRANSCRIPTION',
                      style: TextStyle(
                        color: AppTheme.primaryBlue,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 12),
                    // Translation toggle
                    IconButton(
                      icon: Icon(
                        transcriptionService.isTranslating
                            ? Icons.translate
                            : Icons.translate_outlined,
                        color: transcriptionService.isTranslating
                            ? AppTheme.primaryBlue
                            : Colors.white,
                        size: 18,
                      ),
                      tooltip: transcriptionService.isTranslating
                          ? 'Disable translation'
                          : 'Enable translation',
                      onPressed: () {
                        transcriptionService.setTranslationEnabled(
                          !transcriptionService.isTranslating,
                        );
                      },
                    ),
                    // Export / Save
                    IconButton(
                      icon: const Icon(
                        Icons.download,
                        color: Colors.white,
                        size: 18,
                      ),
                      tooltip: 'Export transcript (copy SRT to clipboard)',
                      onPressed: () async {
                        try {
                          final clipContext = context;
                          final srt = transcriptionService.exportAsSRT();
                          await Clipboard.setData(ClipboardData(text: srt));
                          if (!clipContext.mounted) return;
                          showAppSnackBar(
                            clipContext,
                            const SnackBar(
                              content: Text('Transcript copied to clipboard'),
                            ),
                          );
                        } catch (e) {
                          final clipContext = context;
                          if (!clipContext.mounted) return;
                          showAppSnackBar(
                            clipContext,
                            const SnackBar(
                              content: Text('Failed to export transcript'),
                            ),
                          );
                        }
                      },
                    ),
                    // Clear
                    IconButton(
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.white,
                        size: 18,
                      ),
                      tooltip: 'Clear transcript',
                      onPressed: () {
                        transcriptionService.clearTranscriptions();
                        showAppSnackBar(
                          context,
                          const SnackBar(content: Text('Transcripts cleared')),
                        );
                      },
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
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0x99050710), Color(0x990d1140)],
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
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
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
                if (!aiService.isModelLoaded && !aiService.isDownloading) {
                  // If model isn't loaded, show a subtle indicator inviting user to configure AI
                  return IconButton(
                    icon: const Icon(
                      Icons.auto_awesome_outlined,
                      color: Colors.white,
                    ),
                    tooltip: 'AI upscaling (configure)',
                    onPressed: () {
                      showDialog<void>(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('AI Upscaling'),
                            content: SizedBox(
                              width: 360,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Text('AI upscaling model not loaded.'),
                                  const SizedBox(height: 12),
                                  ElevatedButton(
                                    onPressed: () async {
                                      final dialogContext = context;
                                      Navigator.of(dialogContext).pop();
                                      showAppSnackBar(
                                        dialogContext,
                                        const SnackBar(
                                          content: Text(
                                            'Initializing AI model...',
                                          ),
                                        ),
                                      );
                                      await aiService.initialize();
                                      if (!dialogContext.mounted) return;
                                      if (aiService.isModelLoaded) {
                                        showAppSnackBar(
                                          dialogContext,
                                          const SnackBar(
                                            content: Text('AI model loaded'),
                                          ),
                                        );
                                        // If native controller exists and a downloaded model is present, ask native to load it
                                        if (Platform.isAndroid &&
                                            _nativeController != null) {
                                          try {
                                            final modelPath = await aiService
                                                .getLocalModelPath();
                                            if (modelPath != null) {
                                              await _nativeController!
                                                  .loadAIModel(modelPath);
                                            }
                                          } catch (e) {
                                            debugPrint(
                                              'Failed to instruct native to load model: $e',
                                            );
                                          }
                                        }
                                      } else {
                                        if (dialogContext.mounted) {
                                          showAppSnackBar(
                                            dialogContext,
                                            const SnackBar(
                                              content: Text(
                                                'AI model not available; try download',
                                              ),
                                            ),
                                          );
                                        }
                                      }
                                    },
                                    child: const Text('Load AI Model'),
                                  ),
                                  const SizedBox(height: 8),
                                  ElevatedButton(
                                    onPressed: aiService.isDownloading
                                        ? null
                                        : () async {
                                            final dialogContext = context;
                                            Navigator.of(dialogContext).pop();
                                            showAppSnackBar(
                                              dialogContext,
                                              const SnackBar(
                                                content: Text(
                                                  'Downloading AI model (with automatic retry)...',
                                                ),
                                                duration: Duration(seconds: 3),
                                              ),
                                            );
                                            final ok = await aiService
                                                .downloadModel();
                                            if (!dialogContext.mounted) return;
                                            if (ok && aiService.isModelLoaded) {
                                              showAppSnackBar(
                                                dialogContext,
                                                const SnackBar(
                                                  content: Text(
                                                    'AI model downloaded and loaded',
                                                  ),
                                                ),
                                              );
                                              // Instruct native controller to load the downloaded model
                                              if (Platform.isAndroid &&
                                                  _nativeController != null) {
                                                try {
                                                  final modelPath =
                                                      await aiService
                                                          .getLocalModelPath();
                                                  if (modelPath != null) {
                                                    final res =
                                                        await _nativeController!
                                                            .loadAIModel(
                                                              modelPath,
                                                            );
                                                    debugPrint(
                                                      'Native loadAIModel result: $res',
                                                    );
                                                  }
                                                } catch (e) {
                                                  debugPrint(
                                                    'Failed to load model on native side: $e',
                                                  );
                                                }
                                              }
                                            } else {
                                              if (dialogContext.mounted) {
                                                showAppSnackBar(
                                                  dialogContext,
                                                  const SnackBar(
                                                    content: Text(
                                                      'Failed to download AI model. Check network and try again.',
                                                    ),
                                                    duration: Duration(
                                                      seconds: 4,
                                                    ),
                                                  ),
                                                );
                                              }
                                            }
                                          },
                                    child: Text(
                                      aiService.isDownloading
                                          ? 'Downloading...'
                                          : 'Download Model',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: const Text('Close'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  );
                }

                // When model is available, show status and settings
                return IconButton(
                  icon: Icon(
                    Icons.auto_awesome,
                    color: aiService.isEnabled
                        ? AppTheme.primaryBlue
                        : Colors.white,
                  ),
                  tooltip: 'AI upscaling settings',
                  onPressed: () {
                    showDialog<void>(
                      context: context,
                      builder: (context) {
                        return StatefulBuilder(
                          builder: (context, setStateDialog) {
                            return AlertDialog(
                              title: const Text('AI Upscaling'),
                              content: SizedBox(
                                width: 400,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SwitchListTile(
                                      title: const Text('Enable AI Upscaling'),
                                      value: aiService.isEnabled,
                                      onChanged: (v) async {
                                        // If enabling, ensure a model is available. Prefer a
                                        // local download (Option A): automatically download
                                        // the model if it's not present, then initialize.
                                        if (v && !aiService.isModelLoaded) {
                                          final dialogContext = context;
                                          showAppSnackBar(
                                            dialogContext,
                                            const SnackBar(
                                              content: Text(
                                                'Preparing AI model...',
                                              ),
                                            ),
                                          );

                                          try {
                                            final local = await aiService
                                                .getLocalModelPath();
                                            if (local == null) {
                                              // No local model: download it automatically (Option A)
                                              // Uses built-in retry/backoff for robustness
                                              final ok = await aiService
                                                  .downloadModel();
                                              if (!dialogContext.mounted)
                                                return;
                                              if (!ok) {
                                                showAppSnackBar(
                                                  dialogContext,
                                                  const SnackBar(
                                                    content: Text(
                                                      'Failed to download AI model after retries. Check network and try again.',
                                                    ),
                                                    duration: Duration(
                                                      seconds: 4,
                                                    ),
                                                  ),
                                                );
                                              }
                                            } else {
                                              // Local model exists - initialize/interpreter
                                              await aiService.initialize();
                                              if (!dialogContext.mounted)
                                                return;
                                            }
                                          } catch (e) {
                                            debugPrint(
                                              'AI model prepare error: $e',
                                            );
                                            if (!dialogContext.mounted) return;
                                            showAppSnackBar(
                                              dialogContext,
                                              const SnackBar(
                                                content: Text(
                                                  'Error preparing AI model',
                                                ),
                                              ),
                                            );
                                          }
                                        }

                                        aiService.setEnabled(v);

                                        // If we're using the native ExoPlayer on Android, proxy
                                        // the upscaler enable/disable to the native view so the
                                        // platform can wire into the rendering pipeline.
                                        if (Platform.isAndroid &&
                                            _nativeController != null) {
                                          try {
                                            if (v) {
                                              // Attempt to load the downloaded model into native view
                                              try {
                                                final modelPath =
                                                    await aiService
                                                        .getLocalModelPath();
                                                if (modelPath != null) {
                                                  await _nativeController!
                                                      .loadAIModel(modelPath);
                                                }
                                              } catch (e) {
                                                debugPrint(
                                                  'Failed to load model into native controller: $e',
                                                );
                                              }

                                              await _nativeController!
                                                  .enableAIUpscaling();
                                              // Ensure native quality reflects service setting
                                              await _nativeController!
                                                  .setAIQuality(
                                                    aiService.quality,
                                                  );
                                            } else {
                                              await _nativeController!
                                                  .disableAIUpscaling();
                                            }
                                          } catch (e) {
                                            debugPrint(
                                              'Native upscaler call failed: $e',
                                            );
                                          }
                                        }

                                        setStateDialog(() {});
                                      },
                                    ),
                                    const SizedBox(height: 8),
                                    const Text('Quality'),
                                    const SizedBox(height: 6),
                                    DropdownButton<String>(
                                      value: aiService.quality,
                                      items: const [
                                        DropdownMenuItem(
                                          value: 'Fast',
                                          child: Text('Fast'),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Balanced',
                                          child: Text('Balanced'),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Quality',
                                          child: Text('Quality'),
                                        ),
                                      ],
                                      onChanged: (val) async {
                                        if (val != null) {
                                          aiService.setQuality(val);
                                          // Propagate quality to native player if available
                                          if (Platform.isAndroid &&
                                              _nativeController != null) {
                                            try {
                                              await _nativeController!
                                                  .setAIQuality(val);
                                            } catch (e) {
                                              debugPrint(
                                                'Setting native AI quality failed: $e',
                                              );
                                            }
                                          }
                                          setStateDialog(() {});
                                        }
                                      },
                                    ),
                                    const SizedBox(height: 12),
                                    // Native tuning controls (only shown when native controller present)
                                    if (Platform.isAndroid &&
                                        _nativeController != null) ...[
                                      const SizedBox(height: 12),
                                      SwitchListTile(
                                        title: const Text(
                                          'Adaptive overlap tuning',
                                        ),
                                        subtitle: const Text(
                                          'Automatically adjust tile overlap to meet target latency',
                                        ),
                                        value:
                                            true, // default shown as on; reflect service/native state would require additional plumbing
                                        onChanged: (val) async {
                                          try {
                                            await _nativeController!
                                                .setAdaptiveEnabled(val);
                                          } catch (e) {
                                            debugPrint(
                                              'Failed to set adaptiveEnabled: $e',
                                            );
                                          }
                                          setStateDialog(() {});
                                        },
                                      ),
                                      Row(
                                        children: [
                                          const Text('Target latency (ms)'),
                                          const SizedBox(width: 12),
                                          Expanded(
                                            child: StatefulBuilder(
                                              builder: (c, s) {
                                                int current =
                                                    150; // reasonable default
                                                return Slider(
                                                  value: current.toDouble(),
                                                  min: 50,
                                                  max: 1000,
                                                  divisions: 19,
                                                  label: '$current ms',
                                                  onChanged: (v) {
                                                    s(
                                                      () => current = v.round(),
                                                    );
                                                  },
                                                  onChangeEnd: (v) async {
                                                    try {
                                                      await _nativeController!
                                                          .setAdaptiveTargetMs(
                                                            current,
                                                          );
                                                    } catch (e) {
                                                      debugPrint(
                                                        'Failed to set adaptive target: $e',
                                                      );
                                                    }
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 8),
                                      Row(
                                        children: [
                                          const Text('Overlap percent'),
                                          const SizedBox(width: 12),
                                          Expanded(
                                            child: StatefulBuilder(
                                              builder: (c, s) {
                                                double pct = 0.5;
                                                return Slider(
                                                  value: pct,
                                                  min: 0.0,
                                                  max: 0.9,
                                                  divisions: 9,
                                                  label:
                                                      '${(pct * 100).round()}%',
                                                  onChanged: (v) =>
                                                      s(() => pct = v),
                                                  onChangeEnd: (v) async {
                                                    try {
                                                      await _nativeController!
                                                          .setOverlapPercent(v);
                                                    } catch (e) {
                                                      debugPrint(
                                                        'Failed to set overlap percent: $e',
                                                      );
                                                    }
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 8),
                                      SwitchListTile(
                                        title: const Text(
                                          'Use GPU delegate (if available)',
                                        ),
                                        subtitle: const Text(
                                          'Attempt to use device GPU for faster inference',
                                        ),
                                        value: true,
                                        onChanged: (v) async {
                                          try {
                                            await _nativeController!
                                                .setGPUDelegateEnabled(v);
                                          } catch (e) {
                                            debugPrint(
                                              'Failed to set GPU delegate: $e',
                                            );
                                          }
                                          setStateDialog(() {});
                                        },
                                      ),
                                    ] else if (aiService.isDownloading)
                                      Column(
                                        children: [
                                          LinearProgressIndicator(
                                            value: aiService.downloadProgress,
                                          ),
                                          const SizedBox(height: 8),
                                          const Text('Downloading model...'),
                                        ],
                                      ),
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: const Text('Close'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    );
                  },
                );
              },
            ),
            if (Platform.isAndroid && _nativeController != null)
              IconButton(
                icon: const Icon(Icons.list, color: Colors.white),
                onPressed: () async {
                  await _loadNativeAudioTracks();
                  if (!mounted) return;
                  _showNativeTracksDialog();
                },
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomBar() {
    final bool isPlaying =
        _isInitialized && _videoPlayerController.value.isPlaying;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildControlDeck(isPlaying),
            const SizedBox(height: 14),
            _buildHintWrap(),
          ],
        ),
      ),
    );
  }

  Widget _buildControlDeck(bool isPlaying) {
    final hasSubtitleTracks = widget.subtitleOptions?.isNotEmpty ?? false;
    final hasAudioTracks = (widget.audioTracks?.isNotEmpty ?? false) ||
        _nativeAudioTracks.isNotEmpty ||
        (_useVlcBackend && _vlcAudioTrackLabels.isNotEmpty);

    final bool subtitleActive =
        _selectedSubtitleIndex >= 0 ||
        _selectedSubtitleIndex == _subtitleIndexTranscription;

    final String subtitleLabel;
    if (_selectedSubtitleIndex == _subtitleIndexTranscription) {
      subtitleLabel = 'Transcription';
    } else if (_selectedSubtitleIndex >= 0) {
      subtitleLabel = 'Subtitles On';
    } else if (hasSubtitleTracks) {
      subtitleLabel = 'Subtitles';
    } else {
      subtitleLabel = 'Transcription';
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(28),
        border: Border.all(color: Colors.white.withOpacity(0.12)),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 24,
            offset: Offset(0, 12),
          ),
        ],
      ),
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 12,
        runSpacing: 12,
        children: [
          _buildControlButton(
            icon: Icons.replay_10,
            label: '-10s',
            onTap: () => _seekRelative(const Duration(seconds: -10)),
          ),
          _buildControlButton(
            icon: isPlaying ? Icons.pause : Icons.play_arrow,
            label: isPlaying ? 'Pause' : 'Play',
            onTap: _togglePlayPause,
            isPrimary: true,
          ),
          _buildControlButton(
            icon: Icons.forward_10,
            label: '+10s',
            onTap: () => _seekRelative(const Duration(seconds: 10)),
          ),
          _buildControlButton(
            icon: Icons.subtitles,
            label: subtitleLabel,
            onTap: _openSubtitleSelector,
            isActive: subtitleActive,
          ),
          _buildControlButton(
            icon: Icons.headset,
            label: hasAudioTracks ? 'Audio Tracks' : 'Audio Unavailable',
            onTap: hasAudioTracks ? _openAudioSelector : null,
            isActive: _showAudioSelector,
            isDisabled: !hasAudioTracks,
          ),
          _buildControlButton(
            icon: Icons.logout,
            label: 'Exit',
            onTap: () {
              if (widget.isLive && widget.channel != null) {
                context.go(
                  '/epg',
                  extra: {
                    'channel': widget.channel,
                    'continuePlayback': true,
                  },
                );
              } else {
                Navigator.of(context).pop();
              }
            },
          ),
          if (_isPipSupported)
            _buildControlButton(
              icon: Icons.picture_in_picture_alt,
              label: 'PiP Mode',
              onTap: _togglePip,
              isActive: _isPipActive,
            ),
        ],
      ),
    );
  }

  Widget _buildHintWrap() {
    return Wrap(
      spacing: 12,
      runSpacing: 8,
      alignment: WrapAlignment.center,
      children: [
        _buildHint('SELECT', 'Play/Pause'),
        _buildHint('←→', 'Seek'),
        _buildHint('↑', 'Subtitles'),
        _buildHint('↓', 'Audio'),
        _buildHint('T/Y', 'Transcription'),
        if (_isPipSupported) _buildHint('P', 'PiP'),
        _buildHint('BACK', 'Exit'),
      ],
    );
  }

  Widget _buildHint(String key, String action) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: Colors.white.withOpacity(0.2)),
        color: Colors.white.withOpacity(0.08),
      ),
      child: Text(
        '$key · $action',
        style: const TextStyle(color: Colors.white, fontSize: 12),
      ),
    );
  }

  Widget _buildControlButton({
    required IconData icon,
    required String label,
    VoidCallback? onTap,
    bool isPrimary = false,
    bool isActive = false,
    bool isDisabled = false,
  }) {
    final borderRadius = BorderRadius.circular(18);
    final gradient = isPrimary
        ? const LinearGradient(
            colors: [Color(0xFF6F5BFF), Color(0xFFB86BFF)],
          )
        : (isActive
            ? const LinearGradient(
                colors: [Color(0xFF0057FF), Color(0xFF00C9FF)],
              )
            : null);

    final backgroundColor = isPrimary
        ? null
        : Colors.white.withOpacity(isActive ? 0.18 : 0.08);

    return Opacity(
      opacity: isDisabled ? 0.45 : 1.0,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: borderRadius,
          onTap: isDisabled ? null : onTap,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: EdgeInsets.symmetric(
              horizontal: isPrimary ? 22 : 16,
              vertical: 12,
            ),
            decoration: BoxDecoration(
              borderRadius: borderRadius,
              gradient: gradient,
              color: backgroundColor,
              border: Border.all(
                color: Colors.white.withOpacity(isPrimary ? 0.0 : 0.15),
              ),
              boxShadow: isPrimary || isActive
                  ? const [
                      BoxShadow(
                        color: Color(0x550057FF),
                        blurRadius: 18,
                        offset: Offset(0, 6),
                      ),
                    ]
                  : null,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                  size: isPrimary ? 26 : 22,
                ),
                const SizedBox(width: 8),
                Text(
                  label,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isPrimary ? 16 : 14,
                    fontWeight: isPrimary ? FontWeight.w600 : FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSubtitleSelector() {
    final subtitleTracks = widget.subtitleOptions ?? [];
    final entries = <_SubtitleSelectorEntry>[
      const _SubtitleSelectorEntry.transcription(),
      const _SubtitleSelectorEntry.off(),
      ...List.generate(
        subtitleTracks.length,
        (index) => _SubtitleSelectorEntry.track(subtitleTracks[index], index),
      ),
    ];

    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 400),
        margin: const EdgeInsets.all(32),
        decoration: BoxDecoration(
          color: Colors.black.withAlpha((0.9 * 255).round()),
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
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(10),
                ),
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
                    onPressed: () =>
                        setState(() => _showSubtitleSelector = false),
                  ),
                ],
              ),
            ),
            // Options list
            ListView.builder(
              shrinkWrap: true,
              itemCount: entries.length,
              itemBuilder: (context, index) {
                final entry = entries[index];
                final isSelected = switch (entry.type) {
                  _SubtitleSelectorEntryType.transcription =>
                      _selectedSubtitleIndex == _subtitleIndexTranscription,
                  _SubtitleSelectorEntryType.off =>
                      _selectedSubtitleIndex == _subtitleIndexNone,
                  _SubtitleSelectorEntryType.track =>
                      _selectedSubtitleIndex == entry.optionIndex,
                };

                IconData leadingIcon;
                String title;
                String? subtitle;

                switch (entry.type) {
                  case _SubtitleSelectorEntryType.transcription:
                    leadingIcon = Icons.mic;
                    title = 'Live Transcription';
                    subtitle = 'Generate captions on-device';
                    break;
                  case _SubtitleSelectorEntryType.off:
                    leadingIcon = Icons.visibility_off;
                    title = 'Off';
                    subtitle = 'Hide subtitles';
                    break;
                  case _SubtitleSelectorEntryType.track:
                    leadingIcon =
                        isSelected ? Icons.check_circle : Icons.circle_outlined;
                    title = entry.option?.name ?? 'Track';
                    subtitle = entry.option?.format;
                    break;
                }

                return ListTile(
                  selected: isSelected,
                  selectedTileColor: AppTheme.primaryBlue.withAlpha(
                    (0.3 * 255).round(),
                  ),
                  leading: Icon(
                    leadingIcon,
                    color: isSelected ? AppTheme.primaryBlue : Colors.white70,
                  ),
                  title: Text(
                    title,
                    style: const TextStyle(color: Colors.white),
                  ),
                  subtitle: subtitle != null
                      ? Text(
                          subtitle,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                          ),
                        )
                      : null,
                  onTap: () => _handleSubtitleEntryTap(entry),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _handleSubtitleEntryTap(
    _SubtitleSelectorEntry entry,
  ) async {
    setState(() => _showSubtitleSelector = false);

    switch (entry.type) {
      case _SubtitleSelectorEntryType.transcription:
        setState(() {
          _selectedSubtitleIndex = _subtitleIndexTranscription;
          _clearSubtitleCues();
        });
        await _toggleLiveTranscription(forceEnable: true);
        break;
      case _SubtitleSelectorEntryType.off:
        setState(() {
          _selectedSubtitleIndex = _subtitleIndexNone;
          _clearSubtitleCues();
        });
        await _toggleLiveTranscription(forceEnable: false);
        break;
      case _SubtitleSelectorEntryType.track:
        await _toggleLiveTranscription(forceEnable: false);
        if (!mounted) return;
        final optionIndex = entry.optionIndex ?? _subtitleIndexNone;
        setState(() {
          _selectedSubtitleIndex = optionIndex;
        });
        final tracks = widget.subtitleOptions ?? [];
        if (_selectedSubtitleIndex >= 0 &&
            _selectedSubtitleIndex < tracks.length) {
          _loadSubtitle(tracks[_selectedSubtitleIndex]);
        }
        break;
    }
  }

  void _showNativeTracksDialog() {
    showDialog<void>(
      context: context,
      builder: (context) {
        final dialogContext = context;
        return AlertDialog(
          title: const Text('Native Audio Tracks'),
          content: SizedBox(
            width: double.maxFinite,
            child: _nativeAudioTracks.isEmpty
                ? const Text('No native audio tracks discovered')
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: _nativeAudioTracks.length,
                    itemBuilder: (context, index) {
                      final t = _nativeAudioTracks[index];
                      final label = t['label'] ?? 'Track ${index + 1}';
                      final language = t['language'] ?? '';
                      final groupIndex = t['groupIndex'];
                      final trackIndex = t['trackIndex'];

                      return ListTile(
                        title: Text(
                          '$label ${language.isNotEmpty ? '($language)' : ''}',
                        ),
                        subtitle: Text(
                          'group: $groupIndex, track: $trackIndex',
                        ),
                        onTap: () async {
                          try {
                            if (_nativeController != null) {
                              final rIdx = (t['rendererIndex'] is int)
                                  ? t['rendererIndex']
                                  : -1;
                              final gIdx = (groupIndex is int)
                                  ? groupIndex
                                  : -1;
                              final trIdx = (trackIndex is int)
                                  ? trackIndex
                                  : index;
                              bool success = false;
                              if (rIdx >= 0) {
                                final res = await _nativeController!
                                    .switchAudioByIndices(
                                      rendererIndex: rIdx,
                                      groupIndex: gIdx,
                                      trackIndex: trIdx,
                                    );
                                success = res['success'] == true;
                                if (!success) {
                                  debugPrint(
                                    'Native override failed: ${res['message'] ?? 'unknown'}',
                                  );
                                }
                              } else {
                                // Fallback to existing method
                                await _nativeController!.switchAudioTrack(
                                  trIdx,
                                  groupIndex: gIdx >= 0 ? gIdx : null,
                                );
                                success = true;
                              }

                              if (!mounted) return;
                              setState(() {
                                _selectedAudioTrack = index;
                              });
                            }
                          } catch (e) {
                            debugPrint('Native switch failed: $e');
                          }
                          if (dialogContext.mounted)
                            Navigator.of(dialogContext).pop();
                        },
                      );
                    },
                  ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildAudioSelector() {
    // If native audio tracks are available (Android native ExoPlayer), prefer
    // presenting those to the user for accurate selection.
    final usingNative =
        Platform.isAndroid &&
        _nativeAudioTracks.isNotEmpty &&
        _nativeController != null &&
        !_useVlcBackend;
    final availableCount = usingNative
        ? _nativeAudioTracks.length
        : (_useVlcBackend
              ? _vlcAudioTrackLabels.length
              : (widget.audioTracks?.length ?? 0));

    if (availableCount == 0) {
      return Center(
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.black.withAlpha((0.9 * 255).round()),
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
          color: Colors.black.withAlpha((0.9 * 255).round()),
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
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(10),
                ),
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
              itemCount: availableCount,
              itemBuilder: (context, index) {
                final isSelected = index == _selectedAudioTrack;

                String title;
                String subtitleText = '';

                if (usingNative) {
                  final info = _nativeAudioTracks[index];
                  title = (info['label'] as String?) ?? 'Audio ${index + 1}';
                  final lang = (info['language'] as String?) ?? '';
                  subtitleText = lang.isNotEmpty ? lang : '';
                } else if (_useVlcBackend &&
                    (widget.audioTracks == null ||
                        widget.audioTracks!.isEmpty)) {
                  title = _vlcAudioTrackLabels.length > index
                      ? _vlcAudioTrackLabels[index]
                      : 'Audio ${index + 1}';
                } else {
                  final track = widget.audioTracks![index];
                  title = track.name;
                  subtitleText = '${track.language} • ${track.codec}';
                }

                return ListTile(
                  selected: isSelected,
                  selectedTileColor: AppTheme.primaryBlue.withAlpha(
                    (0.3 * 255).round(),
                  ),
                  leading: Icon(
                    isSelected ? Icons.check_circle : Icons.circle_outlined,
                    color: isSelected ? AppTheme.primaryBlue : Colors.white70,
                  ),
                  title: Text(
                    title,
                    style: const TextStyle(color: Colors.white),
                  ),
                  subtitle: subtitleText.isNotEmpty
                      ? Text(
                          subtitleText,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                          ),
                        )
                      : null,
                  onTap: () async {
                    setState(() {
                      _selectedAudioTrack = index;
                      _showAudioSelector = false;
                    });

                    if (usingNative) {
                      // If native, pass the native group/track indices if available.
                      final info = _nativeAudioTracks[index];
                      final g = info['groupIndex'] as int?;
                      final t = info['trackIndex'] as int?;
                      try {
                        if (g != null && t != null) {
                          await _nativeController?.switchAudioTrack(
                            t,
                            groupIndex: g,
                          );
                        } else {
                          await _nativeController?.switchAudioTrack(index);
                        }
                      } catch (e) {
                        debugPrint('Native audio switch failed: $e');
                        _switchAudioTrack(index);
                      }
                    } else {
                      _switchAudioTrack(index);
                    }
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
    _subtitleTimer?.cancel();
    try {
      // Video controller may not have been initialized if initialization failed.
      _videoPlayerController.dispose();
    } catch (_) {}
    try {
      _chewieController?.dispose();
    } catch (_) {}
    // VLC controller disposed (disabled)
    _playerFocusNode.dispose();
    super.dispose();
  }

  // --- Simple in-widget subtitle parsing & rendering ---

  /// Parse basic SRT/VTT subtitle content into cues.
  /// This supports common timecode formats like 00:00:01,000 or 00:00:01.000
  List<_SubtitleCue> _parseSubtitles(String data) {
    final cues = <_SubtitleCue>[];
    if (data.trim().isEmpty) return cues;

    // Normalize line endings
    final normalized = data
        .replaceAll('\r\n', '\n')
        .replaceAll('\r', '\n')
        .trim();

    // Split into blocks separated by blank lines
    final blocks = normalized.split(RegExp(r'\n\s*\n'));

    for (var block in blocks) {
      final lines = block
          .split('\n')
          .map((l) => l.trim())
          .where((l) => l.isNotEmpty)
          .toList();
      if (lines.isEmpty) continue;

      int idx = 0;
      // If first line is a numeric index, skip it
      if (RegExp(r'^\d+$').hasMatch(lines[0])) idx = 1;
      if (idx >= lines.length) continue;

      final timeLine = lines[idx];
      if (!timeLine.contains('-->')) continue;

      final parts = timeLine.split(RegExp(r'\s*-->\s*'));
      if (parts.length < 2) continue;

      final start = _parseTimestamp(parts[0]);
      final end = _parseTimestamp(parts[1]);

      final textLines = lines.sublist(idx + 1);
      final text = textLines.join('\n').trim();

      cues.add(_SubtitleCue(start, end, text));
    }

    return cues;
  }

  /// Parse a single timestamp (supports comma or dot millisecond separators).
  Duration _parseTimestamp(String s) {
    var v = s.trim();
    v = v.replaceAll(',', '.');

    final parts = v.split(':').map((p) => p.trim()).toList();
    double seconds = 0.0;

    try {
      if (parts.length == 3) {
        final h = int.tryParse(parts[0]) ?? 0;
        final m = int.tryParse(parts[1]) ?? 0;
        final sec = double.tryParse(parts[2]) ?? 0.0;
        seconds = h * 3600 + m * 60 + sec;
      } else if (parts.length == 2) {
        final m = int.tryParse(parts[0]) ?? 0;
        final sec = double.tryParse(parts[1]) ?? 0.0;
        seconds = m * 60 + sec;
      } else {
        seconds = double.tryParse(parts[0]) ?? 0.0;
      }
    } catch (_) {
      seconds = 0.0;
    }

    return Duration(milliseconds: (seconds * 1000).round());
  }

  Widget _buildSubtitleOverlay() {
    return Positioned(
      bottom: 140,
      left: 16,
      right: 16,
      child: IgnorePointer(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.black.withAlpha((0.6 * 255).round()),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            _currentSubtitleText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
              height: 1.2,
            ),
          ),
        ),
      ),
    );
  }

  /// Attempt to switch audio track. Platforms without an implementation will
  /// gracefully fall back to a no-op with a user-facing message.
  Future<void> _switchAudioTrack(int index) async {
    // VLC backend disabled - audio track switching not available

    // Fallback: attempt platform method (MainActivity stub) so older setups
    // still get an acknowledgement instead of an exception.
    try {
      const platform = MethodChannel('com.streamhub.iptv/audio');
      final result = await platform.invokeMethod('switchAudioTrack', {
        'trackIndex': index,
      });
      debugPrint('Audio track switch result (platform): $result');
      if (!mounted) return;
      showAppSnackBar(
        context,
        const SnackBar(content: Text('Audio track changed')),
      );
    } catch (e) {
      debugPrint('Audio track switching not implemented on this platform: $e');
      // Friendly fallback: notify user we registered their selection.
      if (mounted)
        showAppSnackBar(
          context,
          const SnackBar(content: Text('Audio track change requested')),
        );
    }
  }
}

/// Lightweight subtitle cue model used by the in-widget parser.
class _SubtitleCue {
  final Duration start;
  final Duration end;
  final String text;

  _SubtitleCue(this.start, this.end, this.text);
}

/// Subtitle option model
enum _SubtitleSelectorEntryType { transcription, off, track }

class _SubtitleSelectorEntry {
  final _SubtitleSelectorEntryType type;
  final SubtitleOption? option;
  final int? optionIndex;

  const _SubtitleSelectorEntry._(this.type, {this.option, this.optionIndex});

  const _SubtitleSelectorEntry.transcription()
    : this._(_SubtitleSelectorEntryType.transcription);

  const _SubtitleSelectorEntry.off()
    : this._(_SubtitleSelectorEntryType.off);

  const _SubtitleSelectorEntry.track(SubtitleOption option, int optionIndex)
    : this._(
      _SubtitleSelectorEntryType.track,
      option: option,
      optionIndex: optionIndex,
    );
}

class SubtitleOption {
  final String name;
  final String url;
  final String format; // 'srt', 'vtt', 'webvtt'

  SubtitleOption({required this.name, required this.url, required this.format});
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

// Public parsing helpers (top-level) -----------------------------------------
// These duplicate the parser logic in a test-friendly, top-level form and
// return simple serializable maps so tests can validate results without
// importing private types.

Duration parseTimestampPublic(String s) {
  var v = s.trim();
  v = v.replaceAll(',', '.');

  final parts = v.split(':').map((p) => p.trim()).toList();
  double seconds = 0.0;

  try {
    if (parts.length == 3) {
      final h = int.tryParse(parts[0]) ?? 0;
      final m = int.tryParse(parts[1]) ?? 0;
      final sec = double.tryParse(parts[2]) ?? 0.0;
      seconds = h * 3600 + m * 60 + sec;
    } else if (parts.length == 2) {
      final m = int.tryParse(parts[0]) ?? 0;
      final sec = double.tryParse(parts[1]) ?? 0.0;
      seconds = m * 60 + sec;
    } else {
      seconds = double.tryParse(parts[0]) ?? 0.0;
    }
  } catch (_) {
    seconds = 0.0;
  }

  return Duration(milliseconds: (seconds * 1000).round());
}

List<Map<String, dynamic>> parseSubtitlesPublic(String data) {
  final cues = <Map<String, dynamic>>[];
  if (data.trim().isEmpty) return cues;

  final normalized = data
      .replaceAll('\r\n', '\n')
      .replaceAll('\r', '\n')
      .trim();
  final blocks = normalized.split(RegExp(r'\n\s*\n'));

  for (var block in blocks) {
    final lines = block
        .split('\n')
        .map((l) => l.trim())
        .where((l) => l.isNotEmpty)
        .toList();
    if (lines.isEmpty) continue;

    int idx = 0;
    if (RegExp(r'^\d+$').hasMatch(lines[0])) idx = 1;
    if (idx >= lines.length) continue;

    final timeLine = lines[idx];
    if (!timeLine.contains('-->')) continue;

    final parts = timeLine.split(RegExp(r'\s*-->\s*'));
    if (parts.length < 2) continue;

    final start = parseTimestampPublic(parts[0]);
    final end = parseTimestampPublic(parts[1]);

    final textLines = lines.sublist(idx + 1);
    final text = textLines.join('\n').trim();

    cues.add({'start': start, 'end': end, 'text': text});
  }

  return cues;
}
