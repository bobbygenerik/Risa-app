part of '../enhanced_video_player_screen.dart';

extension EnhancedVideoPlayerLifecycle on _EnhancedVideoPlayerScreenState {
Future<void> _initializePlayer() async {
  final url =
      widget.videoUrl ?? widget.streamUrl ?? widget.channel?.url ?? '';

  debugLog('=== VIDEO PLAYER INIT START ===');
  debugLog('Video Player: Initializing with URL: ${redactUrl(url)}');
  debugLog('isLive: ${widget.isLive}');
  debugLog('Channel: ${widget.channel?.name ?? "none"}');
  logToSystem('PLAYER INIT: $url', name: 'RisaPlayer');

  if (url.isEmpty) {
    debugLog('=== VIDEO PLAYER INIT FAILED: Empty URL ===');
    if (mounted) {
      _updatePlayerState(() => _isLoading = false);
      _showErrorDialog(
          'Invalid Stream', 'No stream URL provided for this channel.');
    }
    return;
  }

  try {
    await WakelockPlus.enable();
    _hideControlsAfterDelay();

    if (mounted) {
      _updatePlayerState(() => _isLoading = false);
    }
    debugLog('=== VIDEO PLAYER INIT COMPLETE ===');
  } catch (e, st) {
    debugLog('=== VIDEO PLAYER INIT ERROR ===');
    debugLog('Video Player: Initialization error: $e');
    debugLog('Stack: $st');
    logToSystem('PLAYER INIT ERROR: $e', name: 'RisaPlayer');
    if (mounted) {
      _updatePlayerState(() => _isLoading = false);
      _showErrorDialog(
          'Initialization Error', 'Failed to initialize player: $e');
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
    _updatePlayerState(() => _playerReady = true);
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
}
