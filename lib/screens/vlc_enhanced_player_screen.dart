import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';
import 'package:iptv_player/services/ai_upscaling_service.dart';
import 'package:iptv_player/services/live_transcription_service.dart';
import 'package:iptv_player/services/opensubtitles_service.dart';
import 'package:iptv_player/services/whisper_transcription_service.dart';
import 'package:iptv_player/services/epg_service.dart';
import 'package:iptv_player/utils/app_theme.dart';

/// VLC-powered enhanced video player with full settings integration
/// Supports: Live TV, VOD, Catchup, Subtitles, Transcription, AI Upscaling
class VlcEnhancedPlayerScreen extends StatefulWidget {
  final String videoUrl;
  final String title;
  final String? subtitle;
  final bool isLive;
  final String? channelId; // For EPG lookups
  final String? imdbId; // For OpenSubtitles lookup
  final int? vodDuration; // Duration in seconds for VOD/Catchup

  const VlcEnhancedPlayerScreen({
    super.key,
    required this.videoUrl,
    required this.title,
    this.subtitle,
    this.isLive = false,
    this.channelId,
    this.imdbId,
    this.vodDuration,
  });

  @override
  State<VlcEnhancedPlayerScreen> createState() =>
      _VlcEnhancedPlayerScreenState();
}

class _VlcEnhancedPlayerScreenState extends State<VlcEnhancedPlayerScreen> {
  VlcPlayerController? _controller;
  bool _isInitialized = false;
  bool _hasError = false;
  String? _errorMessage;

  // TV Remote control
  final FocusNode _playerFocusNode = FocusNode();
  bool _controlsVisible = true;
  Timer? _controlsTimer;

  // Loaded settings from SharedPreferences
  bool _hardwareAcceleration = true;
  String _decoderType = 'Auto';
  String _renderingEngine = 'Auto';
  double _videoBufferSize = 50;
  bool _autoPlayNext = false;

  // OpenSubtitles settings
  bool _openSubtitlesEnabled = false;
  bool _openSubtitlesAutoDownload = false;
  String _preferredSubtitleLanguage = 'en';
  List<SubtitleResult> _availableSubtitles = [];

  // Subtitle state
  List<String> _subtitleTracks = [];
  int _selectedSubtitleTrack = -1;
  bool _showSubtitleSelector = false;

  // Audio state
  List<String> _audioTracks = [];
  int _selectedAudioTrack = 0;
  bool _showAudioSelector = false;

  // Live transcription
  bool _liveTranscriptionEnabled = false;
  String _transcriptionText = '';

  // Picture-in-Picture
  bool _isPipSupported = false;
  bool _isPipActive = false;

  // Auto-play next episode
  Timer? _autoPlayTimer;
  int _autoPlayCountdown = 0;

  @override
  void initState() {
    super.initState();
    _checkPipSupport();
    _loadSettings().then((_) => _initializePlayer());
    _startControlsTimer();
  }

  void _checkPipSupport() {
    if (Platform.isAndroid) {
      _isPipSupported = true;
    }
  }

  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _hardwareAcceleration = prefs.getBool('hardware_acceleration') ?? true;
      _decoderType = prefs.getString('decoder_type') ?? 'Auto';
      _renderingEngine = prefs.getString('rendering_engine') ?? 'Auto';
      _videoBufferSize = prefs.getDouble('video_buffer_size') ?? 50;
      _autoPlayNext = prefs.getBool('auto_play_next') ?? false;

      // OpenSubtitles settings
      _openSubtitlesEnabled = prefs.getBool('opensubtitles_enabled') ?? false;
      _openSubtitlesAutoDownload =
          prefs.getBool('opensubtitles_auto_download') ?? false;
      _preferredSubtitleLanguage = prefs.getString('subtitle_language') ?? 'en';
    });
  }

  HwAcc _getHardwareAcceleration() {
    if (!_hardwareAcceleration) return HwAcc.disabled;

    switch (_decoderType) {
      case 'Hardware':
        return HwAcc.full;
      case 'Software':
        return HwAcc.disabled;
      case 'Auto':
      default:
        return HwAcc.auto;
    }
  }

  Future<void> _initializePlayer() async {
    try {
      final hwAcc = _getHardwareAcceleration();
      // Convert buffer size percentage to milliseconds (0-100% -> 0-3000ms)
      final bufferCache = (_videoBufferSize * 30).round();

      _controller = VlcPlayerController.network(
        widget.videoUrl,
        hwAcc: hwAcc,
        autoPlay: true,
        options: VlcPlayerOptions(
          advanced: VlcAdvancedOptions([
            VlcAdvancedOptions.networkCaching(bufferCache),
            VlcAdvancedOptions.liveCaching(bufferCache),
          ]),
          video: VlcVideoOptions([
            if (_renderingEngine != 'Auto')
              VlcVideoOptions.dropLateFrames(true),
          ]),
          audio: VlcAudioOptions([
            // Audio options if needed
          ]),
          rtp: VlcRtpOptions([VlcRtpOptions.rtpOverRtsp(true)]),
          sout: VlcStreamOutputOptions([
            // Enable recording if needed
          ]),
        ),
      );


  // Read AI upscaling service before awaiting controller initialization to
  // avoid using BuildContext after an async gap (prevents use_build_context_synchronously).
  final aiService = context.read<AIUpscalingService>();

  await _controller!.initialize();

      // Get available subtitle and audio tracks
      final spuCount = await _controller!.getSpuTracksCount() ?? 0;
      final audioCount = await _controller!.getAudioTracksCount() ?? 0;

      _subtitleTracks = spuCount > 0
          ? List.generate(spuCount, (i) => 'Subtitle $i')
          : [];
      _audioTracks = audioCount > 0
          ? List.generate(audioCount, (i) => 'Audio $i')
          : [];

      // Setup auto-play listener for non-live content
      if (!widget.isLive && _autoPlayNext) {
        _controller!.addListener(_checkForVideoEnd);
      }

      // Enable AI upscaling if available
      if (aiService.isModelLoaded) {
        aiService.setEnabled(true);
      }

      // Auto-download subtitles if enabled
      if (_openSubtitlesEnabled &&
          _openSubtitlesAutoDownload &&
          !widget.isLive) {
        _downloadSubtitlesFromOpenSubtitles();
      }

      if (mounted) {
        setState(() {
          _isInitialized = true;
          _hasError = false;
        });
      }
    } catch (e) {
      debugPrint('VLC Player initialization error: $e');
      setState(() {
        _hasError = true;
        _errorMessage = e.toString();
      });
    }
  }

  void _checkForVideoEnd() {
    if (_controller == null) return;

    final position = _controller!.value.position;
    final duration = _controller!.value.duration;

    // Check if we're within 30 seconds of the end
    if (duration - position < const Duration(seconds: 30) &&
        _autoPlayCountdown == 0) {
      _startAutoPlayCountdown();
    }
  }

  void _startAutoPlayCountdown() {
    setState(() => _autoPlayCountdown = 10);

    _autoPlayTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_autoPlayCountdown > 0) {
        setState(() => _autoPlayCountdown--);
      } else {
        timer.cancel();
        _loadNextEpisode();
      }
    });
  }

  void _cancelAutoPlay() {
    _autoPlayTimer?.cancel();
    setState(() => _autoPlayCountdown = 0);
  }

  Future<void> _loadNextEpisode() async {
    // Query EPG service for next episode
    try {
      final epgService = context.read<EpgService>();

      // If we have a channel ID, try to get the next program
      if (widget.channelId != null && widget.channelId!.isNotEmpty) {
        final programs = epgService.getProgramsForChannel(widget.channelId!);

        // Find current program and get next one
        final now = DateTime.now();
        final currentIndex = programs.indexWhere(
          (p) => p.startTime.isBefore(now) && p.endTime.isAfter(now),
        );

        if (currentIndex >= 0 && currentIndex < programs.length - 1) {
          final nextProgram = programs[currentIndex + 1];

          // If next program has catchup available, load it
          if (nextProgram.hasCatchup) {
            if (mounted) {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => VlcEnhancedPlayerScreen(
                    videoUrl: nextProgram.catchupUrl ?? widget.videoUrl,
                    title: nextProgram.title,
                    subtitle: nextProgram.description,
                    isLive: false,
                    channelId: widget.channelId,
                    vodDuration: nextProgram.duration.inSeconds,
                  ),
                ),
              );
              return;
            }
          }
        }
      }

      // If no next episode found, just go back
      if (mounted) {
        Navigator.of(context).pop();
      }
    } catch (e) {
      debugPrint('Error loading next episode: $e');
      if (mounted) {
        Navigator.of(context).pop();
      }
    }
  }

  @override
  void dispose() {
    _controlsTimer?.cancel();
    _autoPlayTimer?.cancel();
    _playerFocusNode.dispose();
    _controller?.removeListener(_checkForVideoEnd);
    _controller?.dispose();
    super.dispose();
  }

  void _startControlsTimer() {
    _controlsTimer?.cancel();
    setState(() => _controlsVisible = true);
    _controlsTimer = Timer(const Duration(seconds: 3), () {
      if (mounted && !_showSubtitleSelector && !_showAudioSelector) {
        setState(() => _controlsVisible = false);
      }
    });
  }

  void _togglePlayPause() {
    if (_controller == null) return;

    if (_controller!.value.isPlaying) {
      _controller!.pause();
    } else {
      _controller!.play();
    }
    _startControlsTimer();
  }

  void _seek(Duration offset) {
    if (_controller == null) return;

    final currentPosition = _controller!.value.position;
    final newPosition = currentPosition + offset;
    _controller!.seekTo(newPosition);
    _startControlsTimer();
  }

  Future<void> _togglePip() async {
    if (!_isPipSupported) return;

    try {
      if (_isPipActive) {
        // Exit PiP - handled by platform
        setState(() => _isPipActive = false);
      } else {
        // Enter PiP mode
        await _enterAndroidPip();
        setState(() => _isPipActive = true);
      }
    } catch (e) {
      debugPrint('PiP error: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Picture-in-Picture not available: $e')),
        );
      }
    }
  }

  Future<void> _enterAndroidPip() async {
    // Implement Android platform channel for PiP
    if (!Platform.isAndroid) {
      throw UnsupportedError('PiP is only supported on Android');
    }

    try {
      const platform = MethodChannel('com.iptv.player/pip');
      final bool result = await platform.invokeMethod('enterPipMode');

      if (!result) {
        throw Exception('Failed to enter PiP mode');
      }
    } on PlatformException catch (e) {
      debugPrint('PiP platform error: ${e.message}');
      throw Exception('PiP not available: ${e.message}');
    } catch (e) {
      debugPrint('PiP error: $e');
      rethrow;
    }
  }

  void _handleKeyPress(KeyEvent event) {
    if (event is! KeyDownEvent) return;

    _startControlsTimer();

    switch (event.logicalKey) {
      case LogicalKeyboardKey.select:
      case LogicalKeyboardKey.enter:
      case LogicalKeyboardKey.space:
        _togglePlayPause();
        break;
      case LogicalKeyboardKey.arrowLeft:
        _seek(const Duration(seconds: -10));
        break;
      case LogicalKeyboardKey.arrowRight:
        _seek(const Duration(seconds: 10));
        break;
      case LogicalKeyboardKey.arrowUp:
        setState(() => _showSubtitleSelector = true);
        break;
      case LogicalKeyboardKey.arrowDown:
        setState(() => _showAudioSelector = true);
        break;
      case LogicalKeyboardKey.keyC:
        // Toggle subtitles on/off
        if (_selectedSubtitleTrack >= 0) {
          setState(() => _selectedSubtitleTrack = -1);
          _controller?.setSpuTrack(-1);
        }
        break;
      case LogicalKeyboardKey.keyT:
        // Toggle transcription
        setState(() => _liveTranscriptionEnabled = !_liveTranscriptionEnabled);
        if (_liveTranscriptionEnabled) {
          _startTranscription();
        } else {
          _stopTranscription();
        }
        break;
      case LogicalKeyboardKey.keyP:
        if (_isPipSupported) _togglePip();
        break;
      case LogicalKeyboardKey.escape:
      case LogicalKeyboardKey.goBack:
        Navigator.of(context).pop();
        break;
    }
  }

  void _startTranscription() {
    try {
      // Use the Whisper on-device transcription service if available
      final whisperService = context.read<WhisperTranscriptionService>();

      if (whisperService.isWhisperLoaded) {
        // Set up transcription callback
        whisperService.addListener(_onTranscriptionUpdate);

        // Start transcription with audio capture from video stream
        whisperService.startTranscription();

        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Live transcription started'),
              duration: Duration(seconds: 2),
            ),
          );
        }
      } else {
        // Fallback to live transcription service
        final service = context.read<LiveTranscriptionService>();
        service.startTranscription();

        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Live transcription started (online mode)'),
              duration: Duration(seconds: 2),
            ),
          );
        }
      }
    } catch (e) {
      debugPrint('Error starting transcription: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to start transcription: $e'),
            backgroundColor: AppTheme.accentRed,
          ),
        );
      }
    }
  }

  void _onTranscriptionUpdate() {
    final whisperService = context.read<WhisperTranscriptionService>();
    setState(() {
      _transcriptionText = whisperService.latestSubtitles;
    });
  }

  void _stopTranscription() {
    try {
      final whisperService = context.read<WhisperTranscriptionService>();
      if (whisperService.isWhisperLoaded) {
        whisperService.removeListener(_onTranscriptionUpdate);
        whisperService.stopTranscription();
      } else {
        final service = context.read<LiveTranscriptionService>();
        service.stopTranscription();
      }

      setState(() {
        _liveTranscriptionEnabled = false;
        _transcriptionText = '';
      });
    } catch (e) {
      debugPrint('Error stopping transcription: $e');
    }
  }

  Future<void> _downloadSubtitlesFromOpenSubtitles() async {
    final openSubtitles = context.read<OpenSubtitlesService>();
    String query = widget.title;
    if (widget.imdbId != null && widget.imdbId!.isNotEmpty) {
      _availableSubtitles = await openSubtitles.searchByImdbId(
        widget.imdbId!,
        languageCode: _preferredSubtitleLanguage,
      );
    } else {
      _availableSubtitles = await openSubtitles.searchByQuery(
        query,
        languageCode: _preferredSubtitleLanguage,
      );
    }
    if (_availableSubtitles.isNotEmpty) {
      // Download first subtitle
      final subtitle = _availableSubtitles.first;
      final subtitleData = await openSubtitles.downloadSubtitle(
        subtitle.fileId,
      );
      if (subtitleData != null) {
        // Save to temp file
        final tempDir = await getTemporaryDirectory();
        final filePath =
            '${tempDir.path}/subtitle_${DateTime.now().millisecondsSinceEpoch}.srt';
        final file = File(filePath);
        await file.writeAsString(subtitleData);
        // Load into VLC
        await _controller?.addSubtitleFromFile(
          File(filePath),
          isSelected: true,
        );
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
            if (_isInitialized && !_hasError && _controller != null)
              Center(
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: VlcPlayer(
                    controller: _controller!,
                    aspectRatio: 16 / 9,
                    placeholder: Container(
                      color: Colors.black,
                      child: const Center(child: CircularProgressIndicator()),
                    ),
                  ),
                ),
              ),

            // Loading state
            if (!_isInitialized && !_hasError)
              const Center(child: CircularProgressIndicator()),

            // Error state
            if (_hasError)
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.error_outline,
                        size: 64,
                        color: AppTheme.accentRed,
                      ),
                      const SizedBox(height: 24),
                      Text(
                        'Failed to load video',
                        style: Theme.of(context).textTheme.headlineSmall
                            ?.copyWith(color: Colors.white),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        _errorMessage ?? 'Unknown error',
                        textAlign: TextAlign.center,
                        style: Theme.of(
                          context,
                        ).textTheme.bodyLarge?.copyWith(color: Colors.white70),
                      ),
                      const SizedBox(height: 32),
                      ElevatedButton.icon(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(Icons.arrow_back),
                        label: const Text('Go Back'),
                      ),
                    ],
                  ),
                ),
              ),

            // Transcription overlay
            if (_liveTranscriptionEnabled && _transcriptionText.isNotEmpty)
              Positioned(
                bottom: 100,
                left: 16,
                right: 16,
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.black.withAlpha((0.7 * 255).round()),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    _transcriptionText,
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

            // Auto-play countdown
            if (_autoPlayCountdown > 0)
              Positioned(
                bottom: 100,
                right: 16,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.black.withAlpha((0.8 * 255).round()),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'Next episode in',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        '$_autoPlayCountdown',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: _cancelAutoPlay,
                        child: const Text('Cancel'),
                      ),
                    ],
                  ),
                ),
              ),

            // Controls overlay
            if (_controlsVisible) _buildControlsOverlay(),

            // Subtitle selector
            if (_showSubtitleSelector) _buildSubtitleSelector(),

            // Audio selector
            if (_showAudioSelector) _buildAudioSelector(),
          ],
        ),
      ),
    );
  }

  Widget _buildControlsOverlay() {
    return SafeArea(
      child: Column(
        children: [_buildTopBar(), const Spacer(), _buildBottomBar()],
      ),
    );
  }

  Widget _buildTopBar() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.black.withAlpha((0.7 * 255).round()), Colors.transparent],
        ),
      ),
      child: Row(
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
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (widget.subtitle != null)
                  Text(
                    widget.subtitle!,
                    style: const TextStyle(color: Colors.white70, fontSize: 14),
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
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: AppTheme.primaryBlue,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Row(
                  children: [
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
              icon: const Icon(
                Icons.picture_in_picture_alt,
                color: Colors.white,
              ),
              onPressed: _togglePip,
            ),
        ],
      ),
    );
  }

  Widget _buildBottomBar() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [Colors.black.withAlpha((0.7 * 255).round()), Colors.transparent],
        ),
      ),
      child: Wrap(
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
    );
  }

  Widget _buildHint(String key, String action) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white.withAlpha((0.2 * 255).round()),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Colors.white.withAlpha((0.3 * 255).round())),
      ),
      child: Text(
        '$key: $action',
        style: const TextStyle(color: Colors.white, fontSize: 12),
      ),
    );
  }

  Widget _buildSubtitleSelector() {
    final options = ['Off', ..._subtitleTracks];

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
              itemCount: options.length,
              itemBuilder: (context, index) {
                final isSelected = index == _selectedSubtitleTrack + 1;

                return ListTile(
                  selected: isSelected,
                  selectedTileColor: AppTheme.primaryBlue.withAlpha((0.3 * 255).round()),
                  leading: Icon(
                    isSelected ? Icons.check_circle : Icons.circle_outlined,
                    color: isSelected ? AppTheme.primaryBlue : Colors.white70,
                  ),
                  title: Text(
                    options[index],
                    style: const TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    setState(() {
                      _selectedSubtitleTrack = index - 1;
                      _showSubtitleSelector = false;
                    });
                    _controller?.setSpuTrack(_selectedSubtitleTrack);
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
    if (_audioTracks.isEmpty) {
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
              itemCount: _audioTracks.length,
              itemBuilder: (context, index) {
                final isSelected = index == _selectedAudioTrack;

                return ListTile(
                  selected: isSelected,
                  selectedTileColor: AppTheme.primaryBlue.withAlpha((0.3 * 255).round()),
                  leading: Icon(
                    isSelected ? Icons.check_circle : Icons.circle_outlined,
                    color: isSelected ? AppTheme.primaryBlue : Colors.white70,
                  ),
                  title: Text(
                    _audioTracks[index],
                    style: const TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    setState(() {
                      _selectedAudioTrack = index;
                      _showAudioSelector = false;
                    });
                    _controller?.setAudioTrack(index);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Stub classes for compatibility
class SubtitleOption {
  final String name;
  final String url;
  final String format;

  SubtitleOption({required this.name, required this.url, required this.format});
}

class AudioTrackOption {
  final String name;
  final String language;

  AudioTrackOption({required this.name, required this.language});
}
