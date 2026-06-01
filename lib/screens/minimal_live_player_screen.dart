import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/services/android_native_player_service.dart';
import 'package:iptv_player/utils/debug_helper.dart';

/// Android TV: native fullscreen ExoPlayer only (zero Flutter video widgets).
class MinimalLivePlayerScreen extends StatefulWidget {
  final Channel? channel;
  final String streamUrl;
  final String? title;

  const MinimalLivePlayerScreen({
    super.key,
    this.channel,
    required this.streamUrl,
    this.title,
  });

  @override
  State<MinimalLivePlayerScreen> createState() =>
      _MinimalLivePlayerScreenState();
}

class _MinimalLivePlayerScreenState extends State<MinimalLivePlayerScreen> {
  String _status = 'Preparing playback...';
  bool _started = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _openNativePlayer());
  }

  Future<void> _openNativePlayer() async {
    if (_started) return;
    _started = true;

    final url = widget.streamUrl;
    if (url.isEmpty) {
      setState(() => _status = 'No stream URL for this channel.');
      return;
    }

    try {
      setState(() => _status = 'Opening player...');
      debugLog('MinimalLivePlayer: launching NativePlayerActivity');

      await AndroidNativePlayerService.playStream(
        url,
        title: widget.title ?? widget.channel?.name,
      );
    } on PlatformException catch (e) {
      debugLog('MinimalLivePlayer failed: ${e.code} ${e.message}');
      if (mounted) {
        setState(() => _status = 'Playback failed: ${e.message ?? e.code}');
      }
      return;
    } catch (e) {
      debugLog('MinimalLivePlayer failed: $e');
      if (mounted) setState(() => _status = 'Playback failed: $e');
      return;
    }

    if (mounted) context.go('/home');
  }

  void _exitPlayer() {
    if (mounted) context.go('/home');
  }

  @override
  Widget build(BuildContext context) {
    final label = widget.title ?? widget.channel?.name ?? 'Live TV';

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) _exitPlayer();
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 24),
                const CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white70),
                ),
                const SizedBox(height: 16),
                Text(
                  _status,
                  style: const TextStyle(color: Colors.white70, fontSize: 14),
                ),
                const Spacer(),
                TextButton(
                  onPressed: _exitPlayer,
                  child: const Text('Cancel'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
