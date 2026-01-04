import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../models/channel.dart';
import '../models/content.dart';
import '../utils/debug_helper.dart';
import '../utils/app_theme.dart';
import '../utils/snackbar_helper.dart';
import '../widgets/brand_badge.dart';
import '../widgets/cached_image.dart';
import '../widgets/live_subtitle_overlay.dart';
import '../services/integrated_transcription_service.dart';
import 'epg_screen.dart';

import 'package:wakelock_plus/wakelock_plus.dart';
import 'package:video_player/video_player.dart'; // Keep for type if needed, but prefer Universal
import '../controllers/universal_player_controller.dart';
import '../widgets/exo_player_widget.dart';

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
  State<EnhancedVideoPlayerScreen> createState() =>
      _EnhancedVideoPlayerScreenState();
}

class _EnhancedVideoPlayerScreenState extends State<EnhancedVideoPlayerScreen> {
  bool _isLoading = true;
  final ValueNotifier<UniversalPlayerController?> _playerControllerNotifier =
      ValueNotifier(null);
  bool _showControls = true;
  bool _isPlaying = false;
  bool _showGuide = false;
  double _progress = 0.0;
  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;
  BoxFit _videoFit = BoxFit.contain;
  UniversalPlayerController? _playerController;
  VoidCallback? _playerListener;
  Timer? _controlsHideTimer;
  EnhancedSubtitleMode _subtitleMode = EnhancedSubtitleMode.off;

  @override
  void initState() {
    super.initState();
    _playerControllerNotifier.addListener(_handleControllerUpdate);
    _initializePlayer();
  }

  IntegratedTranscriptionService? _transcriptionServiceRef;
  VoidCallback? _transcriptionListener;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final service = Provider.of<IntegratedTranscriptionService>(context);
    if (_transcriptionServiceRef != service) {
      // Remove old listener
      if (_transcriptionServiceRef != null && _transcriptionListener != null) {
        _transcriptionServiceRef!.removeListener(_transcriptionListener!);
      }
      _transcriptionServiceRef = service;
      _transcriptionListener = () {
        if (!mounted) return;
        final url = widget.videoUrl ??
            widget.content?.videoUrl ??
            widget.streamUrl ??
            widget.channel?.url ??
            '';
        if (service.isTranscribing && url.isNotEmpty) {
          // fire-and-forget: start transcription without awaiting here
          // ignore: unawaited_futures
          service.transcribeVideoStream(url);
        } else if (!service.isTranscribing) {
          // fire-and-forget: stopping transcription
          // ignore: unawaited_futures
          service.stopTranscription();
        }
      };
      _transcriptionServiceRef!.addListener(_transcriptionListener!);
    }
  }

  @override
  void dispose() {
    if (_transcriptionServiceRef != null && _transcriptionListener != null) {
      _transcriptionServiceRef!.removeListener(_transcriptionListener!);
    }
    _controlsHideTimer?.cancel();
    _playerControllerNotifier.removeListener(_handleControllerUpdate);
    _detachPlayerController();
    super.dispose();
  }

  Future<void> _initializePlayer() async {
    final url = widget.videoUrl ??
        widget.content?.videoUrl ??
        widget.streamUrl ??
        widget.channel?.url ??
        '';

    debugLog('Video Player: Initializing with URL: $url');
    if (url.isEmpty) {
      if (mounted) {
        setState(() => _isLoading = false);
        _showErrorDialog(
            'Invalid Stream', 'No stream URL provided for this channel.');
      }
      return;
    }

    try {
      // Prepare transcription service and detect any subtitle URL from channel metadata
      final service =
          Provider.of<IntegratedTranscriptionService>(context, listen: false);
      String? subtitleUrl;
      subtitleUrl ??= widget.channel?.attributes != null
          ? widget.channel!.attributes!['subtitleUrl']
          : null;
      subtitleUrl ??= widget.channel?.attributes != null
          ? widget.channel!.attributes!['subtitle']
          : null;

      // Keep wakelock active while playing
      await WakelockPlus.enable();
      _hideControlsAfterDelay();

      // Auto-load VOD subtitles if found (fire-and-forget)
      if (subtitleUrl != null && subtitleUrl.isNotEmpty) {
        try {
          // fire-and-forget loading of VOD subtitles
          // ignore: unawaited_futures
          service.loadSrtFromUrl(subtitleUrl);
        } catch (_) {}
      }

      setState(() => _isLoading = false);
    } catch (e) {
      debugLog('Video Player: Initialization error: $e');
      if (mounted) {
        setState(() => _isLoading = false);
        _showErrorDialog('Initialization Error', 'Failed to initialize player: $e');
      }
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
            autofocus: true,
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Focus(
        autofocus: true,
        onKeyEvent: (node, event) {
          // Show controls on any key event (avoid referencing undefined KeyDownEvent)
          _showControlsAndAutoHide();
          return KeyEventResult.ignored;
        },
        child: GestureDetector(
          onTap: _toggleControls,
          child: _isLoading
              ? const Center(child: CircularProgressIndicator())
              : Stack(
                  children: [
                    // Player fills the available area
                    Positioned.fill(
                      child: ExoPlayerWidget(
                        url: widget.videoUrl ??
                            widget.content?.videoUrl ??
                            widget.streamUrl ??
                            widget.channel?.url ??
                            '',
                        isLive: widget.isLive,
                        transcriptionService:
                            Provider.of<IntegratedTranscriptionService>(context,
                                listen: false),
                        controllerNotifier: _playerControllerNotifier,
                        fit: _videoFit,
                      ),
                    ),
                    // Live subtitle overlay positioned at bottom center
                    if (_subtitleMode == EnhancedSubtitleMode.liveTranslation)
                      Positioned(
                        left: 16,
                        right: 16,
                        bottom: 80,
                        child: LiveSubtitleOverlay(
                          showSubtitles: true,
                        ),
                      ),
                    if (_subtitleMode == EnhancedSubtitleMode.regular)
                      Positioned(
                        left: 16,
                        right: 16,
                        bottom: 80,
                        child: _buildRegularSubtitleOverlay(),
                      ),
                    // Modern streaming controls
                    if (_showControls && !_isLoading) _buildModernControls(),
                    // Guide overlay
                    if (_showGuide) _buildGuideOverlay(),
                  ],
                ),
        ),
      ),
    );
  }

  Widget _buildModernControls() {
    final logoUrl = widget.channel?.logoUrl ?? widget.content?.imageUrl;
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
                    _buildControlButton(
                      icon: Icons.arrow_back,
                      onPressed: () => Navigator.pop(context),
                      size: 24,
                    ),
                    if (logoUrl != null && logoUrl.isNotEmpty) ...[
                      const SizedBox(width: 8),
                      SizedBox(
                        width: 32,
                        height: 32,
                        child: CachedImage(
                          imageUrl: logoUrl,
                          fit: BoxFit.contain,
                          errorWidget: const SizedBox.shrink(),
                        ),
                      ),
                    ],
                    const Spacer(),
                    if (widget.isLive) ...[
                      IconButton(
                        onPressed: _toggleGuide,
                        icon: const Icon(Icons.dvr,
                            color: Colors.white, size: 24),
                      ),
                      const SizedBox(width: 16),
                      SizedBox(
                        height: 32,
                        child: Center(
                          child: const BrandBadge.live(),
                        ),
                      ),
                    ] else
                      IconButton(
                        onPressed: _toggleGuide,
                        icon: const Icon(Icons.dvr,
                            color: Colors.white, size: 24),
                      ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: _buildBottomControls(),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomControls() {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: FocusTraversalGroup(
              policy: WidgetOrderTraversalPolicy(),
              child: Row(
                children: [
                  _buildControlButton(
                    icon: Icons.replay_10,
                    onPressed: _rewind,
                  ),
                  const SizedBox(width: 12),
                  _buildControlButton(
                    icon: _isPlaying ? Icons.pause : Icons.play_arrow,
                    onPressed: _togglePlayPause,
                    autofocus: true,
                  ),
                  const SizedBox(width: 12),
                  _buildControlButton(
                    icon: Icons.forward_10,
                    onPressed: _fastForward,
                  ),
                  const SizedBox(width: 24),
                  _buildControlButton(
                    icon: Icons.audiotrack,
                    onPressed: _toggleAudio,
                  ),
                  const SizedBox(width: 12),
                  _buildControlButton(
                    icon: _subtitleMode == EnhancedSubtitleMode.off
                        ? Icons.subtitles_outlined
                        : Icons.subtitles,
                    onPressed: _showSubtitleMenu,
                  ),
                  const SizedBox(width: 12),
                  _buildControlButton(
                    icon: Icons.grid_view,
                    onPressed: _toggleMultiView,
                  ),
                  const SizedBox(width: 12),
                  _buildControlButton(
                    icon: Icons.aspect_ratio,
                    onPressed: _toggleVideoFit,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: SizedBox(
              height: 4,
              width: double.infinity,
              child: LinearProgressIndicator(
                value: _progress.clamp(0.0, 1.0),
                backgroundColor: Colors.white.withValues(alpha: 0.3),
                valueColor:
                    const AlwaysStoppedAnimation<Color>(AppTheme.primaryBlue),
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildControlButton({
    required IconData icon,
    required VoidCallback onPressed,
    double size = 20,
    bool autofocus = false,
  }) {
    return FocusableActionDetector(
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
          Positioned.fill(
            child: EPGScreen(
              initialChannel: widget.channel,
              continuePlayback: true,
            ),
          ),
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

  void _handleControllerUpdate() {
    final controller = _playerControllerNotifier.value;
    if (controller == _playerController) return;
    _detachPlayerController();
    _playerController = controller;
    if (controller == null) return;
    _playerListener = () {
      final value = controller.value;
      if (!mounted) return;
      setState(() {
        _isPlaying = value.isPlaying;
        _position = value.position;
        _duration = value.duration;
        if (value.duration.inMilliseconds > 0) {
          _progress =
              value.position.inMilliseconds / value.duration.inMilliseconds;
        } else {
          _progress = 0.0;
        }
      });
    };
    controller.addListener(_playerListener!);
  }

  void _detachPlayerController() {
    if (_playerController != null && _playerListener != null) {
      _playerController!.removeListener(_playerListener!);
    }
    _playerController = null;
    _playerListener = null;
  }

  void _hideControlsAfterDelay() {
    _controlsHideTimer?.cancel();
    _controlsHideTimer = Timer(const Duration(seconds: 8), () {
      if (mounted) setState(() => _showControls = false);
    });
  }

  void _showControlsAndAutoHide() {
    if (mounted && !_showControls) {
      setState(() => _showControls = true);
    }
    _hideControlsAfterDelay();
  }

  void _toggleControls() {
    setState(() => _showControls = !_showControls);
    if (_showControls) {
      _hideControlsAfterDelay();
    }
  }

  void _togglePlayPause() {
    final controller = _playerController;
    if (controller == null) return;
    if (controller.value.isPlaying) {
      controller.pause();
    } else {
      controller.play();
    }
    _showControlsAndAutoHide();
  }

  void _rewind() {
    final controller = _playerController;
    if (controller == null) return;
    final next = _position - const Duration(seconds: 10);
    controller.seekTo(next.isNegative ? Duration.zero : next);
    _showControlsAndAutoHide();
  }

  void _fastForward() {
    final controller = _playerController;
    if (controller == null) return;
    final next = _position + const Duration(seconds: 10);
    if (_duration.inMilliseconds > 0 && next > _duration) {
      controller.seekTo(_duration);
    } else {
      controller.seekTo(next);
    }
    _showControlsAndAutoHide();
  }

  void _toggleAudio() {
    showAppSnackBar(
      context,
      const SnackBar(
          content: Text('Audio tracks not available in this player')),
    );
  }

  void _toggleMultiView() {
    if (mounted) context.push('/multi-view');
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
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          _videoFit == BoxFit.contain
              ? 'Scale: Fit'
              : (_videoFit == BoxFit.cover ? 'Scale: Zoom' : 'Scale: Stretch'),
        ),
        duration: const Duration(seconds: 1),
        backgroundColor: Colors.black87,
      ),
    );
  }

  void _showSubtitleMenu() {
    showDialog(
      context: context,
      builder: (context) => _buildSubtitleMenu(),
    );
  }

  void _setSubtitleMode(EnhancedSubtitleMode mode) async {
    setState(() => _subtitleMode = mode);
    final service =
        Provider.of<IntegratedTranscriptionService>(context, listen: false);
    try {
      if (mode == EnhancedSubtitleMode.regular) {
        await service.stopTranscription();
      } else if (mode == EnhancedSubtitleMode.liveTranslation) {
        if (!service.isInitialized) {
          final initialized = await service.initialize();
          if (!initialized) {
            throw Exception('Failed to initialize transcription service');
          }
        }
        service.setTranslationEnabled(true);
        final streamUrl = widget.videoUrl ?? widget.channel?.url;
        if (streamUrl != null) {
          await service.transcribeVideoStream(streamUrl);
        }
      } else {
        await service.stopTranscription();
      }
    } catch (e) {
      debugLog('Transcription error: $e');
      setState(() => _subtitleMode = EnhancedSubtitleMode.off);
      if (mounted) {
        showAppSnackBar(
          context,
          const SnackBar(content: Text('Live translation error')),
        );
      }
    }
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
              _subtitleMode == EnhancedSubtitleMode.off,
              () => _setSubtitleMode(EnhancedSubtitleMode.off),
              autofocus: true,
            ),
            _buildMenuOption(
              'Regular Subtitles',
              Icons.closed_caption_outlined,
              _subtitleMode == EnhancedSubtitleMode.regular,
              _showRegularSubtitlePicker,
            ),
            _buildMenuOption(
              'Live Translation',
              Icons.translate,
              _subtitleMode == EnhancedSubtitleMode.liveTranslation,
              () => _setSubtitleMode(EnhancedSubtitleMode.liveTranslation),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuOption(
      String title, IconData icon, bool selected, VoidCallback onTap,
      {bool autofocus = false}) {
    return FocusableActionDetector(
      autofocus: autofocus,
      actions: <Type, Action<Intent>>{
        ActivateIntent: CallbackAction<ActivateIntent>(
          onInvoke: (intent) {
            Navigator.pop(context);
            onTap();
            return null;
          },
        ),
      },
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          return Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
                onTap();
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                decoration: BoxDecoration(
                  color: isFocused
                      ? Colors.white.withValues(alpha: 0.08)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                  border: isFocused
                      ? Border.all(
                          color: AppTheme.primaryBlue.withValues(alpha: 0.8),
                          width: 1.5,
                        )
                      : null,
                ),
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
                          fontWeight:
                              selected ? FontWeight.w600 : FontWeight.normal,
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
        },
      ),
    );
  }

  void _toggleGuide() {
    setState(() => _showGuide = !_showGuide);
  }

  Future<void> _showRegularSubtitlePicker() async {
    Navigator.pop(context);
    String captionText = '';
    final controller = _playerController;
    // Only StockPlayerController exposes embedded caption text via its rawController.
    if (controller is StockPlayerController) {
      try {
        captionText = controller.rawController.value.caption.text;
      } catch (_) {
        captionText = '';
      }
    }
    if (captionText.isEmpty) {
      showAppSnackBar(
        context,
        const SnackBar(content: Text('No embedded subtitles detected yet')),
      );
      return;
    }
    final selected = await showDialog<bool>(
      context: context,
      builder: (context) => Dialog(
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
                'Embedded Subtitles',
                Icons.closed_caption,
                false,
                () => Navigator.pop(context, true),
                autofocus: true,
              ),
              _buildMenuOption(
                'Cancel',
                Icons.close,
                false,
                () => Navigator.pop(context, false),
              ),
            ],
          ),
        ),
      ),
    );
    if (selected == true) {
      _setSubtitleMode(EnhancedSubtitleMode.regular);
    }
  }

  Widget _buildRegularSubtitleOverlay() {
    String captionText = '';
    final controller = _playerController;
    if (controller is StockPlayerController) {
      captionText = controller.rawController.value.caption.text;
    }
    // Universal doesn't support subtitles for Native yet, handled by Native view?
    // Actually NativeExoPlayer has its own subtitle tracks, but we haven't bridged text rendering to Flutter
    // apart from 'listSubtitleTracks'.
    // Use ClosedCaption only for stock for now.

    if (captionText.isEmpty) {
      return const SizedBox.shrink();
    }
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ClosedCaption(text: captionText),
    );
  }

  // Manual SRT loading removed per user preference; VOD subtitles are automatically
  // used if provided by the content metadata. Function intentionally removed.
}

enum EnhancedSubtitleMode { off, regular, liveTranslation }
