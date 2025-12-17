import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/screens/enhanced_video_player_screen.dart';
import 'package:iptv_player/widgets/channel_selection_dialog.dart';
import 'package:iptv_player/widgets/tv_focusable.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
import 'package:iptv_player/providers/settings_provider.dart';
import 'package:iptv_player/services/timer_service.dart';
import 'package:iptv_player/services/focus_pool_service.dart';
import 'package:iptv_player/services/http_client_service.dart';

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
  final List<Player?> _players = [null, null, null, null];
  final List<VideoController?> _controllers = [null, null, null, null];
  final List<bool> _isInitialized = [false, false, false, false];
  final List<bool> _hasError = [false, false, false, false];

  int _activeAudioPlayer = 0; // Which player's audio is active
  int _focusedPlayer = 0; // Which player has focus for controls
  final FocusPoolService _focusPool = FocusPoolService();
  
  late final FocusNode _screenFocusNode;
  late final FocusScopeNode _controlsFocusScope;
  late final List<FocusNode> _playerFocusNodes;

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
  final TimerService _timerService = TimerService();
  
  // Memory optimization
  final List<Player> _playerPool = [];
  final Set<int> _visibleTiles = {};
  final Set<int> _loadingTiles = {};

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
    
    // Get focus nodes from pool
    _screenFocusNode = _focusPool.getFocusNode('multi_view_screen', debugLabel: 'Multi-view Screen');
    _controlsFocusScope = FocusScopeNode(debugLabel: 'Multi-view Controls');
    _playerFocusNodes = List.generate(4, (i) => 
      _focusPool.getFocusNode('multi_view_player_$i', debugLabel: 'Multi-view Player $i'));
    
    _loadSettings();
    _updateVisibleTiles();
    _startControlsTimer();
  }

  Future<void> _loadSettings() async {
    final settings = Provider.of<SettingsProvider>(context, listen: false);
    await settings.initialize();
    setState(() {
      _hardwareAcceleration = settings.hardwareAcceleration;
      _videoBufferSize = settings.videoBufferSize;
      _videoQuality = settings.videoQuality;
    });
  }

  void _updateVisibleTiles() {
    _visibleTiles.clear();
    if (_gridSize == 1) {
      _visibleTiles.add(_focusedPlayer);
    } else if (_gridSize == 2) {
      _visibleTiles.addAll([0, 1]);
    } else {
      _visibleTiles.addAll([0, 1, 2, 3]);
    }
    
    // Initialize visible tiles
    for (int i in _visibleTiles) {
      if (i < _channelsList.length && !_isInitialized[i] && !_loadingTiles.contains(i)) {
        _initializePlayer(i);
      }
    }
    
    // Dispose invisible tiles
    for (int i = 0; i < _controllers.length; i++) {
      if (!_visibleTiles.contains(i) && _controllers[i] != null) {
        _disposePlayer(i);
      }
    }
  }
  
  Future<void> _initializePlayer(int index) async {
    if (index >= _channelsList.length) return;
    if (_players[index] != null) return;
    if (_loadingTiles.contains(index)) return;

    _loadingTiles.add(index);
    final channel = _channelsList[index];
    if (channel.url.isEmpty) {
      setState(() {
        _hasError[index] = true;
      });
      _loadingTiles.remove(index);
      return;
    }

    try {
      // Try to reuse player from pool
      Player? player = _getPooledPlayer();
      VideoController? controller;

      if (player == null) {
        player = Player(
            configuration: const PlayerConfiguration(
          title: 'Risa MultiView',
          vo: 'gpu',
        ));
      }

      controller = VideoController(
        player,
        configuration: const VideoControllerConfiguration(
          enableHardwareAcceleration: true,
        ),
      );

      _players[index] = player;
      _controllers[index] = controller;

      // Common headers for IPTV
      final headers = <String, String>{
        'User-Agent': 'VLC/3.0.0 LibVLC/3.0.0',
        'Accept': '*/*',
        'Connection': 'keep-alive',
      };

      await player.open(
        Media(channel.url, httpHeaders: headers),
        play: true,
      );

      // Mute all except the active audio player
      if (index != _activeAudioPlayer) {
        await player.setVolume(0.0);
      } else {
        await player.setVolume(100.0);
      }

      setState(() {
        _isInitialized[index] = true;
        _hasError[index] = false;
      });
    } catch (e) {
      debugLog('Error initializing player $index: $e');
      setState(() {
        _hasError[index] = true;
      });
    } finally {
      _loadingTiles.remove(index);
    }
  }

  Player? _getPooledPlayer() {
    if (_playerPool.isNotEmpty) {
      return _playerPool.removeLast();
    }
    return null;
  }

  void _disposePlayer(int index) {
    final player = _players[index];
    if (player != null) {
      // Stop playback before disposal
      unawaited(player.stop());

      // Add to pool for reuse instead of disposing immediately
      if (_playerPool.length < 2) {
        _playerPool.add(player);
      } else {
        unawaited(player.dispose());
      }

      _players[index] = null;
      _controllers[index] = null; // VideoController just wraps player, drop reference
      setState(() {
        _isInitialized[index] = false;
        _hasError[index] = false;
      });
    }
  }

  @override
  void dispose() {
    _timerService.unregister('multi_view_controls');
    _focusPool.returnFocusNode('multi_view_screen');
    for (int i = 0; i < 4; i++) {
      _focusPool.returnFocusNode('multi_view_player_$i');
    }
    _controlsFocusScope.dispose();

    // Dispose all active players
    for (var player in _players) {
      if (player != null) {
        unawaited(player.dispose());
      }
    }

    // Dispose all pooled players
    for (var player in _playerPool) {
      unawaited(player.dispose());
    }

    // Clear collections
    _players.clear();
    _controllers.clear();
    _playerPool.clear();
    _visibleTiles.clear();
    _loadingTiles.clear();
    
    super.dispose();
  }

  void _startControlsTimer() {
    setState(() => _showControls = true);
    
    // Unregister existing timer and register new one
    _timerService.unregister('multi_view_controls');
    _timerService.registerCustomCallback('multi_view_controls', 5, () {
      if (mounted) {
        setState(() => _showControls = false);
        // Return focus to the currently focused player
        if (_focusedPlayer < _playerFocusNodes.length) {
          _playerFocusNodes[_focusedPlayer].requestFocus();
        }
        // Unregister after execution since this is a one-time timer
        _timerService.unregister('multi_view_controls');
      }
    });
    
    // If showing controls, move focus to overlay
    if (_showControls) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted && _showControls) {
          _controlsFocusScope.requestFocus();
        }
      });
    }
  }

  void _switchAudioPlayer(int index) {
    if (index < 0 || index >= _players.length) return;
    if (_players[index] == null || !_isInitialized[index]) return;

    // Mute old active player
    unawaited(_players[_activeAudioPlayer]?.setVolume(0.0));

    // Unmute new active player
    unawaited(_players[index]?.setVolume(100.0));

    setState(() {
      _activeAudioPlayer = index;
    });

    _startControlsTimer();
  }

  void _setFocusedPlayer(int index) {
    setState(() {
      _focusedPlayer = index;
    });
    _updateVisibleTiles();
    _startControlsTimer();
  }

  void _togglePlayPause(int index) {
    if (_players[index] == null) return;
    _players[index]!.playOrPause();
    _startControlsTimer();
  }

  /// Return to previous screen with the currently active audio channel
  void _returnWithActiveChannel() {
    Channel? activeChannel;
    if (_activeAudioPlayer < _channelsList.length) {
      activeChannel = _channelsList[_activeAudioPlayer];
    }
    Navigator.of(context).pop(activeChannel);
  }

  void _expandPlayer(int index) {
    if (index >= _channelsList.length) return;

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => EnhancedVideoPlayerScreen(
          channel: _channelsList[index],
        ),
      ),
    );
  }

  void _changeGridSize(int size) {
    setState(() {
      _gridSize = size;
    });
    _updateVisibleTiles();
    _startControlsTimer();
  }

  Future<void> _selectChannelForSlot(int index) async {
    final channel = await showDialog<Channel>(
      context: context,
      builder: (context) => const ChannelSelectionDialog(),
    );

    if (channel != null) {
      // Dispose old player first
      _disposePlayer(index);
      
      // Wait a frame to ensure disposal completes
      await Future.delayed(const Duration(milliseconds: 50));
      
      setState(() {
        if (index >= _channelsList.length) {
          _channelsList.add(channel);
        } else {
          _channelsList[index] = channel;
        }
      });

      // Initialize new player if visible
      if (_visibleTiles.contains(index)) {
        await _initializePlayer(index);
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
          final volume = _players[_focusedPlayer]?.state.volume ?? 0.0;
          unawaited(_players[_focusedPlayer]?.setVolume(volume > 0 ? 0.0 : 100.0));
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
          _returnWithActiveChannel();
          break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // Screen dimensions (unused when using tv helper methods)
    // Legacy `scale` and `vScale` helpers removed; use tv helper extensions instead

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
    // Always show tiles based on grid size, empty slots will show "Add Stream" button
    final displayCount = _gridSize;

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
            unawaited(_selectChannelForSlot(index));
            return KeyEventResult.handled;
          }
          return KeyEventResult.ignored;
        },
        child: Builder(
          builder: (context) {
            final isFocused = Focus.of(context).hasFocus;
            return GestureDetector(
              onTap: () => _selectChannelForSlot(index),
              child: AnimatedScale(
                scale: isFocused ? TVFocusStyle.focusScale : 1.0,
                duration: TVFocusStyle.animationDuration,
                curve: TVFocusStyle.animationCurve,
                child: AnimatedContainer(
                  duration: TVFocusStyle.animationDuration,
                  curve: TVFocusStyle.animationCurve,
                  margin: EdgeInsets.all(context.tvSpacing(1)),
                  decoration: BoxDecoration(
                    color: const Color(0xFF050710),
                    boxShadow: isFocused ? TVFocusStyle.focusedShadow : null,
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add_circle_outline,
                          size: context.tvIconSize(48),
                          color: isFocused ? Colors.white : Colors.white54,
                        ),
                        SizedBox(height: context.tvSpacing(8)),
                        Text(
                          'Add Stream ${index + 1}',
                          style: TextStyle(
                            color: isFocused ? Colors.white : Colors.white54,
                            fontWeight: isFocused ? FontWeight.bold : FontWeight.normal,
                            fontSize: context.tvTextSize(16),
                          ),
                        ),
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

    final channel = _channelsList[index];
    final controller = _controllers[index];
    final isInitialized = _isInitialized[index];
    final hasError = _hasError[index];
    final isFocused = _focusedPlayer == index;
    final hasAudio = _activeAudioPlayer == index;

    return Focus(
      focusNode: _playerFocusNodes[index],
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
          } else if (event.logicalKey == LogicalKeyboardKey.keyC) {
            // Change channel on this slot
            _selectChannelForSlot(index);
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
            // Active audio player gets blue accent border, focused player gets lighter blue
            color: hasAudio 
                ? AppTheme.primaryBlue 
                : (isFocused ? AppTheme.primaryBlue.withValues(alpha: 0.6) : Colors.transparent),
            width: hasAudio ? 4 : (isFocused ? 3 : 0),
          ),
          // Add a subtle glow effect to the active audio player
          boxShadow: hasAudio ? [
            BoxShadow(
              color: AppTheme.primaryBlue.withValues(alpha: 0.5),
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
                child: Video(
                  controller: controller,
                  controls: NoVideoControls,
                  fit: BoxFit.contain,
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
                    color: Color(0xFF050710),
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
                      // Change channel button (when focused)
                      if (isFocused)
                        GestureDetector(
                          onTap: () => _selectChannelForSlot(index),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: AppTheme.primaryBlue,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.swap_horiz,
                                  size: 14,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  'Change',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      const SizedBox(width: 8),
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
                    color: AppTheme.primaryBlue,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.primaryBlue.withValues(alpha: 0.5),
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
    final isPlaying = _players[_focusedPlayer]?.state.playing ?? false;
    
    // Reset timer on any key activity within controls
    return KeyboardListener(
      focusNode: FocusNode(skipTraversal: true),
      onKeyEvent: (event) {
        if (event is KeyDownEvent) {
          _startControlsTimer();
        }
      },
      child: SafeArea(
        child: FocusScope(
          node: _controlsFocusScope,
          child: Column(
            children: [
              // Top bar - no background
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  children: [
                    // Back button - matches video player style (no border box)
                    Focus(
                      onKeyEvent: (node, event) {
                        if (event is KeyDownEvent) {
                          if (event.logicalKey == LogicalKeyboardKey.select ||
                              event.logicalKey == LogicalKeyboardKey.enter) {
                            _returnWithActiveChannel();
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
                              onPressed: _returnWithActiveChannel,
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
                        shadows: [
                          Shadow(color: Colors.black, blurRadius: 4),
                        ],
                      ),
                    ),
                    const Spacer(),
                    // Grid size selector
                    _buildOverlayButton(
                      icon: Icons.crop_square,
                      label: '1',
                      onTap: () => _changeGridSize(1),
                      isActive: _gridSize == 1,
                    ),
                    const SizedBox(width: 8),
                    _buildOverlayButton(
                      icon: Icons.view_column,
                      label: '2',
                      onTap: () => _changeGridSize(2),
                      isActive: _gridSize == 2,
                    ),
                    const SizedBox(width: 8),
                    _buildOverlayButton(
                      icon: Icons.grid_view,
                      label: '4',
                      onTap: () => _changeGridSize(4),
                      isActive: _gridSize == 4,
                    ),
                  ],
                ),
              ),

              const Spacer(),

              // Bottom bar - real control buttons that match video player overlay
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Left side button (Audio matches Fullscreen width)
                      _buildOverlayButton(
                        icon: Icons.multitrack_audio,
                        label: 'Audio',
                        onTap: () => _switchAudioPlayer(_focusedPlayer),
                        minWidth: 130,  // Match Fullscreen
                      ),
                      const SizedBox(width: 16),
                      // Center play controls
                      _buildOverlayButton(
                        icon: Icons.replay_10,
                        label: '-10s',
                        onTap: () {
                          final player = _players[_focusedPlayer];
                          if (player != null) {
                            final position = player.state.position;
                            unawaited(player.seek(position - const Duration(seconds: 10)));
                          }
                          _startControlsTimer();
                        },
                      ),
                      const SizedBox(width: 8),
                      _buildOverlayButton(
                        icon: isPlaying ? Icons.pause : Icons.play_arrow,
                        label: isPlaying ? 'Pause' : 'Play',
                        onTap: () => _togglePlayPause(_focusedPlayer),
                      ),
                      const SizedBox(width: 8),
                      _buildOverlayButton(
                        icon: Icons.forward_10,
                        label: '+10s',
                        onTap: () {
                          final player = _players[_focusedPlayer];
                          if (player != null) {
                            final position = player.state.position;
                            unawaited(player.seek(position + const Duration(seconds: 10)));
                          }
                          _startControlsTimer();
                        },
                      ),
                      const SizedBox(width: 16),
                      // Right side button (Fullscreen matches Audio width)
                      _buildOverlayButton(
                        icon: Icons.fullscreen,
                        label: 'Fullscreen',
                        onTap: () => _expandPlayer(_focusedPlayer),
                        minWidth: 130,  // Match Audio
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOverlayButton({
    required IconData icon,
    required String label,
    VoidCallback? onTap,
    bool isActive = false,
    bool isDisabled = false,
    double? minWidth,
  }) {
    final borderRadius = BorderRadius.circular(context.tvSpacing(18));
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
                  padding: EdgeInsets.symmetric(
                    horizontal: context.tvSpacing(16),
                    vertical: context.tvSpacing(12),
                  ),
                  constraints: minWidth != null ? BoxConstraints(minWidth: context.tvSpacing(minWidth)) : null,
                  decoration: BoxDecoration(
                    borderRadius: borderRadius,
                    gradient: gradient,
                    color: backgroundColor,
                    border: Border.all(
                      color: isFocused 
                          ? AppTheme.primaryBlue
                          : Colors.white.withValues(alpha: 0.15),
                      width: isFocused ? context.tvSpacing(3) : context.tvSpacing(1),
                    ),
                    boxShadow: isActive || isFocused
                        ? [
                            BoxShadow(
                              color: isFocused ? AppTheme.primaryBlue.withAlpha((0.6 * 255).round()) : const Color(0x550057FF),
                              blurRadius: context.tvSpacing(18),
                              offset: Offset(0, context.tvSpacing(6)),
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
                        size: context.tvIconSize(22),
                      ),
                      if (label.isNotEmpty) ...[
                        SizedBox(width: context.tvSpacing(8)),
                        Text(
                          label,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: context.tvTextSize(14),
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

}
