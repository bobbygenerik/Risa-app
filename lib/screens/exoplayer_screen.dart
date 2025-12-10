import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iptv_player/widgets/native_exoplayer.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/providers/channel_provider.dart';

/// ExoPlayer-based video player for Android TV
/// Fixes color tint issues on Nvidia Shield and other Android TV devices
class ExoPlayerScreen extends StatefulWidget {
  final String videoUrl;
  final String title;
  final String? subtitle;
  final bool isLive;
  final Channel? channel;

  const ExoPlayerScreen({
    super.key,
    required this.videoUrl,
    required this.title,
    this.subtitle,
    this.isLive = false,
    this.channel,
  });

  @override
  State<ExoPlayerScreen> createState() => _ExoPlayerScreenState();
}

class _ExoPlayerScreenState extends State<ExoPlayerScreen> {
  NativeExoPlayerController? _controller;
  bool _isInitialized = false;
  bool _controlsVisible = true;
  Timer? _controlsTimer;
  final FocusNode _playerFocusNode = FocusNode();
  
  int _currentPosition = 0;
  int _duration = 0;
  Timer? _positionTimer;
  
  List<Map<String, dynamic>> _audioTracks = [];
  int _selectedAudioTrack = 0;
  bool _showAudioSelector = false;

  @override
  void initState() {
    super.initState();
    _playerFocusNode.requestFocus();
    _startControlsTimer();
    
    // Track channel viewing
    if (widget.channel != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final channelProvider = Provider.of<ChannelProvider>(context, listen: false);
        channelProvider.incrementWatchCount(widget.channel!.id);
      });
    }
    
    // Start position updates
    _startPositionTimer();
  }

  void _onPlayerCreated(NativeExoPlayerController controller) {
    _controller = controller;
    setState(() => _isInitialized = true);
    
    // Load audio tracks
    _loadAudioTracks();
  }

  Future<void> _loadAudioTracks() async {
    if (_controller == null) return;
    try {
      final tracks = await _controller!.listAudioTracks();
      if (mounted) {
        setState(() => _audioTracks = tracks);
      }
    } catch (e) {
      debugPrint('Error loading audio tracks: $e');
    }
  }

  void _startPositionTimer() {
    _positionTimer?.cancel();
    _positionTimer = Timer.periodic(const Duration(seconds: 1), (_) async {
      if (_controller != null && mounted) {
        try {
          final pos = await _controller!.getPosition();
          final dur = await _controller!.getDuration();
          if (mounted) {
            setState(() {
              _currentPosition = pos;
              _duration = dur;
            });
          }
        } catch (e) {
          // Ignore errors
        }
      }
    });
  }

  void _startControlsTimer() {
    _controlsTimer?.cancel();
    _controlsTimer = Timer(const Duration(seconds: 4), () {
      if (mounted) {
        setState(() => _controlsVisible = false);
      }
    });
  }

  void _showControls() {
    if (!_controlsVisible) {
      setState(() => _controlsVisible = true);
    }
    _startControlsTimer();
  }

  KeyEventResult _handleKeyPress(FocusNode node, KeyEvent event) {
    if (event is! KeyDownEvent) return KeyEventResult.ignored;

    final key = event.logicalKey;

    // Back/Escape - Exit player
    if (key == LogicalKeyboardKey.escape || key == LogicalKeyboardKey.goBack) {
      Navigator.of(context).pop();
      return KeyEventResult.handled;
    }

    // Show controls on any key press if hidden
    if (!_controlsVisible) {
      _showControls();
      return KeyEventResult.handled; // Consume the key so first press just shows overlay
    }

    // Controls are visible - refresh timer and process command
    _startControlsTimer();

    // Play/Pause
    if (key == LogicalKeyboardKey.select ||
        key == LogicalKeyboardKey.enter ||
        key == LogicalKeyboardKey.space ||
        key == LogicalKeyboardKey.mediaPlayPause) {
      // Toggle play/pause (for now just pause since we auto-play)
      _controller?.pause();
      return KeyEventResult.handled;
    }

    // Seek backward
    if (key == LogicalKeyboardKey.arrowLeft || key == LogicalKeyboardKey.mediaRewind) {
      _controller?.seekTo((_currentPosition - 10000).clamp(0, _duration));
      return KeyEventResult.handled;
    }

    // Seek forward
    if (key == LogicalKeyboardKey.arrowRight || key == LogicalKeyboardKey.mediaFastForward) {
      _controller?.seekTo((_currentPosition + 10000).clamp(0, _duration));
      return KeyEventResult.handled;
    }

    // Audio tracks
    if (key == LogicalKeyboardKey.keyA) {
      setState(() => _showAudioSelector = !_showAudioSelector);
      return KeyEventResult.handled;
    }

    return KeyEventResult.ignored;
  }

  String _formatDuration(int milliseconds) {
    final seconds = milliseconds ~/ 1000;
    final minutes = seconds ~/ 60;
    final hours = minutes ~/ 60;
    
    if (hours > 0) {
      return '$hours:${(minutes % 60).toString().padLeft(2, '0')}:${(seconds % 60).toString().padLeft(2, '0')}';
    }
    return '$minutes:${(seconds % 60).toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Focus(
        focusNode: _playerFocusNode,
        autofocus: true,
        onKeyEvent: _handleKeyPress,
        child: Stack(
          children: [
            // Video player
            if (Platform.isAndroid)
              NativeExoPlayer(
                videoUrl: widget.videoUrl,
                autoPlay: true,
                onCreated: _onPlayerCreated,
              )
            else
              const Center(
                child: Text(
                  'ExoPlayer is only available on Android',
                  style: TextStyle(color: Colors.white),
                ),
              ),

            // Loading overlay
            if (!_isInitialized)
              Container(
                color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/croppedlogo2.png',
                      height: 120,
                      fit: BoxFit.contain,
                      errorBuilder: (_, __, ___) => const Icon(
                        Icons.play_circle_outline,
                        size: 120,
                        color: AppTheme.primaryBlue,
                      ),
                    ),
                    const SizedBox(height: 32),
                    Text(
                      widget.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    if (widget.subtitle != null) ...[
                      const SizedBox(height: 8),
                      Text(
                        widget.subtitle!,
                        style: const TextStyle(color: Colors.white70, fontSize: 16),
                      ),
                    ],
                    const SizedBox(height: 32),
                    const CircularProgressIndicator(color: AppTheme.primaryBlue),
                    const SizedBox(height: 16),
                    const Text(
                      'Loading stream...',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ),

            // Controls overlay
            if (_controlsVisible && _isInitialized)
              GestureDetector(
                onTap: () => setState(() => _controlsVisible = false),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withValues(alpha: 0.7),
                        Colors.transparent,
                        Colors.transparent,
                        Colors.black.withValues(alpha: 0.7),
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Top bar
                      SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: [
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
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),

                      // Bottom controls
                      SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              // Progress bar (only for VOD)
                              if (!widget.isLive && _duration > 0)
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          _formatDuration(_currentPosition),
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),
                                        ),
                                        Expanded(
                                          child: Slider(
                                            value: _currentPosition.toDouble(),
                                            max: _duration.toDouble(),
                                            activeColor: AppTheme.primaryBlue,
                                            inactiveColor: Colors.white30,
                                            onChanged: (value) {
                                              _controller?.seekTo(value.toInt());
                                            },
                                          ),
                                        ),
                                        Text(
                                          _formatDuration(_duration),
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8),
                                  ],
                                ),
                              
                              // Control hints
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.arrow_back, color: Colors.white70, size: 16),
                                  SizedBox(width: 4),
                                  Text(
                                    'Rewind',
                                    style: TextStyle(color: Colors.white70, fontSize: 12),
                                  ),
                                  SizedBox(width: 24),
                                  Icon(Icons.arrow_forward, color: Colors.white70, size: 16),
                                  SizedBox(width: 4),
                                  Text(
                                    'Forward',
                                    style: TextStyle(color: Colors.white70, fontSize: 12),
                                  ),
                                  SizedBox(width: 24),
                                  Text(
                                    'A',
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    'Audio',
                                    style: TextStyle(color: Colors.white70, fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            // Audio track selector
            if (_showAudioSelector && _audioTracks.isNotEmpty)
              Center(
                child: Container(
                  width: 400,
                  constraints: const BoxConstraints(maxHeight: 500),
                  decoration: BoxDecoration(
                    color: AppTheme.dialogBackground,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Audio Track',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.close, color: Colors.white),
                              onPressed: () => setState(() => _showAudioSelector = false),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: _audioTracks.length,
                          itemBuilder: (context, index) {
                            final track = _audioTracks[index];
                            final label = track['label'] ?? 'Track ${index + 1}';
                            final language = track['language'] ?? '';
                            final isSelected = index == _selectedAudioTrack;
                            
                            return ListTile(
                              leading: Icon(
                                isSelected ? Icons.check_circle : Icons.circle_outlined,
                                color: isSelected ? AppTheme.primaryBlue : Colors.white70,
                              ),
                              title: Text(
                                label,
                                style: const TextStyle(color: Colors.white),
                              ),
                              subtitle: language.isNotEmpty
                                  ? Text(
                                      language,
                                      style: const TextStyle(color: Colors.white70, fontSize: 12),
                                    )
                                  : null,
                              onTap: () async {
                                final groupIndex = track['groupIndex'] as int?;
                                final trackIndex = track['trackIndex'] as int?;
                                
                                if (groupIndex != null && trackIndex != null) {
                                  await _controller?.switchAudioByIndices(
                                    rendererIndex: 1, // Audio renderer
                                    groupIndex: groupIndex,
                                    trackIndex: trackIndex,
                                  );
                                  setState(() {
                                    _selectedAudioTrack = index;
                                    _showAudioSelector = false;
                                  });
                                }
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controlsTimer?.cancel();
    _positionTimer?.cancel();
    _playerFocusNode.dispose();
    super.dispose();
  }
}
