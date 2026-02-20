import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../models/channel.dart';
import '../utils/debug_helper.dart';
import '../utils/app_theme.dart';
import '../utils/snackbar_helper.dart';
import '../widgets/brand_badge.dart';
import '../widgets/live_subtitle_overlay.dart';
import '../services/integrated_transcription_service.dart';
import '../widgets/native_exo_player_widget.dart';
import '../blocs/epg_bloc.dart';
import 'epg_screen.dart';

import 'package:wakelock_plus/wakelock_plus.dart';
import 'package:go_router/go_router.dart';
import '../utils/memory_manager.dart';

class EnhancedVideoPlayerScreen extends StatefulWidget {
  final Channel? channel;
  final String? streamUrl;
  final String? videoUrl;
  final String? title;
  final String? subtitle;
  final bool isLive;

  const EnhancedVideoPlayerScreen({
    super.key,
    this.channel,
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
  final FocusNode _playerFocusNode = FocusNode(debugLabel: 'video_player_focus');
  final GlobalKey<NativeExoPlayerWidgetState> _exoPlayerKey = GlobalKey<NativeExoPlayerWidgetState>();
  bool _isLoading = true;
  bool _showControls = true;
  bool _isPlaying = true;
  bool _showGuide = false;
  final double _progress = 0.0;
  BoxFit _videoFit = BoxFit.contain;
  Timer? _controlsHideTimer;
  EnhancedSubtitleMode _subtitleMode = EnhancedSubtitleMode.off;
  bool _playerReady = false;
  bool _playerLoadScheduled = false;
  final bool _videoUnavailable = false;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
    _schedulePlayerWarmup();
    // Suppress EPG notifyListeners() during playback to prevent UI rebuilds
    // that cause frame drops while video is playing.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        FocusScope.of(context).requestFocus(_playerFocusNode);
        try {
          context.read<EpgBloc>().add(const EpgSetPlaybackMode(true));
        } catch (_) {}
      }
    });
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
    // Re-enable EPG notifications when leaving the player
    try {
      context.read<EpgBloc>().add(const EpgSetPlaybackMode(false));
    } catch (_) {}
    _playerFocusNode.dispose();
    try {
      if (_transcriptionServiceRef != null && _transcriptionListener != null) {
        _transcriptionServiceRef!.removeListener(_transcriptionListener!);
      }
      _controlsHideTimer?.cancel();
    } catch (e) {
      debugLog('Error disposing video player: $e');
    }
    super.dispose();
  }

  Future<void> _initializePlayer() async {
    final url = widget.videoUrl ??
        widget.streamUrl ??
        widget.channel?.url ??
        '';

    debugLog('=== VIDEO PLAYER INIT START ===');
    debugLog('Video Player: Initializing with URL: $url');
    debugLog('isLive: ${widget.isLive}');
    debugLog('Channel: ${widget.channel?.name ?? "none"}');
    logToSystem('PLAYER INIT: $url', name: 'RisaPlayer');
    
    if (url.isEmpty) {
      debugLog('=== VIDEO PLAYER INIT FAILED: Empty URL ===');
      if (mounted) {
        setState(() => _isLoading = false);
        _showErrorDialog(
            'Invalid Stream', 'No stream URL provided for this channel.');
      }
      return;
    }

    try {
      await WakelockPlus.enable();
      _hideControlsAfterDelay();

      if (mounted) {
        setState(() => _isLoading = false);
      }
      debugLog('=== VIDEO PLAYER INIT COMPLETE ===');
    } catch (e, st) {
      debugLog('=== VIDEO PLAYER INIT ERROR ===');
      debugLog('Video Player: Initialization error: $e');
      debugLog('Stack: $st');
      logToSystem('PLAYER INIT ERROR: $e', name: 'RisaPlayer');
      if (mounted) {
        setState(() => _isLoading = false);
        _showErrorDialog('Initialization Error', 'Failed to initialize player: $e');
      }
    }
  }

  void _schedulePlayerWarmup() {
    if (_playerLoadScheduled) return;
    _playerLoadScheduled = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      MemoryManager.checkMemoryPressure();
      MemoryManager.scheduleCleanup();
      setState(() => _playerReady = true);
    });
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
        focusNode: _playerFocusNode,
        autofocus: true,
        onKeyEvent: (node, event) {
          if (event is KeyDownEvent) {
            if (event.logicalKey == LogicalKeyboardKey.select ||
                event.logicalKey == LogicalKeyboardKey.enter ||
                event.logicalKey == LogicalKeyboardKey.space) {
              _toggleControls();
              return KeyEventResult.handled;
            }
          }
          // Show controls on any key event
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
                    if (_playerReady)
                      Positioned.fill(
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            // Use NativeExoPlayerWidget for IPTV buffer configuration
                              NativeExoPlayerWidget(
                                key: _exoPlayerKey,
                                url: widget.videoUrl ??
                                    widget.streamUrl ??
                                    widget.channel?.url ??
                                    '',
                                isLive: widget.isLive,
                                onStateChanged: (state) {
                                  if (mounted) {
                                    setState(() {
                                      _isPlaying = state != 'ended' && state != 'idle';
                                    });
                                  }
                                },
                              ),
                            if (_videoUnavailable)
                              Positioned.fill(
                                child: Container(
                                  color: Colors.black,
                                  child: Center(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(Icons.broken_image,
                                            size: 96, color: Colors.white24),
                                        const SizedBox(height: 12),
                                        Text(
                                          'No video frames',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge
                                              ?.copyWith(color: Colors.white70),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      )
                    else
                      const Positioned.fill(
                        child: Center(
                          child: CircularProgressIndicator(),
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
    return Positioned.fill(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withValues(alpha: 0.8),
              Colors.transparent,
              Colors.transparent,
              Colors.black.withValues(alpha: 0.8),
            ],
            stops: const [0.0, 0.2, 0.8, 1.0], // Adjusted stops
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 8,
                  right: 24,
                  bottom: 16,
                ),
                child: Row(
                  children: [
                    _buildControlButton(
                      icon: Icons.arrow_back,
                      onPressed: () {
                        if (Navigator.canPop(context)) {
                          Navigator.pop(context);
                        } else {
                          // Fallback to home if no history
                          GoRouter.of(context).go('/home');
                        }
                      },
                      size: 28,
                    ),
                    const Spacer(),
                    if (widget.isLive) ...[
                      _buildControlButton(
                        icon: Icons.dvr,
                        onPressed: _toggleGuide,
                        size: 24,
                      ),
                      const SizedBox(width: 12),
                      const BrandBadge.live(),
                    ] else
                      _buildControlButton(
                        icon: Icons.dvr,
                        onPressed: _toggleGuide,
                        size: 24,
                      ),
                  ],
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

  void _hideControlsAfterDelay() {
    _controlsHideTimer?.cancel();
    _controlsHideTimer = Timer(const Duration(seconds: 8), () {
      if (mounted) setState(() => _showControls = false);
    });
  }

  void _showControlsAndAutoHide() {
    if (mounted) {
      setState(() => _showControls = true);
    }
    _hideControlsAfterDelay();
  }

  void _toggleControls() {
    if (mounted) {
      setState(() => _showControls = !_showControls);
    }
    if (_showControls) {
      _hideControlsAfterDelay();
    }
  }

  void _togglePlayPause() {
    _exoPlayerKey.currentState?.playOrPause();
    _showControlsAndAutoHide();
  }

  void _rewind() {
    _exoPlayerKey.currentState?.seekBackward(10);
    _showControlsAndAutoHide();
  }

  void _fastForward() {
    _exoPlayerKey.currentState?.seekForward(10);
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
    showAppSnackBar(
      context,
      const SnackBar(content: Text('Multi-view temporarily disabled')),
    );
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
          if (service.lastError.isNotEmpty && mounted) {
            setState(() => _subtitleMode = EnhancedSubtitleMode.off);
            showAppSnackBar(
              context,
              SnackBar(content: Text(service.lastError)),
            );
            return;
          }
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
    // VLC doesn't expose embedded captions through this UI yet.
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
    // VLC handles subtitles internally
    return const SizedBox.shrink();
  }

}

enum EnhancedSubtitleMode { off, regular, liveTranslation }
