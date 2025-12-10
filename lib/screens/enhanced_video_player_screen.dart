import 'package:flutter/material.dart';
import '../models/channel.dart';
import '../widgets/native_exoplayer.dart';
import '../utils/app_theme.dart';

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
  bool _showGuide = false;
  double _progress = 0.0;
  
  @override
  void initState() {
    super.initState();
    _hideControlsAfterDelay();
  }

  void _hideControlsAfterDelay() {
    Future.delayed(const Duration(seconds: 4), () {
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
      setState(() => _isPlaying = false);
    } else {
      _exoController?.play();
      setState(() => _isPlaying = true);
    }
  }

  void _rewind() async {
    if (_exoController != null) {
      final currentPos = await _exoController!.getPosition();
      final newPos = (currentPos - 10000).clamp(0, currentPos);
      await _exoController!.seekTo(newPos);
    }
  }

  void _fastForward() async {
    if (_exoController != null) {
      final currentPos = await _exoController!.getPosition();
      final duration = await _exoController!.getDuration();
      final newPos = (currentPos + 10000).clamp(0, duration);
      await _exoController!.seekTo(newPos);
    }
  }

  void _toggleAudio() async {
    if (_exoController != null) {
      final tracks = await _exoController!.listAudioTracks();
      if (tracks.isNotEmpty) {
        _showAudioTrackDialog(tracks);
      }
    }
  }

  void _toggleSubtitles() {
    // Toggle subtitle overlay visibility
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Subtitles toggled')),
    );
  }

  void _toggleMultiView() {
    // Show multi-view options
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Multi-view activated')),
    );
  }

  void _toggleGuide() {
    setState(() => _showGuide = !_showGuide);
  }

  @override
  void dispose() {
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
            // Video player
            Center(
              child: NativeExoPlayer(
                videoUrl: widget.streamUrl ?? widget.channel.url,
                autoPlay: true,
                onCreated: (controller) {
                  _exoController = controller;
                  setState(() => _isLoading = false);
                },
              ),
            ),
            
            if (_isLoading)
              const Center(child: CircularProgressIndicator(color: Colors.white)),
            
            // Modern streaming controls
            if (_showControls && !_isLoading)
              _buildModernControls(),
              
            // Guide overlay
            if (_showGuide)
              _buildGuideOverlay(),
          ],
        ),
      ),
    );
  }

  Widget _buildModernControls() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black.withOpacity(0.7),
            Colors.transparent,
            Colors.transparent,
            Colors.black.withOpacity(0.8),
          ],
          stops: const [0.0, 0.3, 0.7, 1.0],
        ),
      ),
      child: Stack(
        children: [
          // Top bar
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSizes.lg, vertical: AppSizes.sm),
                child: Row(
                  children: [
                    // Back button
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back, color: Colors.white, size: 24),
                    ),
                    const Spacer(),
                    // Live badge
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: AppSizes.sm, vertical: AppSizes.xs),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(AppSizes.radiusSm),
                      ),
                      child: const Text(
                        'LIVE',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: AppSizes.sm),
                    // Guide button
                    IconButton(
                      onPressed: _toggleGuide,
                      icon: const Icon(Icons.tv, color: Colors.white, size: 24),
                    ),
                  ],
                ),
              ),
            ),
          ),
          
          // Bottom controls
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Control buttons (left-aligned)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                    child: Row(
                      children: [
                        // Rewind
                        _buildControlButton(
                          icon: Icons.replay_10,
                          onPressed: _rewind,
                        ),
                        const SizedBox(width: 12),
                        // Play/Pause
                        _buildControlButton(
                          icon: _isPlaying ? Icons.pause : Icons.play_arrow,
                          onPressed: _togglePlayPause,
                          size: 32,
                        ),
                        const SizedBox(width: 12),
                        // Fast Forward
                        _buildControlButton(
                          icon: Icons.forward_10,
                          onPressed: _fastForward,
                        ),
                        const SizedBox(width: 24),
                        // Audio
                        _buildControlButton(
                          icon: Icons.volume_up,
                          onPressed: _toggleAudio,
                        ),
                        const SizedBox(width: 12),
                        // Subtitles
                        _buildControlButton(
                          icon: Icons.closed_caption,
                          onPressed: _toggleSubtitles,
                        ),
                        const SizedBox(width: 12),
                        // Multi-view
                        _buildControlButton(
                          icon: Icons.picture_in_picture_alt,
                          onPressed: _toggleMultiView,
                        ),
                      ],
                    ),
                  ),
                  // Progress bar
                  Container(
                    height: 4,
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    child: LinearProgressIndicator(
                      value: _progress,
                      backgroundColor: Colors.white.withOpacity(0.3),
                      valueColor: const AlwaysStoppedAnimation<Color>(AppTheme.primaryBlue),
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildControlButton({
    required IconData icon,
    required VoidCallback onPressed,
    double size = 24,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.5),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, color: Colors.white, size: size),
        padding: EdgeInsets.all(size == 32 ? 12 : 8),
      ),
    );
  }

  void _showAudioTrackDialog(List<Map<String, dynamic>> tracks) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.black87,
        title: const Text('Audio Tracks', style: TextStyle(color: Colors.white)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: tracks.map((track) => ListTile(
            title: Text(
              track['label'] ?? 'Track ${track['trackIndex']}',
              style: const TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              track['language'] ?? '',
              style: const TextStyle(color: Colors.grey),
            ),
            onTap: () async {
              await _exoController?.switchAudioByIndices(
                rendererIndex: track['rendererIndex'] ?? 0,
                groupIndex: track['groupIndex'] ?? 0,
                trackIndex: track['trackIndex'] ?? 0,
              );
              Navigator.pop(context);
            },
          )).toList(),
        ),
      ),
    );
  }

  Widget _buildGuideOverlay() {
    return GestureDetector(
      onTap: _toggleGuide,
      child: Container(
        color: Colors.black.withOpacity(0.8),
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(40),
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: AppTheme.dialogBackground,
              borderRadius: BorderRadius.circular(AppSizes.radiusLg),
              border: Border.all(color: AppTheme.primaryBlue),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Program Guide',
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: AppTheme.textPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: _toggleGuide,
                      icon: const Icon(Icons.close, color: AppTheme.textPrimary),
                    ),
                  ],
                ),
                const SizedBox(height: AppSizes.lg),
                Container(
                  padding: const EdgeInsets.all(AppSizes.lg),
                  decoration: BoxDecoration(
                    color: AppTheme.primaryBlue.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.channel.name,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: AppTheme.textPrimary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: AppSizes.sm),
                      Text(
                        'Now Playing: Live Stream',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppTheme.textSecondary,
                        ),
                      ),
                      const SizedBox(height: AppSizes.xs),
                      Text(
                        'Category: ${widget.channel.category ?? 'General'}',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppTheme.textTertiary,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSizes.lg),
                Text(
                  'Tap anywhere to close',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppTheme.textTertiary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}