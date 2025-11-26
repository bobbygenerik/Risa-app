import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/screens/enhanced_video_player_screen.dart';
import 'package:iptv_player/widgets/channel_selection_dialog.dart';

/// Multi-view screen for watching up to 4 streams simultaneously
/// Supports 1, 2, or 4 player grid layouts with audio switching
class MultiViewScreen extends StatefulWidget {
  final List<Channel>? channels;
  final Channel? initialChannel;

  const MultiViewScreen({
    super.key,
    this.channels,
    this.initialChannel,
  });

  @override
  State<MultiViewScreen> createState() => _MultiViewScreenState();
}

class _MultiViewScreenState extends State<MultiViewScreen> {
  late List<Channel> _channelsList;
  final List<VideoPlayerController?> _controllers = [null, null, null, null];
  final List<bool> _isInitialized = [false, false, false, false];
  final List<bool> _hasError = [false, false, false, false];

  int _activeAudioPlayer = 0; // Which player's audio is active
  int _focusedPlayer = 0; // Which player has focus for controls
  final FocusNode _screenFocusNode = FocusNode();

  // Settings loaded from SharedPreferences
  // These fields are persisted for future playback tuning but not yet applied
  // in the multi-view UI, so silence lint until the implementation lands.
  // ignore: unused_field
  double _videoBufferSize = 50;
  // ignore: unused_field
  String _videoQuality = 'Auto';
  // ignore: unused_field
  bool _hardwareAcceleration = true;

  // Layout options
  int _gridSize = 4; // 1, 2, or 4 players
  bool _showControls = true;
  Timer? _controlsTimer;

  @override
  void initState() {
    super.initState();
    // Initialize channels list from either channels or initialChannel
    if (widget.channels != null && widget.channels!.isNotEmpty) {
      _channelsList = widget.channels!;
    } else if (widget.initialChannel != null) {
      _channelsList = [widget.initialChannel!];
    } else {
      _channelsList = [];
    }
    _loadSettings();
    _initializePlayers();
    _startControlsTimer();
  }

  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _hardwareAcceleration = prefs.getBool('hardware_acceleration') ?? true;
      _videoBufferSize = prefs.getDouble('video_buffer_size') ?? 50;
      _videoQuality = prefs.getString('video_quality') ?? 'Auto';
    });
  }

  Future<void> _initializePlayers() async {
    for (int i = 0; i < _channelsList.length && i < 4; i++) {
      try {
        _controllers[i] = VideoPlayerController.networkUrl(
          Uri.parse(_channelsList[i].url),
        );

        await _controllers[i]!.initialize();
        await _controllers[i]!.play();

        // Mute all except the active audio player
        if (i != _activeAudioPlayer) {
          await _controllers[i]!.setVolume(0.0);
        } else {
          await _controllers[i]!.setVolume(1.0);
        }

        setState(() {
          _isInitialized[i] = true;
        });
      } catch (e) {
        debugPrint('Error initializing player $i: $e');
        setState(() {
          _hasError[i] = true;
        });
      }
    }
  }

  @override
  void dispose() {
    _controlsTimer?.cancel();
    _screenFocusNode.dispose();
    for (var controller in _controllers) {
      controller?.dispose();
    }
    super.dispose();
  }

  void _startControlsTimer() {
    _controlsTimer?.cancel();
    setState(() => _showControls = true);
    _controlsTimer = Timer(const Duration(seconds: 3), () {
      if (mounted) {
        setState(() => _showControls = false);
      }
    });
  }

  void _switchAudioPlayer(int index) {
    if (index < 0 || index >= _controllers.length) return;
    if (_controllers[index] == null || !_isInitialized[index]) return;

    // Mute old active player
    _controllers[_activeAudioPlayer]?.setVolume(0.0);

    // Unmute new active player
    _controllers[index]?.setVolume(1.0);

    setState(() {
      _activeAudioPlayer = index;
    });

    _startControlsTimer();
  }

  void _setFocusedPlayer(int index) {
    setState(() {
      _focusedPlayer = index;
    });
    _startControlsTimer();
  }

  void _togglePlayPause(int index) {
    if (_controllers[index] == null) return;

    final isPlaying = _controllers[index]!.value.isPlaying;
    if (isPlaying) {
      _controllers[index]!.pause();
    } else {
      _controllers[index]!.play();
    }
    _startControlsTimer();
  }

  void _expandPlayer(int index) {
    if (index >= _channelsList.length) return;

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => EnhancedVideoPlayerScreen(
          videoUrl: _channelsList[index].url,
          title: _channelsList[index].name,
          isLive: true,
          channel: _channelsList[index],
        ),
      ),
    );
  }

  void _changeGridSize(int size) {
    setState(() {
      _gridSize = size;
    });
    _startControlsTimer();
  }

  Future<void> _selectChannelForSlot(int index) async {
    final channel = await showDialog<Channel>(
      context: context,
      builder: (context) => const ChannelSelectionDialog(),
    );

    if (channel != null) {
      setState(() {
        if (index >= _channelsList.length) {
          _channelsList.add(channel);
        } else {
          _channelsList[index] = channel;
        }
      });

      // Initialize the new player
      try {
        _controllers[index]?.dispose();
        _controllers[index] = VideoPlayerController.networkUrl(
          Uri.parse(channel.url),
        );

        await _controllers[index]!.initialize();
        await _controllers[index]!.play();

        // Mute by default unless it's the active audio player
        if (index != _activeAudioPlayer) {
          await _controllers[index]!.setVolume(0.0);
        } else {
          await _controllers[index]!.setVolume(1.0);
        }

        setState(() {
          _isInitialized[index] = true;
          _hasError[index] = false;
        });
      } catch (e) {
        debugPrint('Error initializing new player $index: $e');
        setState(() {
          _hasError[index] = true;
        });
      }
    }
  }

  void _handleKeyPress(KeyEvent event) {
    if (event is KeyDownEvent) {
      switch (event.logicalKey) {
        case LogicalKeyboardKey.digit1:
          _setFocusedPlayer(0);
          break;
        case LogicalKeyboardKey.digit2:
          if (_gridSize >= 2) _setFocusedPlayer(1);
          break;
        case LogicalKeyboardKey.digit3:
          if (_gridSize >= 4) _setFocusedPlayer(2);
          break;
        case LogicalKeyboardKey.digit4:
          if (_gridSize >= 4) _setFocusedPlayer(3);
          break;
        case LogicalKeyboardKey.keyA:
          // Switch audio to focused player
          _switchAudioPlayer(_focusedPlayer);
          break;
        case LogicalKeyboardKey.keyM:
          // Mute/unmute focused player
          final volume = _controllers[_focusedPlayer]?.value.volume ?? 0.0;
          _controllers[_focusedPlayer]?.setVolume(volume > 0 ? 0.0 : 1.0);
          _startControlsTimer();
          break;
        case LogicalKeyboardKey.select:
        case LogicalKeyboardKey.enter:
        case LogicalKeyboardKey.space:
          _togglePlayPause(_focusedPlayer);
          break;
        case LogicalKeyboardKey.keyF:
          _expandPlayer(_focusedPlayer);
          break;
        case LogicalKeyboardKey.escape:
        case LogicalKeyboardKey.goBack:
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
        focusNode: _screenFocusNode,
        autofocus: true,
        onKeyEvent: _handleKeyPress,
        child: Stack(
          children: [
            // Video grid
            _buildVideoGrid(),

            // Controls overlay
            if (_showControls) _buildControlsOverlay(),
          ],
        ),
      ),
    );
  }

  Widget _buildVideoGrid() {
    final displayCount = _gridSize.clamp(1, _channelsList.length.clamp(1, 4));

    if (displayCount == 1) {
      return _buildPlayerTile(0, isSingle: true);
    } else if (displayCount == 2) {
      return Row(
        children: [
          Expanded(child: _buildPlayerTile(0)),
          Expanded(child: _buildPlayerTile(1)),
        ],
      );
    } else {
      // 2x2 grid
      return Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: _buildPlayerTile(0)),
                Expanded(child: _buildPlayerTile(1)),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: _buildPlayerTile(2)),
                Expanded(child: _buildPlayerTile(3)),
              ],
            ),
          ),
        ],
      );
    }
  }

  Widget _buildPlayerTile(int index, {bool isSingle = false}) {
    if (index >= _channelsList.length) {
      return Focus(
        onKeyEvent: (node, event) {
          if (event is KeyDownEvent && 
              (event.logicalKey == LogicalKeyboardKey.select || 
               event.logicalKey == LogicalKeyboardKey.enter)) {
            _selectChannelForSlot(index);
            return KeyEventResult.handled;
          }
          return KeyEventResult.ignored;
        },
        child: Builder(
          builder: (context) {
            final isFocused = Focus.of(context).hasFocus;
            return GestureDetector(
              onTap: () => _selectChannelForSlot(index),
              child: Container(
                margin: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF050710),
                      Color(0xFF0d1140),
                    ],
                  ),
                  border: isFocused ? Border.all(color: AppTheme.primaryBlue, width: 3) : null,
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_circle_outline,
                        size: 48,
                        color: isFocused ? Colors.white : Colors.white54,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Add Stream ${index + 1}',
                        style: TextStyle(
                          color: isFocused ? Colors.white : Colors.white54,
                          fontWeight: isFocused ? FontWeight.bold : FontWeight.normal,
                        ),
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

    final channel = _channelsList[index];
    final controller = _controllers[index];
    final isInitialized = _isInitialized[index];
    final hasError = _hasError[index];
    final isFocused = _focusedPlayer == index;
    final hasAudio = _activeAudioPlayer == index;

    return Focus(
      onKeyEvent: (node, event) {
        if (event is KeyDownEvent) {
          if (event.logicalKey == LogicalKeyboardKey.select || 
              event.logicalKey == LogicalKeyboardKey.enter) {
            _setFocusedPlayer(index);
            _startControlsTimer();
            return KeyEventResult.handled;
          } else if (event.logicalKey == LogicalKeyboardKey.keyF) {
            _expandPlayer(index);
            return KeyEventResult.handled;
          } else if (event.logicalKey == LogicalKeyboardKey.keyA) {
            _switchAudioPlayer(index);
            return KeyEventResult.handled;
          }
        }
        return KeyEventResult.ignored;
      },
      child: GestureDetector(
        onTap: () {
          _setFocusedPlayer(index);
          _startControlsTimer();
        },
        onDoubleTap: () => _expandPlayer(index),
        child: Container(
        margin: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          border: Border.all(
            // Active audio player gets red accent border, focused player gets blue
            color: hasAudio 
                ? AppTheme.accentRed 
                : (isFocused ? AppTheme.primaryBlue : Colors.transparent),
            width: hasAudio ? 4 : (isFocused ? 3 : 0),
          ),
          // Add a subtle glow effect to the active audio player
          boxShadow: hasAudio ? [
            BoxShadow(
              color: AppTheme.accentRed.withOpacity(0.5),
              blurRadius: 8,
              spreadRadius: 2,
            ),
          ] : null,
        ),
        child: Stack(
          children: [
            // Video player
            if (isInitialized && !hasError && controller != null)
              Center(
                child: AspectRatio(
                  aspectRatio: controller.value.aspectRatio,
                  child: VideoPlayer(controller),
                ),
              ),

            // Loading state
            if (!isInitialized && !hasError)
              Container(
                color: Colors.black,
                child: const Center(child: CircularProgressIndicator()),
              ),

            // Error state
            if (hasError)
              Container(
                color: Colors.black,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.error_outline,
                        color: AppTheme.accentRed,
                        size: 48,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Failed to load stream',
                        style: Theme.of(
                          context,
                        ).textTheme.titleMedium?.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),

            // Channel info overlay
            if (_showControls)
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF050710),
                  Color(0xFF0d1140),
                ],
              )
                  ),
                  child: Row(
                    children: [
                      // Channel number
                      if (channel.channelNumber != null)
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: AppTheme.primaryBlue,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            '${channel.channelNumber}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      const SizedBox(width: 8),
                      // Channel name
                      Expanded(
                        child: Text(
                          channel.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      // Audio indicator
                      if (hasAudio)
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: AppTheme.accentRed,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.volume_up,
                                size: 12,
                                color: Colors.white,
                              ),
                              SizedBox(width: 2),
                              Text(
                                'AUDIO',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ),

            // Focus indicator number
            if (isFocused && _showControls)
              Positioned(
                bottom: 8,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: AppTheme.primaryBlue,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '${index + 1}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            
            // Active audio indicator (always visible)
            if (hasAudio && !_showControls)
              Positioned(
                bottom: 8,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: AppTheme.accentRed,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.accentRed.withOpacity(0.5),
                        blurRadius: 8,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.volume_up,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
          ],
        ),
      ),
      ),
    );
  }

  Widget _buildControlsOverlay() {
    return SafeArea(
      child: Column(
        children: [
          // Top bar
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF050710),
                  Color(0xFF0d1140),
                ],
              )
            ),
            child: Row(
              children: [
                Focus(
                  onKeyEvent: (node, event) {
                    if (event is KeyDownEvent && 
                        (event.logicalKey == LogicalKeyboardKey.select || 
                         event.logicalKey == LogicalKeyboardKey.enter)) {
                      Navigator.of(context).pop();
                      return KeyEventResult.handled;
                    }
                    return KeyEventResult.ignored;
                  },
                  child: Builder(
                    builder: (context) {
                      final isFocused = Focus.of(context).hasFocus;
                      return Container(
                        decoration: BoxDecoration(
                          border: isFocused ? Border.all(color: Colors.white, width: 2) : null,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 28,
                          ),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(width: 16),
                const Text(
                  'Multi-View',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                // Grid size selector
                _buildGridSizeButton(1, Icons.crop_square),
                const SizedBox(width: 8),
                _buildGridSizeButton(2, Icons.view_column),
                const SizedBox(width: 8),
                _buildGridSizeButton(4, Icons.grid_view),
              ],
            ),
          ),

          const Spacer(),

          // Bottom bar with hints
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF050710),
                  Color(0xFF0d1140),
                ],
              )
            ),
            child: Wrap(
              spacing: 12,
              runSpacing: 8,
              alignment: WrapAlignment.center,
              children: [
                _buildHint('1-4', 'Select'),
                _buildHint('A', 'Audio'),
                _buildHint('M', 'Mute'),
                _buildHint('SPACE', 'Play/Pause'),
                _buildHint('F', 'Fullscreen'),
                _buildHint('BACK', 'Exit'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGridSizeButton(int size, IconData icon) {
    final isActive = _gridSize == size;
    return Focus(
      onKeyEvent: (node, event) {
        if (event is KeyDownEvent && 
            (event.logicalKey == LogicalKeyboardKey.select || 
             event.logicalKey == LogicalKeyboardKey.enter)) {
          _changeGridSize(size);
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          return Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () => _changeGridSize(size),
              borderRadius: BorderRadius.circular(12),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: isActive
                      ? const LinearGradient(
                          colors: [Color(0xFF6F5BFF), Color(0xFFB86BFF)],
                        )
                      : null,
                  color: isActive ? null : Colors.white.withValues(alpha: 0.08),
                  border: Border.all(
                    color: isFocused 
                        ? Colors.white
                        : Colors.white.withValues(alpha: 0.15),
                    width: isFocused ? 2 : 1,
                  ),
                  boxShadow: isActive || isFocused
                      ? [
                          BoxShadow(
                            color: isFocused ? const Color(0x88FFFFFF) : const Color(0x550057FF),
                            blurRadius: 18,
                            offset: const Offset(0, 6),
                          ),
                        ]
                      : null,
                ),
                child: Icon(icon, color: Colors.white, size: 20),
              ),
            ),
          );
        },
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
        style: const TextStyle(color: Colors.white, fontSize: 11),
      ),
    );
  }
}
