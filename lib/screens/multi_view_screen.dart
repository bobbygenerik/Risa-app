import 'dart:async';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/channel.dart';
// app_theme not required here
import 'enhanced_video_player_screen.dart';

/// A simple 2x2 multi-view implementation using `video_player` controllers.
class MultiViewScreen extends StatefulWidget {
  final List<Channel>? channels;
  final Channel? initialChannel;

  const MultiViewScreen({super.key, this.channels, this.initialChannel});

  @override
  State<MultiViewScreen> createState() => _MultiViewScreenState();
}

enum IndexDirection { left, right, up, down }

class _MultiViewScreenState extends State<MultiViewScreen> {
  final List<VideoPlayerController?> _controllers = List.filled(4, null);
  final List<Future<void>?> _inits = List.filled(4, null);
  final List<bool> _muted = List.filled(4, true);
  int _focusedIndex = -1;
  final List<bool> _isPlaying = List.filled(4, false);
  late List<Channel> _channelsLocal;
  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());
  bool _swapMode = false;
  int? _swapFirstIndex;

  @override
  void initState() {
    super.initState();
    _channelsLocal = List<Channel>.from(widget.channels ?? []);
    _loadMutedState().then((_) => _setupControllers());
    // initial focus
    _focusedIndex = 0;
  }

  Future<void> _loadMutedState() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      for (var i = 0; i < 4; i++) {
        _muted[i] = prefs.getBool('multi_view_muted_$i') ?? true;
      }
    } catch (_) {}
  }

  Future<void> _saveMutedState() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      for (var i = 0; i < 4; i++) {
        await prefs.setBool('multi_view_muted_$i', _muted[i]);
      }
    } catch (_) {}
  }

  void _setupControllers() {
    final channels = _channelsLocal;
    for (var i = 0; i < 4; i++) {
      if (i < channels.length && channels[i].url.isNotEmpty) {
        final controller =
            VideoPlayerController.networkUrl(Uri.parse(channels[i].url));
        _controllers[i] = controller;
        _inits[i] = controller.initialize().then((_) {
          controller.setLooping(true);
          // Start according to persisted mute state
          try {
            controller.setVolume(_muted[i] ? 0 : 1);
          } catch (_) {}
          controller.play();
          _isPlaying[i] = true;
        }).catchError((_) {});
      }
    }

    // Once all inits settle we can rebuild to show players
    Future.wait(_inits.whereType<Future<void>>()).whenComplete(() {
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    for (final fn in _focusNodes) {
      fn.dispose();
    }
    for (final c in _controllers) {
      try {
        c?.dispose();
      } catch (_) {}
    }
    super.dispose();
  }

  Widget _buildCell(int index) {
    final controller = _controllers[index];
    final channels = _channelsLocal;
    final channel = index < channels.length ? channels[index] : null;

    return Focus(
      focusNode: _focusNodes[index],
      onKeyEvent: (node, event) {
        if (event is KeyDownEvent) {
          final key = event.logicalKey;
          // Arrow navigation
          if (key == LogicalKeyboardKey.arrowRight) {
            _moveFocus(index, IndexDirection.right);
            return KeyEventResult.handled;
          } else if (key == LogicalKeyboardKey.arrowLeft) {
            _moveFocus(index, IndexDirection.left);
            return KeyEventResult.handled;
          } else if (key == LogicalKeyboardKey.arrowDown) {
            _moveFocus(index, IndexDirection.down);
            return KeyEventResult.handled;
          } else if (key == LogicalKeyboardKey.arrowUp) {
            _moveFocus(index, IndexDirection.up);
            return KeyEventResult.handled;
          } else if (key == LogicalKeyboardKey.select ||
              key == LogicalKeyboardKey.enter) {
            // Enter opens fullscreen
            if (channel != null) {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => EnhancedVideoPlayerScreen(
                  channel: channel,
                  videoUrl: channel.url,
                  title: channel.name,
                  isLive: true,
                ),
              ));
            }
            return KeyEventResult.handled;
          }
        }
        return KeyEventResult.ignored;
      },
      child: GestureDetector(
        onTap: () {
          if (channel != null) {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => EnhancedVideoPlayerScreen(
                channel: channel,
                videoUrl: channel.url,
                title: channel.name,
                isLive: true,
              ),
            ));
          }
        },
        onLongPress: () {
          // Long-press toggles mute for this tile and ensures others are muted
          setState(() {
            final newMuted = !_muted[index];
            for (var j = 0; j < _muted.length; j++) {
              _muted[j] = true;
              try {
                _controllers[j]?.setVolume(0);
              } catch (_) {}
            }
            _muted[index] = newMuted;
            try {
              _controllers[index]?.setVolume(newMuted ? 0 : 1);
            } catch (_) {}
            _focusedIndex = index;
            _saveMutedState();
          });
        },
        onDoubleTap: () async {
          // Double-tap toggles play/pause for this tile. If unpausing, pause others.
          final c = _controllers[index];
          if (c == null) return;
          setState(() {
            final shouldPlay = !_isPlaying[index];
            if (shouldPlay) {
              // Pause others to conserve resources
              for (var j = 0; j < _controllers.length; j++) {
                if (j != index) {
                  try {
                    _controllers[j]?.pause();
                    _isPlaying[j] = false;
                  } catch (_) {}
                }
              }
              try {
                c.play();
                _isPlaying[index] = true;
              } catch (_) {}
            } else {
              try {
                c.pause();
                _isPlaying[index] = false;
              } catch (_) {}
            }
            _focusedIndex = index;
            // update focus visuals
            _focusNodes[index].requestFocus();
          });
        },
        child: Container(
          decoration: BoxDecoration(
            border: _focusedIndex == index
                ? Border.all(color: Colors.blueAccent, width: 2)
                : null,
            color: Colors.black,
          ),
          child: Stack(
            children: [
              if (controller != null)
                FutureBuilder<void>(
                  future: _inits[index],
                  builder: (context, snap) {
                    if (snap.connectionState != ConnectionState.done) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    return AspectRatio(
                        aspectRatio: controller.value.aspectRatio,
                        child: VideoPlayer(controller));
                  },
                )
              else
                const Center(
                    child: Icon(Icons.tv_off, color: Colors.white24, size: 48)),
              Positioned(
                left: 6,
                top: 6,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(6)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        channel?.name ?? 'Empty',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      const SizedBox(width: 8),
                      Icon(
                        _isPlaying[index] ? Icons.play_arrow : Icons.pause,
                        color: Colors.white54,
                        size: 14,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 6,
                top: 6,
                child: IconButton(
                  icon: Icon(_muted[index] ? Icons.volume_off : Icons.volume_up,
                      color: Colors.white, size: 18),
                  onPressed: () {
                    setState(() {
                      final newMuted = !_muted[index];
                      for (var j = 0; j < _muted.length; j++) {
                        _muted[j] = true;
                        try {
                          _controllers[j]?.setVolume(0);
                        } catch (_) {}
                      }
                      _muted[index] = newMuted;
                      try {
                        _controllers[index]?.setVolume(newMuted ? 0 : 1);
                      } catch (_) {}
                      _focusedIndex = index;
                      _saveMutedState();
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _moveFocus(int from, IndexDirection dir) {
    int target = from;
    switch (dir) {
      case IndexDirection.left:
        target = (from % 2 == 0) ? from : from - 1;
        break;
      case IndexDirection.right:
        target = (from % 2 == 0) ? from + 1 : from;
        break;
      case IndexDirection.up:
        target = from - 2 >= 0 ? from - 2 : from;
        break;
      case IndexDirection.down:
        target = from + 2 < 4 ? from + 2 : from;
        break;
    }
    if (target != from) {
      setState(() {
        _focusedIndex = target;
        _focusNodes[target].requestFocus();
      });
    }
  }

  Future<void> _rebuildControllers() async {
    for (final c in _controllers) {
      try {
        await c?.dispose();
      } catch (_) {}
    }
    for (var i = 0; i < _controllers.length; i++) {
      _controllers[i] = null;
      _inits[i] = null;
      _isPlaying[i] = false;
    }
    _setupControllers();
  }

  void _swapChannels(int a, int b) {
    if (a < 0 ||
        b < 0 ||
        a >= _channelsLocal.length ||
        b >= _channelsLocal.length) return;
    final tmp = _channelsLocal[a];
    _channelsLocal[a] = _channelsLocal[b];
    _channelsLocal[b] = tmp;
    _rebuildControllers();
  }

  void _promoteAudio(int index) {
    // Unmute selected and mute others, also pause others
    for (var j = 0; j < _controllers.length; j++) {
      try {
        if (j == index) {
          _controllers[j]?.setVolume(1);
          _controllers[j]?.play();
          _isPlaying[j] = true;
          _muted[j] = false;
        } else {
          _controllers[j]?.setVolume(0);
          _controllers[j]?.pause();
          _isPlaying[j] = false;
          _muted[j] = true;
        }
      } catch (_) {}
    }
    _focusedIndex = index;
    _saveMutedState();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final channels = widget.channels ?? [];
    if (channels.isEmpty) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            title: const Text('Multi View'),
            backgroundColor: Colors.transparent),
        body: const Center(
            child: Text('No channels available',
                style: TextStyle(color: Colors.white70))),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          title: const Text('Multi View'), backgroundColor: Colors.transparent),
      body: Column(
        children: [
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(6),
              crossAxisCount: 2,
              childAspectRatio: 16 / 9,
              children: List.generate(4, (i) => _buildCell(i)),
            ),
          ),
          // Bottom toolbar matching enhanced player controls style
          Container(
            color: Colors.black,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Swap mode toggle
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        _swapMode ? Colors.blueAccent : Colors.grey[850],
                    foregroundColor: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  onPressed: () {
                    setState(() {
                      _swapMode = !_swapMode;
                      _swapFirstIndex = null;
                    });
                  },
                  icon: const Icon(Icons.swap_horiz, size: 18),
                  label: Text(_swapMode ? 'Swap: Select first' : 'Swap'),
                ),

                // Promote audio (applies to focused tile)
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[850],
                    foregroundColor: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  onPressed: _focusedIndex >= 0
                      ? () => _promoteAudio(_focusedIndex)
                      : null,
                  icon: const Icon(Icons.volume_up, size: 18),
                  label: const Text('Promote Audio'),
                ),

                // Swap action / confirm
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _swapFirstIndex != null
                        ? Colors.blueAccent
                        : Colors.grey[850],
                    foregroundColor: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  onPressed: () {
                    if (!_swapMode) return;
                    if (_swapFirstIndex == null) {
                      // set first
                      setState(() {
                        _swapFirstIndex =
                            _focusedIndex >= 0 ? _focusedIndex : null;
                      });
                    } else if (_swapFirstIndex != null && _focusedIndex >= 0) {
                      _swapChannels(_swapFirstIndex!, _focusedIndex);
                      setState(() {
                        _swapMode = false;
                        _swapFirstIndex = null;
                      });
                    }
                  },
                  icon: const Icon(Icons.swap_calls, size: 18),
                  label: Text(_swapFirstIndex == null
                      ? 'Select First'
                      : 'Confirm Swap'),
                ),

                // Cancel / Close toolbar action
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[800],
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  onPressed: () {
                    setState(() {
                      _swapMode = false;
                      _swapFirstIndex = null;
                    });
                  },
                  child: const Icon(Icons.close, color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
