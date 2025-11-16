import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/screens/enhanced_video_player_screen.dart';

/// Multi-view screen for watching up to 4 streams simultaneously
/// Supports 1, 2, or 4 player grid layouts with audio switching
class MultiViewScreen extends StatefulWidget {
  final List<Channel> channels;

  const MultiViewScreen({super.key, required this.channels});

  @override
  State<MultiViewScreen> createState() => _MultiViewScreenState();
}

class _MultiViewScreenState extends State<MultiViewScreen> {
  final List<VlcPlayerController?> _controllers = [null, null, null, null];
  final List<bool> _isInitialized = [false, false, false, false];
  final List<bool> _hasError = [false, false, false, false];

  int _activeAudioPlayer = 0; // Which player's audio is active
  int _focusedPlayer = 0; // Which player has focus for controls
  final FocusNode _screenFocusNode = FocusNode();

  // Settings loaded from SharedPreferences
  String _decoderType = 'Auto';
  String _renderingEngine = 'Auto';
  double _videoBufferSize = 50;
  // This field is stored for settings persistence but currently not read by
  // any rendering code. Keep for future use and silence the analyzer.
  // ignore: unused_field
  String _videoQuality = 'Auto';
  bool _hardwareAcceleration = true;

  // Layout options
  int _gridSize = 4; // 1, 2, or 4 players
  bool _showControls = true;
  Timer? _controlsTimer;

  @override
  void initState() {
    super.initState();
    _loadSettings();
    _initializePlayers();
    _startControlsTimer();
  }

  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _hardwareAcceleration = prefs.getBool('hardware_acceleration') ?? true;
      _decoderType = prefs.getString('decoder_type') ?? 'Auto';
      _renderingEngine = prefs.getString('rendering_engine') ?? 'Auto';
      _videoBufferSize = prefs.getDouble('video_buffer_size') ?? 50;
      _videoQuality = prefs.getString('video_quality') ?? 'Auto';
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

  Future<void> _initializePlayers() async {
    final hwAcc = _getHardwareAcceleration();
    final bufferCache = (_videoBufferSize * 30)
        .round(); // Convert % to milliseconds (max 3000ms)

    for (int i = 0; i < widget.channels.length && i < 4; i++) {
      try {
        _controllers[i] = VlcPlayerController.network(
          widget.channels[i].url,
          hwAcc: hwAcc,
          autoPlay: true,
          options: VlcPlayerOptions(
            advanced: VlcAdvancedOptions([
              VlcAdvancedOptions.networkCaching(bufferCache),
              VlcAdvancedOptions.liveCaching(bufferCache),
            ]),
            video: VlcVideoOptions([
              // Apply rendering engine if not Auto
              if (_renderingEngine != 'Auto')
                VlcVideoOptions.dropLateFrames(true),
            ]),
            audio: VlcAudioOptions([
              // Audio options if needed
            ]),
            rtp: VlcRtpOptions([VlcRtpOptions.rtpOverRtsp(true)]),
          ),
        );

        await _controllers[i]!.initialize();

        // Mute all except the active audio player
        if (i != _activeAudioPlayer) {
          _controllers[i]!.setVolume(0);
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
    _controllers[_activeAudioPlayer]?.setVolume(0);

    // Unmute new active player
    _controllers[index]?.setVolume(100);

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
    if (index >= widget.channels.length) return;

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => EnhancedVideoPlayerScreen(
          videoUrl: widget.channels[index].url,
          title: widget.channels[index].name,
          isLive: true,
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
          final volume = _controllers[_focusedPlayer]?.value.volume ?? 0;
          _controllers[_focusedPlayer]?.setVolume(volume > 0 ? 0 : 100);
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
    final displayCount = _gridSize.clamp(1, widget.channels.length.clamp(1, 4));

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
    if (index >= widget.channels.length) {
      return Container(
        margin: const EdgeInsets.all(1),
        color: AppTheme.darkBackground,
        child: const Center(
          child: Text('No channel', style: TextStyle(color: Colors.white54)),
        ),
      );
    }

    final channel = widget.channels[index];
    final controller = _controllers[index];
    final isInitialized = _isInitialized[index];
    final hasError = _hasError[index];
    final isFocused = _focusedPlayer == index;
    final hasAudio = _activeAudioPlayer == index;

    return GestureDetector(
      onTap: () {
        _setFocusedPlayer(index);
        _startControlsTimer();
      },
      onDoubleTap: () => _expandPlayer(index),
      child: Container(
        margin: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          border: Border.all(
            color: isFocused ? AppTheme.primaryBlue : Colors.transparent,
            width: isFocused ? 3 : 0,
          ),
        ),
        child: Stack(
          children: [
            // Video player
            if (isInitialized && !hasError && controller != null)
              Center(
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: VlcPlayer(
                    controller: controller,
                    aspectRatio: 16 / 9,
                    placeholder: Container(
                      color: Colors.black,
                      child: const Center(child: CircularProgressIndicator()),
                    ),
                  ),
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
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withAlpha((0.7 * 255).round()),
                        Colors.transparent,
                      ],
                    ),
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
          ],
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
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 28,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
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
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Colors.black.withAlpha((0.7 * 255).round()), Colors.transparent],
              ),
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
    return Material(
      color: isActive ? AppTheme.primaryBlue : Colors.white.withAlpha((0.2 * 255).round()),
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: () => _changeGridSize(size),
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Icon(icon, color: Colors.white, size: 20),
        ),
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
