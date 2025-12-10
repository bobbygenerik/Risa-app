import 'package:flutter/material.dart';
import '../models/channel.dart';
import '../widgets/native_exoplayer.dart';

class EnhancedVideoPlayerScreen extends StatefulWidget {
  final Channel channel;
  final String? streamUrl;

  const EnhancedVideoPlayerScreen({
    Key? key,
    required this.channel,
    this.streamUrl,
  }) : super(key: key);

  @override
  State<EnhancedVideoPlayerScreen> createState() => _EnhancedVideoPlayerScreenState();
}

class _EnhancedVideoPlayerScreenState extends State<EnhancedVideoPlayerScreen> {
  NativeExoPlayerController? _exoController;
  bool _isLoading = true;
  bool _showControls = true;
  bool _isPlaying = false;
  double _progress = 0.0;
  
  @override
  void initState() {
    super.initState();
    _hideControlsAfterDelay();
  }

  void _hideControlsAfterDelay() {
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) setState(() => _showControls = false);
    });
  }

  void _toggleControls() {
    setState(() => _showControls = !_showControls);
    if (_showControls) _hideControlsAfterDelay();
  }

  void _togglePlayPause() {
    if (_isPlaying) {
      _exoController?.pause();
    } else {
      _exoController?.play();
    }
  }

  @override
  void dispose() {
    _exoController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: _toggleControls,
        child: Stack(
          children: [
            Center(
              child: NativeExoPlayer(
                videoUrl: widget.streamUrl ?? widget.channel.url,
                autoPlay: true,
                onCreated: (controller) {
                  _exoController = controller;
                  setState(() => _isLoading = false);
                },
                onPlaybackStateChanged: (isPlaying) {
                  setState(() => _isPlaying = isPlaying);
                },
                onProgressChanged: (progress) {
                  setState(() => _progress = progress);
                },
              ),
            ),
            
            if (_isLoading)
              const Center(child: CircularProgressIndicator(color: Colors.white)),
            
            if (_showControls && !_isLoading)
              _buildControls(),
              
            // Progress bar at bottom
            if (!_isLoading)
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: LinearProgressIndicator(
                  value: _progress,
                  backgroundColor: Colors.white.withOpacity(0.3),
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.red),
                  minHeight: 4,
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildControls() {
    return Stack(
      children: [
        // Back button top-left
        Positioned(
          top: 40,
          left: 16,
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back, color: Colors.white, size: 28),
          ),
        ),
        
        // Play/pause bottom center
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: _togglePlayPause,
                icon: Icon(
                  _isPlaying ? Icons.pause : Icons.play_arrow,
                  color: Colors.white,
                  size: 48,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}