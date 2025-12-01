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
import 'package:iptv_player/services/whisper_transcription_service.dart';
import 'package:iptv_player/services/native_capabilities_service.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/screens/multi_view_screen.dart';
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
  final FocusScopeNode _controlsFocusScope = FocusScopeNode();
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

  // Playback speed (for VOD content)
  double _playbackSpeed = 1.0;
  static const List<double> _speedOptions = [0.5, 0.75, 1.0, 1.25, 1.5, 2.0];

  @override
  void initState() {
    super.initState();
    _checkPipSupport();
    _probeNativeExoAvailability();
    _initializePlayer();
    _startControlsTimer();
    
    // Track that this channel is being watched
    if (widget.channel != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final channelProvider = Provider.of<ChannelProvider>(context, listen: false);
        channelProvider.incrementWatchCount(widget.channel!.id);
      });
    }
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

      // Convert HTTPS to HTTP for streams to avoid SSL handshake errors
      // Many IPTV providers have SSL certificate issues
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
        allowFullScreen: true,
        allowMuting: true,
        showControls: false,
        showControlsOnInitialize: false,
        placeholder: null,
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
    _controlsTimer = Timer(const Duration(seconds: 5), () {
      if (mounted) {
        setState(() => _controlsVisible = false);
      }
    });
  }

  void _showControls() {
    setState(() => _controlsVisible = true);
    _startControlsTimer();
    // Move focus to controls overlay
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && _controlsVisible) {
        _controlsFocusScope.requestFocus();
      }
    });
  }

  void _hideControls() {
    _controlsTimer?.cancel();
    setState(() => _controlsVisible = false);
    // Return focus to player (background) to capture hotkeys
    if (mounted) {
      _playerFocusNode.requestFocus();
    }
  }

  void _togglePlayPause() {
    if (!_isInitialized) return;
    try {
      if (_videoPlayerController.value.isPlaying) {
        _videoPlayerController.pause();
      } else {
        _videoPlayerController.play();
      }
    } catch (e) {
      debugPrint('Error toggling play/pause: $e');
    }
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
    } catch (e) {
      debugPrint('Error seeking: $e');
    }
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

    final bool isBackKey = event.logicalKey == LogicalKeyboardKey.escape ||
        event.logicalKey == LogicalKeyboardKey.goBack;

    // Always allow back key to exit the player (even during error state)
    if (isBackKey) {
      // If overlay is visible and no error, hide overlay first
      if (_controlsVisible && !_hasError) {
        _hideControls();
        return;
      }
      // If overlay is not visible and no error, show it first
      if (!_controlsVisible && !_hasError && _isInitialized) {
        _showControls();
        return;
      }
      // If there's an error OR overlay visible, exit the player
      if (_hasError || _controlsVisible) {
        if (widget.isLive && widget.channel != null) {
          context.go(
            '/epg',
            extra: {'channel': widget.channel, 'continuePlayback': true},
          );
        } else {
          Navigator.of(context).pop();
        }
        return;
      }
    }

    // If player not ready yet, ignore other key presses to avoid accessing
    // the controller before initialization.
    if (!_isInitialized) return;

    // For all other keys, show the overlay if hidden
    if (!_controlsVisible) {
      _showControls();
    }

    // Don't process arrow keys if overlay is visible - let them navigate controls
    if (_controlsVisible && (
        event.logicalKey == LogicalKeyboardKey.arrowLeft ||
        event.logicalKey == LogicalKeyboardKey.arrowRight ||
        event.logicalKey == LogicalKeyboardKey.arrowUp ||
        event.logicalKey == LogicalKeyboardKey.arrowDown)) {
      return;
    }

    // When overlay is hidden, up/down should switch channels for live TV
    if (!_controlsVisible && widget.isLive && widget.channel != null) {
      if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
        _switchToPreviousChannel();
        return;
      }
      if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
        _switchToNextChannel();
        return;
      }
    }

    switch (event.logicalKey) {
      case LogicalKeyboardKey.select:
      case LogicalKeyboardKey.enter:
      case LogicalKeyboardKey.space:
        // Play/Pause only if overlay is not visible
        if (!_controlsVisible) {
          try {
            if (_videoPlayerController.value.isPlaying) {
              _videoPlayerController.pause();
            } else {
              _videoPlayerController.play();
            }
          } catch (e) {
            debugPrint('Error toggling play/pause (key): $e');
          }
        }
        break;

      case LogicalKeyboardKey.mediaTrackNext:
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

      case LogicalKeyboardKey.channelUp:
        // Channel up switches to previous channel (lower number)
        if (widget.isLive && widget.channel != null) {
          _switchToPreviousChannel();
        }
        break;

      case LogicalKeyboardKey.mediaTrackPrevious:
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

      case LogicalKeyboardKey.channelDown:
        // Channel down switches to next channel (higher number)
        if (widget.isLive && widget.channel != null) {
          _switchToNextChannel();
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

      // Back key is handled above, before the switch statement
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
        final client = io.HttpClient()
          ..badCertificateCallback = (cert, host, port) => true;
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
    final transcriptionService = Provider.of<WhisperTranscriptionService>(
      context,
      listen: false,
    );

    final bool shouldEnable = forceEnable ?? !_liveTranscriptionEnabled;
    if (shouldEnable == _liveTranscriptionEnabled) {
      return;
    }

    if (shouldEnable) {
      await transcriptionService.startTranscription(streamUrl: widget.videoUrl);
      if (mounted) {
        setState(() {
          _liveTranscriptionEnabled = true;
          _selectedSubtitleIndex = _subtitleIndexTranscription;
          _clearSubtitleCues();
        });
        showAppSnackBar(
          context,
          const SnackBar(
            content: Text(
              'Live transcription enabled — Whisper is listening...',
            ),
            duration: Duration(seconds: 3),
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

  void _cyclePlaybackSpeed() {
    final currentIndex = _speedOptions.indexOf(_playbackSpeed);
    final nextIndex = (currentIndex + 1) % _speedOptions.length;
    final newSpeed = _speedOptions[nextIndex];
    
    setState(() {
      _playbackSpeed = newSpeed;
    });
    
    // Apply to video player
    _videoPlayerController.setPlaybackSpeed(newSpeed);
  }

  String _getSpeedLabel() {
    if (_playbackSpeed == 1.0) return 'Speed';
    return '${_playbackSpeed}x';
  }

  void _openMultiView() {
    if (widget.channel == null) return;
    
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => MultiViewScreen(
          initialChannel: widget.channel,
        ),
      ),
    );
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
    //
    // NOTE: NativeExoPlayer disabled to fix color tint issues on some Android TV devices.
    // The 'fvp' package (registered in main.dart) provides correct color handling via FFmpeg.
    /*
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
    */
    // Default: Chewie/video_player
    if (_chewieController == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return Chewie(controller: _chewieController!);
  }

  // Subtitle overlay removed (subtitle support disabled to avoid platform plugin issues)

  Widget _buildLiveTranscriptionOverlay() {
    return Positioned(
      bottom: 80,
      left: 16,
      right: 16,
      child: Consumer<WhisperTranscriptionService>(
        builder: (context, transcriptionService, _) {
          if (!transcriptionService.isWhisperLoaded) {
            return _buildTranscriptionStatusPill(
              message: 'Download a Whisper model in AI Settings to enable live captions.',
            );
          }

          final text = transcriptionService.latestSubtitles;

          if (!transcriptionService.isTranscribing) {
            // Don't show any message when transcription is off
            return const SizedBox.shrink();
          }

          if (text.isEmpty) {
            return _buildTranscriptionStatusPill(
              message: 'Listening for speech...',
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
                    const Icon(Icons.mic, color: AppTheme.primaryBlue, size: 16),
                    const SizedBox(width: 8),
                    Text(
                      transcriptionService.isTranslating
                          ? 'WHISPER LIVE TRANSLATION'
                          : 'WHISPER LIVE TRANSCRIPTION',
                      style: const TextStyle(
                        color: AppTheme.primaryBlue,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Focus(
                      onKeyEvent: (node, event) {
                        if (event is KeyDownEvent &&
                            (event.logicalKey == LogicalKeyboardKey.select ||
                             event.logicalKey == LogicalKeyboardKey.enter)) {
                          transcriptionService.setTranslationEnabled(
                            !transcriptionService.isTranslating,
                          );
                          return KeyEventResult.handled;
                        }
                        return KeyEventResult.ignored;
                      },
                      child: Builder(
                        builder: (context) {
                          final isFocused = Focus.of(context).hasFocus;
                          return Container(
                            decoration: isFocused
                                ? BoxDecoration(
                                    border: Border.all(color: Colors.white, width: 2),
                                    borderRadius: BorderRadius.circular(20),
                                  )
                                : null,
                            child: IconButton(
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
                                  ? 'Disable on-device translation'
                                  : 'Enable on-device translation',
                              onPressed: () {
                                transcriptionService.setTranslationEnabled(
                                  !transcriptionService.isTranslating,
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ),
                    Focus(
                      onKeyEvent: (node, event) {
                        if (event is KeyDownEvent &&
                            (event.logicalKey == LogicalKeyboardKey.select ||
                             event.logicalKey == LogicalKeyboardKey.enter)) {
                          final srt = transcriptionService.exportAsSRT();
                          Clipboard.setData(ClipboardData(text: srt));
                          showAppSnackBar(
                            context,
                            const SnackBar(
                              content: Text('Transcript copied to clipboard'),
                            ),
                          );
                          return KeyEventResult.handled;
                        }
                        return KeyEventResult.ignored;
                      },
                      child: Builder(
                        builder: (context) {
                          final isFocused = Focus.of(context).hasFocus;
                          return Container(
                            decoration: isFocused
                                ? BoxDecoration(
                                    border: Border.all(color: Colors.white, width: 2),
                                    borderRadius: BorderRadius.circular(20),
                                  )
                                : null,
                            child: IconButton(
                              icon: const Icon(
                                Icons.download,
                                color: Colors.white,
                                size: 18,
                              ),
                              tooltip: 'Export transcript (copy SRT to clipboard)',
                              onPressed: () async {
                                final clipContext = context;
                                try {
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
                          );
                        },
                      ),
                    ),
                    Focus(
                      onKeyEvent: (node, event) {
                        if (event is KeyDownEvent &&
                            (event.logicalKey == LogicalKeyboardKey.select ||
                             event.logicalKey == LogicalKeyboardKey.enter)) {
                          transcriptionService.clearTranscriptions();
                          showAppSnackBar(
                            context,
                            const SnackBar(content: Text('Transcripts cleared')),
                          );
                          return KeyEventResult.handled;
                        }
                        return KeyEventResult.ignored;
                      },
                      child: Builder(
                        builder: (context) {
                          final isFocused = Focus.of(context).hasFocus;
                          return Container(
                            decoration: isFocused
                                ? BoxDecoration(
                                    border: Border.all(color: Colors.white, width: 2),
                                    borderRadius: BorderRadius.circular(20),
                                  )
                                : null,
                            child: IconButton(
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
                          );
                        },
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

  Widget _buildTranscriptionStatusPill({required String message}) {
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
            message,
            style: const TextStyle(color: Colors.white70, fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget _buildControlsOverlay() {
    // Reset timer on any key activity within controls to prevent overlay from hiding during navigation
    return KeyboardListener(
      focusNode: FocusNode(skipTraversal: true),
      onKeyEvent: (event) {
        // Reset the timer on any key press to keep controls visible while navigating
        if (event is KeyDownEvent) {
          _startControlsTimer();
        }
      },
      child: FocusScope(
        node: _controlsFocusScope,
        child: FocusTraversalGroup(
          policy: ReadingOrderTraversalPolicy(),
          child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
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
        ),
      ),
    ),
    );
  }

  Widget _buildTopBar() {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          children: [
            // Back button
            Focus(
              onKeyEvent: (node, event) {
                if (event is KeyDownEvent) {
                  if (event.logicalKey == LogicalKeyboardKey.select ||
                      event.logicalKey == LogicalKeyboardKey.enter) {
                    Navigator.of(context).pop();
                    return KeyEventResult.handled;
                  }
                }
                return KeyEventResult.ignored;
              },
              child: Builder(
                builder: (context) {
                  final isFocused = Focus.of(context).hasFocus;
                  return Container(
                    decoration: isFocused
                        ? BoxDecoration(
                            border: Border.all(color: AppTheme.primaryBlue, width: 2),
                            borderRadius: BorderRadius.circular(24),
                          )
                        : null,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white, size: 32),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(width: 16),
            // Title
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
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
                        fontSize: 14,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            // Guide button (for Live TV)
            if (widget.isLive && widget.channel != null)
              Focus(
                onKeyEvent: (node, event) {
                  if (event is KeyDownEvent) {
                    if (event.logicalKey == LogicalKeyboardKey.select ||
                        event.logicalKey == LogicalKeyboardKey.enter) {
                      context.go(
                        '/epg',
                        extra: {
                          'channel': widget.channel,
                          'continuePlayback': true,
                        },
                      );
                      return KeyEventResult.handled;
                    }
                  }
                  return KeyEventResult.ignored;
                },
                child: Builder(
                  builder: (context) {
                    final isFocused = Focus.of(context).hasFocus;
                    return Container(
                      decoration: isFocused
                          ? BoxDecoration(
                              border: Border.all(color: AppTheme.primaryBlue, width: 2),
                              borderRadius: BorderRadius.circular(24),
                            )
                          : null,
                      child: IconButton(
                        icon: const Icon(Icons.tv_rounded, color: Colors.white, size: 28),
                        tooltip: 'Guide',
                        onPressed: () {
                          context.go(
                            '/epg',
                            extra: {
                              'channel': widget.channel,
                              'continuePlayback': true,
                            },
                          );
                        },
                      ),
                    );
                  },
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
            if (Platform.isAndroid && _nativeController != null)
              Focus(
                onKeyEvent: (node, event) {
                  if (event is KeyDownEvent) {
                    if (event.logicalKey == LogicalKeyboardKey.select ||
                        event.logicalKey == LogicalKeyboardKey.enter) {
                      _loadNativeAudioTracks().then((_) {
                        if (mounted) _showNativeTracksDialog();
                      });
                      return KeyEventResult.handled;
                    }
                  }
                  return KeyEventResult.ignored;
                },
                child: Builder(
                  builder: (context) {
                    final isFocused = Focus.of(context).hasFocus;
                    return Container(
                      decoration: isFocused
                          ? BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(24),
                            )
                          : null,
                      child: IconButton(
                        icon: const Icon(Icons.list, color: Colors.white),
                        onPressed: () async {
                          await _loadNativeAudioTracks();
                          if (!mounted) return;
                          _showNativeTracksDialog();
                        },
                      ),
                    );
                  },
                ),
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
          ],
        ),
      ),
    );
  }

  Widget _buildControlDeck(bool isPlaying) {
    final hasAudioTracks = (widget.audioTracks?.isNotEmpty ?? false) ||
        _nativeAudioTracks.isNotEmpty ||
        (_useVlcBackend && _vlcAudioTrackLabels.isNotEmpty);

    final bool subtitleActive =
        _selectedSubtitleIndex >= 0 ||
        _selectedSubtitleIndex == _subtitleIndexTranscription;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Left side buttons (Subtitles matches Multi-View width, Audio matches PiP width)
          _buildControlButton(
            icon: Icons.subtitles,
            label: 'Subtitles',
            onTap: _openSubtitleSelector,
            isActive: subtitleActive,
            minWidth: 130,  // Match Multi-View
          ),
          const SizedBox(width: 8),
          _buildControlButton(
            icon: Icons.multitrack_audio,
            label: 'Audio',
            onTap: hasAudioTracks ? _openAudioSelector : null,
            isActive: _showAudioSelector,
            isDisabled: !hasAudioTracks,
            minWidth: 90,  // Match PiP
          ),
          const SizedBox(width: 16),
          // Center play controls
          _buildControlButton(
            icon: Icons.replay_10,
            label: '-10s',
            onTap: () => _seekRelative(const Duration(seconds: -10)),
          ),
          const SizedBox(width: 8),
          _buildControlButton(
            icon: isPlaying ? Icons.pause : Icons.play_arrow,
            label: isPlaying ? 'Pause' : 'Play',
            onTap: _togglePlayPause,
          ),
          const SizedBox(width: 8),
          _buildControlButton(
            icon: Icons.forward_10,
            label: '+10s',
            onTap: () => _seekRelative(const Duration(seconds: 10)),
          ),
          const SizedBox(width: 16),
          // Right side buttons (PiP matches Audio width, Speed/Multi-View matches Subtitles width)
          if (_isPipSupported)
            _buildControlButton(
              icon: Icons.picture_in_picture_alt,
              label: 'PiP',
              onTap: _togglePip,
              isActive: _isPipActive,
              minWidth: 90,  // Match Audio
            ),
          if (_isPipSupported)
            const SizedBox(width: 8),
          // Show Multi-View for live TV, Speed for VOD content
          if (widget.channel != null)
            _buildControlButton(
              icon: Icons.grid_view,
              label: 'Multi-View',
              onTap: _openMultiView,
              minWidth: 130,  // Match Subtitles
            )
          else
            _buildControlButton(
              icon: Icons.speed,
              label: _getSpeedLabel(),
              onTap: _cyclePlaybackSpeed,
              isActive: _playbackSpeed != 1.0,
              minWidth: 130,  // Match Subtitles
            ),
        ],
      ),
    );
  }

  Widget _buildControlButton({
    required IconData icon,
    required String label,
    VoidCallback? onTap,
    bool isActive = false,
    bool isDisabled = false,
    double? minWidth,
  }) {
    final borderRadius = BorderRadius.circular(18);
    final gradient = isActive
        ? const LinearGradient(
            colors: [Color(0xFF0057FF), Color(0xFF00C9FF)],
          )
        : null;

    final backgroundColor = Colors.white.withValues(alpha: isActive ? 0.18 : 0.08);

    return Focus(
      onKeyEvent: (node, event) {
        if (event is KeyDownEvent && !isDisabled && onTap != null &&
            (event.logicalKey == LogicalKeyboardKey.select || 
             event.logicalKey == LogicalKeyboardKey.enter)) {
          onTap();
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          return Opacity(
            opacity: isDisabled ? 0.45 : 1.0,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: borderRadius,
                onTap: isDisabled ? null : onTap,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  constraints: minWidth != null ? BoxConstraints(minWidth: minWidth) : null,
                  decoration: BoxDecoration(
                    borderRadius: borderRadius,
                    gradient: gradient,
                    color: backgroundColor,
                    border: Border.all(
                      color: isFocused 
                          ? AppTheme.primaryBlue
                          : Colors.white.withValues(alpha: 0.15),
                      width: isFocused ? 3 : 1,
                    ),
                    boxShadow: isActive || isFocused
                        ? [
                            BoxShadow(
                              color: isFocused ? AppTheme.primaryBlue.withAlpha((0.6 * 255).round()) : const Color(0x550057FF),
                              blurRadius: 18,
                              offset: const Offset(0, 6),
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
                        size: 22,
                      ),
                      if (label.isNotEmpty) ...[
                        const SizedBox(width: 8),
                        Text(
                          label,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          );
        },
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
              decoration: const BoxDecoration(
                color: AppTheme.primaryBlue,
                borderRadius: BorderRadius.vertical(
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
                  Focus(
                    onKeyEvent: (node, event) {
                      if (event is KeyDownEvent &&
                          (event.logicalKey == LogicalKeyboardKey.select ||
                           event.logicalKey == LogicalKeyboardKey.enter)) {
                        setState(() => _showSubtitleSelector = false);
                        return KeyEventResult.handled;
                      }
                      return KeyEventResult.ignored;
                    },
                    child: Builder(
                      builder: (context) {
                        final isFocused = Focus.of(context).hasFocus;
                        return Container(
                          decoration: isFocused
                              ? BoxDecoration(
                                  border: Border.all(color: Colors.white, width: 2),
                                  borderRadius: BorderRadius.circular(20),
                                )
                              : null,
                          child: IconButton(
                            icon: const Icon(Icons.close, color: Colors.white),
                            onPressed: () =>
                                setState(() => _showSubtitleSelector = false),
                          ),
                        );
                      },
                    ),
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
                          if (dialogContext.mounted) {
                            Navigator.of(dialogContext).pop();
                          }
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
              decoration: const BoxDecoration(
                color: AppTheme.primaryBlue,
                borderRadius: BorderRadius.vertical(
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
                  Focus(
                    onKeyEvent: (node, event) {
                      if (event is KeyDownEvent &&
                          (event.logicalKey == LogicalKeyboardKey.select ||
                           event.logicalKey == LogicalKeyboardKey.enter)) {
                        setState(() => _showAudioSelector = false);
                        return KeyEventResult.handled;
                      }
                      return KeyEventResult.ignored;
                    },
                    child: Builder(
                      builder: (context) {
                        final isFocused = Focus.of(context).hasFocus;
                        return Container(
                          decoration: isFocused
                              ? BoxDecoration(
                                  border: Border.all(color: Colors.white, width: 2),
                                  borderRadius: BorderRadius.circular(20),
                                )
                              : null,
                          child: IconButton(
                            icon: const Icon(Icons.close, color: Colors.white),
                            onPressed: () => setState(() => _showAudioSelector = false),
                          ),
                        );
                      },
                    ),
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
      if (mounted) {
        showAppSnackBar(
          context,
          const SnackBar(content: Text('Audio track change requested')),
        );
      }
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
