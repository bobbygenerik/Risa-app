import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/channel.dart';
import '../widgets/native_exoplayer.dart';
import '../widgets/live_subtitle_overlay.dart';
import '../services/integrated_transcription_service.dart';
import '../utils/app_theme.dart';

enum SubtitleMode { off, regular, liveTranslation }

class EnhancedVideoPlayerScreen extends StatefulWidget {
  final Channel? channel;
  final String? streamUrl;
  final String? videoUrl;
  final String? title;
  final String? subtitle;
  final bool isLive;

  const EnhancedVideoPlayerScreen({
    super.key,
    this.channel,
    this.streamUrl,
    this.videoUrl,
    this.title,
    this.subtitle,
    this.isLive = false,
  });

  @override
  State<EnhancedVideoPlayerScreen> createState() => _EnhancedVideoPlayerScreenState();
}

class _EnhancedVideoPlayerScreenState extends State<EnhancedVideoPlayerScreen> {
  NativeExoPlayerController? _exoController;
  bool _isLoading = true;
  bool _showControls = true;
  bool _isPlaying = false;
  bool _showGuide = false;
  final double _progress = 0.0;
  SubtitleMode _subtitleMode = SubtitleMode.off;
  IntegratedTranscriptionService? _transcriptionService;
  
  @override
  void initState() {
    super.initState();
    _transcriptionService = Provider.of<IntegratedTranscriptionService>(context, listen: false);
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

  void _showSubtitleMenu() {
    showDialog(
      context: context,
      builder: (context) => _buildSubtitleMenu(),
    );
  }

  void _setSubtitleMode(SubtitleMode mode) async {
    setState(() => _subtitleMode = mode);
    
    if (mode == SubtitleMode.liveTranslation && _transcriptionService != null) {
      _transcriptionService!.setTranslationEnabled(true);
      final streamUrl = widget.videoUrl ?? widget.channel?.url;
      if (streamUrl != null) {
        await _transcriptionService!.startTranscription();
      }
    } else if (_transcriptionService != null) {
      await _transcriptionService!.stopTranscription();
    }
  }

  void _toggleMultiView() {
    // Show multi-view options
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Multi-view activated')),
      );
    }
  }

  void _toggleGuide() {
    setState(() => _showGuide = !_showGuide);
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
              _subtitleMode == SubtitleMode.off,
              () => _setSubtitleMode(SubtitleMode.off),
            ),
            _buildMenuOption(
              'Regular Subtitles',
              Icons.closed_caption_outlined,
              _subtitleMode == SubtitleMode.regular,
              () => _setSubtitleMode(SubtitleMode.regular),
            ),
            _buildMenuOption(
              'Live Translation',
              Icons.translate,
              _subtitleMode == SubtitleMode.liveTranslation,
              () => _setSubtitleMode(SubtitleMode.liveTranslation),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuOption(String title, IconData icon, bool selected, VoidCallback onTap) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          onTap();
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
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
                    fontWeight: selected ? FontWeight.w600 : FontWeight.normal,
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
  }

  @override
  void dispose() {
    _transcriptionService?.stopTranscription();
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
                videoUrl: widget.videoUrl ?? widget.streamUrl ?? widget.channel?.url ?? '',
                autoPlay: true,
                onCreated: (controller) {
                  _exoController = controller;
                  setState(() => _isLoading = false);
                },
              ),
            ),
            
            if (_isLoading)
              const Center(child: CircularProgressIndicator(color: Colors.white)),
            
            // Subtitle overlay
            if (_subtitleMode == SubtitleMode.liveTranslation)
              const LiveSubtitleOverlay(showSubtitles: true),
            
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
            Colors.black.withValues(alpha: 0.7),
            Colors.transparent,
            Colors.transparent,
            Colors.black.withValues(alpha: 0.8),
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
                    if (widget.isLive)
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
                        // Subtitles Menu
                        _buildControlButton(
                          icon: _subtitleMode == SubtitleMode.off 
                            ? Icons.subtitles_outlined
                            : Icons.subtitles,
                          onPressed: _showSubtitleMenu,
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
                      backgroundColor: Colors.white.withValues(alpha: 0.3),
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
        color: Colors.black.withValues(alpha: 0.5),
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
              final navContext = context;
              await _exoController?.switchAudioByIndices(
                rendererIndex: track['rendererIndex'] ?? 0,
                groupIndex: track['groupIndex'] ?? 0,
                trackIndex: track['trackIndex'] ?? 0,
              );
              if (mounted) {
                // ignore: use_build_context_synchronously
                Navigator.pop(navContext);
              }
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
        color: Colors.black.withValues(alpha: 0.8),
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
                    color: AppTheme.primaryBlue.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title ?? widget.channel?.name ?? 'Video',
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
                      if (widget.subtitle != null)
                        Text(
                          widget.subtitle!,
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