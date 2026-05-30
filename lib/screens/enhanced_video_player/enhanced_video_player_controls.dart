part of '../enhanced_video_player_screen.dart';

extension EnhancedVideoPlayerControls on _EnhancedVideoPlayerScreenState {
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
            onExit: _toggleGuide,
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
    if (mounted) _updatePlayerState(() => _showControls = false);
  });
}

void _showControlsAndAutoHide() {
  if (mounted) {
    _updatePlayerState(() => _showControls = true);
  }
  _hideControlsAfterDelay();
}

void _toggleControls() {
  if (mounted) {
    _updatePlayerState(() => _showControls = !_showControls);
  }
  if (_showControls) {
    _hideControlsAfterDelay();
  }
}

void _togglePlayPause() {
  _showControlsAndAutoHide();
}

void _rewind() {
  _showControlsAndAutoHide();
}

void _fastForward() {
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
  _updatePlayerState(() {
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
  _updatePlayerState(() => _subtitleMode = mode);
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
          _updatePlayerState(() => _subtitleMode = EnhancedSubtitleMode.off);
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
    _updatePlayerState(() => _subtitleMode = EnhancedSubtitleMode.off);
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
  _updatePlayerState(() => _showGuide = !_showGuide);
}

}
