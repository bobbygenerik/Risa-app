import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:go_router/go_router.dart';
import '../models/channel.dart';
import '../models/content.dart';
import '../widgets/live_subtitle_overlay.dart';
import '../services/integrated_transcription_service.dart';
import '../providers/settings_provider.dart';
import '../providers/content_provider.dart';
import '../utils/app_theme.dart';

enum SubtitleMode { off, regular, liveTranslation }

class EnhancedVideoPlayerScreen extends StatefulWidget {
  final Channel? channel;
  final Content? content;
  final String? streamUrl;
  final String? videoUrl;
  final String? title;
  final String? subtitle;
  final bool isLive;

  const EnhancedVideoPlayerScreen({
    super.key,
    this.channel,
    this.content,
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
  VlcPlayerController? _vlcController;
  bool _isLoading = true;
  bool _showControls = true;
  bool _isPlaying = false;
  bool _showGuide = false;
  double _progress = 0.0;
  SubtitleMode _subtitleMode = SubtitleMode.off;
  IntegratedTranscriptionService? _transcriptionService;
  
  @override
  void initState() {
    super.initState();
    _transcriptionService = Provider.of<IntegratedTranscriptionService>(context, listen: false);
    _initializePlayer();
    _hideControlsAfterDelay();
  }

  void _initializePlayer() async {
    final url = widget.videoUrl ?? widget.content?.videoUrl ?? widget.streamUrl ?? widget.channel?.url ?? '';
    final settings = Provider.of<SettingsProvider>(context, listen: false);
    await settings.initialize();
    
    final hwAccel = settings.hardwareAcceleration;
    final hwDecoding = settings.hardwareDecoding;
    final rememberPosition = settings.rememberPlaybackPosition;
    
    _vlcController = VlcPlayerController.network(
      url,
      hwAcc: hwAccel ? HwAcc.full : HwAcc.disabled,
      autoPlay: true,
      options: VlcPlayerOptions(
        advanced: VlcAdvancedOptions([
          if (hwDecoding) VlcAdvancedOptions.networkCaching(300),
        ]),
      ),
    );
    
    await _vlcController!.initialize();
    setState(() => _isLoading = false);
    
    // Restore saved position for VOD content
    if (!widget.isLive && rememberPosition) {
      final prefs = await SharedPreferences.getInstance();
      final key = widget.content?.id ?? widget.title ?? url;
      final savedPosition = prefs.getInt('position_$key');
      if (savedPosition != null && savedPosition > 0) {
        await _vlcController!.seekTo(Duration(milliseconds: savedPosition));
      }
    }
    
    // Listen to player state changes
    _vlcController!.addListener(() {
      if (mounted) {
        final isPlaying = _vlcController!.value.isPlaying;
        final position = _vlcController!.value.position;
        final duration = _vlcController!.value.duration;
        
        setState(() {
          _isPlaying = isPlaying;
          if (duration.inMilliseconds > 0) {
            _progress = position.inMilliseconds / duration.inMilliseconds;
          }
        });
        
        // Handle video ended
        if (!isPlaying && position == duration && duration.inMilliseconds > 0) {
          _handleVideoEnded();
        }
      }
    });
  }
  
  void _handleVideoEnded() async {
    final settings = Provider.of<SettingsProvider>(context, listen: false);
    final autoPlayNext = settings.autoPlayNextEpisode;
    
    // Only for VOD content, not live streams
    if (!widget.isLive && autoPlayNext && widget.content != null) {
      final contentProvider = Provider.of<ContentProvider>(context, listen: false);
      final nextEpisode = contentProvider.getNextEpisode(widget.content!.id);
      
      if (nextEpisode != null) {
        // Navigate to next episode
        context.pushReplacement('/player', extra: {
          'content': nextEpisode,
          'videoUrl': nextEpisode.videoUrl,
          'title': nextEpisode.displayTitle,
          'isLive': false,
        });
      }
    }
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
      _vlcController?.pause();
    } else {
      _vlcController?.play();
    }
  }

  void _rewind() async {
    if (_vlcController != null) {
      final currentPos = _vlcController!.value.position;
      final newPos = currentPos - const Duration(seconds: 10);
      if (newPos.inMilliseconds > 0) {
        await _vlcController!.seekTo(newPos);
      }
    }
  }

  void _fastForward() async {
    if (_vlcController != null) {
      final currentPos = _vlcController!.value.position;
      final duration = _vlcController!.value.duration;
      final newPos = currentPos + const Duration(seconds: 10);
      if (newPos < duration) {
        await _vlcController!.seekTo(newPos);
      }
    }
  }

  void _toggleAudio() async {
    if (_vlcController != null) {
      final tracks = await _vlcController!.getAudioTracks();
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
    
    try {
      if (mode == SubtitleMode.liveTranslation && _transcriptionService != null) {
        _transcriptionService!.setTranslationEnabled(true);
        final streamUrl = widget.videoUrl ?? widget.channel?.url;
        if (streamUrl != null) {
          await _transcriptionService!.startTranscription();
        }
      } else if (_transcriptionService != null) {
        await _transcriptionService!.stopTranscription();
      }
    } catch (e) {
      debugPrint('TTS/Transcription error: $e');
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
    _saveCurrentPosition();
    try {
      _transcriptionService?.stopTranscription();
    } catch (e) {
      debugPrint('TTS cleanup error: $e');
    }
    _vlcController?.dispose();
    super.dispose();
  }
  
  void _saveCurrentPosition() async {
    if (!widget.isLive && _vlcController != null) {
      final settings = Provider.of<SettingsProvider>(context, listen: false);
      
      if (settings.rememberPlaybackPosition) {
        final position = _vlcController!.value.position;
        final key = widget.content?.id ?? widget.title ?? widget.videoUrl ?? widget.streamUrl ?? widget.channel?.url ?? '';
        final prefs = await SharedPreferences.getInstance();
        await prefs.setInt('position_$key', position.inMilliseconds);
        
        // Update watch progress for content
        if (widget.content != null && mounted) {
          final contentProvider = Provider.of<ContentProvider>(context, listen: false);
          final duration = _vlcController!.value.duration;
          if (duration.inMilliseconds > 0) {
            final progress = position.inMilliseconds / duration.inMilliseconds;
            await contentProvider.updateWatchProgress(widget.content!.id, progress);
          }
        }
      }
    }
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
            if (_vlcController != null)
              Center(
                child: VlcPlayer(
                  controller: _vlcController!,
                  aspectRatio: 16 / 9,
                  placeholder: const Center(
                    child: CircularProgressIndicator(color: Colors.white),
                  ),
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

  void _showAudioTrackDialog(Map<dynamic, dynamic> tracks) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.black87,
        title: const Text('Audio Tracks', style: TextStyle(color: Colors.white)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: tracks.entries.map((entry) => ListTile(
            title: Text(
              entry.value ?? 'Track ${entry.key}',
              style: const TextStyle(color: Colors.white),
            ),
            onTap: () async {
              await _vlcController?.setAudioTrack(entry.key);
              if (mounted) {
                Navigator.of(context).pop();
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