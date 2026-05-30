import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../models/channel.dart';
import '../utils/debug_helper.dart';
import '../utils/url_redactor.dart';
import '../utils/app_theme.dart';
import '../utils/snackbar_helper.dart';
import '../widgets/brand_badge.dart';
import '../widgets/live_subtitle_overlay.dart';
import '../services/integrated_transcription_service.dart';
import '../widgets/chewie_player_widget.dart';
import '../blocs/epg_bloc.dart';
import 'epg_screen.dart';

import 'package:wakelock_plus/wakelock_plus.dart';
import 'package:go_router/go_router.dart';
import '../utils/memory_manager.dart';

part 'enhanced_video_player/enhanced_video_player_lifecycle.dart';
part 'enhanced_video_player/enhanced_video_player_controls.dart';
part 'enhanced_video_player/enhanced_video_player_subtitles.dart';

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
  final FocusNode _playerFocusNode =
      FocusNode(debugLabel: 'video_player_focus');
  bool _isLoading = true;
  bool _showControls = true;
  final bool _isPlaying = true;
  bool _showGuide = false;
  final double _progress = 0.0;
  BoxFit _videoFit = BoxFit.contain;
  Timer? _controlsHideTimer;
  EnhancedSubtitleMode _subtitleMode = EnhancedSubtitleMode.off;

  void _updatePlayerState(VoidCallback fn) {
    if (!mounted) return;
    setState(fn);
  }
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
        final url =
            widget.videoUrl ?? widget.streamUrl ?? widget.channel?.url ?? '';
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
                            // Use Chewie (ExoPlayer backend) on all platforms
                            ChewiePlayerWidget(
                              key: ValueKey(widget.videoUrl ??
                                  widget.streamUrl ??
                                  widget.channel?.url ??
                                  'player_key'),
                              url: widget.videoUrl ??
                                  widget.streamUrl ??
                                  widget.channel?.url ??
                                  '',
                              isLive: widget.isLive,
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
}

enum EnhancedSubtitleMode { off, regular, liveTranslation }

