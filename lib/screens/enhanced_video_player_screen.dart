import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../models/channel.dart';
import '../models/content.dart';
import '../utils/debug_helper.dart';
import '../widgets/live_subtitle_overlay.dart';
import '../services/integrated_transcription_service.dart';

import 'package:wakelock_plus/wakelock_plus.dart';
import 'package:video_player/video_player.dart';
import '../widgets/exo_player_widget.dart';

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
  bool _isLoading = true;
  final ValueNotifier<VideoPlayerController?> _playerControllerNotifier = ValueNotifier(null);

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  IntegratedTranscriptionService? _transcriptionServiceRef;
  VoidCallback? _transcriptionListener;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final service = Provider.of<IntegratedTranscriptionService>(context);
    if (_transcriptionServiceRef != service) {
      // Remove old listener
      if (_transcriptionServiceRef != null && _transcriptionListener != null) {
        _transcriptionServiceRef!.removeListener(_transcriptionListener!);
      }
      _transcriptionServiceRef = service;
      _transcriptionListener = () {
        if (!mounted) return;
        final url = widget.videoUrl ?? widget.content?.videoUrl ?? widget.streamUrl ?? widget.channel?.url ?? '';
        if (service.isTranscribing && url.isNotEmpty) {
          // fire-and-forget: start transcription without awaiting here
          // ignore: unawaited_futures
          service.transcribeVideoStream(url);
        } else if (!service.isTranscribing) {
          // fire-and-forget: stopping transcription
          // ignore: unawaited_futures
          service.stopTranscription();
        }
      };
      _transcriptionServiceRef!.addListener(_transcriptionListener!);
    }
  }

  @override
  void dispose() {
    if (_transcriptionServiceRef != null && _transcriptionListener != null) {
      _transcriptionServiceRef!.removeListener(_transcriptionListener!);
    }
    super.dispose();
  }

  Future<void> _initializePlayer() async {
    final url = widget.videoUrl ?? widget.content?.videoUrl ?? widget.streamUrl ?? widget.channel?.url ?? '';

    debugLog('Video Player: Initializing with URL: $url');
    if (url.isEmpty) {
      if (mounted) {
        setState(() => _isLoading = false);
        _showErrorDialog('Invalid Stream', 'No stream URL provided for this channel.');
      }
      return;
    }

    // Prepare transcription service and detect any subtitle URL from channel metadata
    final service = Provider.of<IntegratedTranscriptionService>(context, listen: false);
    String? subtitleUrl;
    subtitleUrl ??= widget.channel?.attributes != null ? widget.channel!.attributes!['subtitleUrl'] : null;
    subtitleUrl ??= widget.channel?.attributes != null ? widget.channel!.attributes!['subtitle'] : null;

    // Keep wakelock active while playing
    await WakelockPlus.enable();

    // Auto-load VOD subtitles if found (fire-and-forget)
    if (subtitleUrl != null && subtitleUrl.isNotEmpty) {
      try {
        // fire-and-forget loading of VOD subtitles
        // ignore: unawaited_futures
        service.loadSrtFromUrl(subtitleUrl);
      } catch (_) {}
    }

    setState(() => _isLoading = false);
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
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            tooltip: 'Export SRT',
            onPressed: () => _showSrtDialog(),
            icon: const Icon(Icons.file_download, color: Colors.white),
          ),
        ],
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, color: Colors.white, size: 24),
        ),
        title: Text(
          widget.title ?? 'Video Player',
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : Stack(
              children: [
                // Player fills the available area
                Positioned.fill(
                  child: ExoPlayerWidget(
                    url: widget.videoUrl ?? widget.content?.videoUrl ?? widget.streamUrl ?? widget.channel?.url ?? '',
                    isLive: widget.isLive,
                    transcriptionService: Provider.of<IntegratedTranscriptionService>(context, listen: false),
                    controllerNotifier: _playerControllerNotifier,
                  ),
                ),
                // Live subtitle overlay positioned at bottom center
                Positioned(
                  left: 16,
                  right: 16,
                  bottom: 80,
                  child: LiveSubtitleOverlay(
                    showSubtitles: true,
                  ),
                ),
                // Simple control overlay that forwards to the internal VideoPlayerController
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      child: ValueListenableBuilder<VideoPlayerController?>(
                        valueListenable: _playerControllerNotifier,
                        builder: (context, controller, _) {
                          final isPlaying = controller?.value.isPlaying ?? false;
                          final duration = controller?.value.duration ?? Duration.zero;
                          final position = controller?.value.position ?? Duration.zero;

                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: controller == null
                                        ? null
                                        : () => controller.seekTo(position - const Duration(seconds: 10)),
                                    icon: const Icon(Icons.replay_10, color: Colors.white),
                                  ),
                                  IconButton(
                                    onPressed: controller == null
                                        ? null
                                        : () => isPlaying ? controller.pause() : controller.play(),
                                    icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow, color: Colors.white),
                                  ),
                                  IconButton(
                                    onPressed: controller == null
                                        ? null
                                        : () => controller.seekTo(position + const Duration(seconds: 10)),
                                    icon: const Icon(Icons.forward_10, color: Colors.white),
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: SliderTheme(
                                      data: SliderTheme.of(context).copyWith(trackHeight: 3),
                                      child: Slider(
                                        value: position.inMilliseconds.clamp(0, duration.inMilliseconds).toDouble(),
                                        max: (duration.inMilliseconds > 0 ? duration.inMilliseconds.toDouble() : 1.0),
                                        onChanged: controller == null
                                            ? null
                                            : (v) => controller.seekTo(Duration(milliseconds: v.toInt())),
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      // Open native fullscreen ExoPlayer view
                                      final url = widget.videoUrl ?? widget.content?.videoUrl ?? widget.streamUrl ?? widget.channel?.url ?? '';
                                      if (url.isNotEmpty) {
                                        Navigator.of(context).push(MaterialPageRoute(
                                          builder: (_) => ExoPlayerFullscreenScreen(
                                            videoUrl: url,
                                            isLive: widget.isLive,
                                            title: widget.title,
                                          ),
                                        ));
                                      }
                                    },
                                    icon: const Icon(Icons.fullscreen, color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ),
                // Player controls are provided by ExoPlayerWidget
              ],
            ),
    );
  }

  Future<void> _showSrtDialog() async {
    final service = Provider.of<IntegratedTranscriptionService>(context, listen: false);
    final srt = service.exportAsSRT();

    await showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.grey[900],
        title: const Text('Export SRT', style: TextStyle(color: Colors.white)),
        content: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SelectableText(
              srt.isEmpty ? '<No subtitles available>' : srt,
              style: const TextStyle(color: Colors.white70, fontSize: 12),
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () async {
              // Close the dialog first (use dialog context synchronously)
              Navigator.of(context).pop();
              await Clipboard.setData(ClipboardData(text: srt));
              if (!mounted) return;
              ScaffoldMessenger.of(this.context).showSnackBar(const SnackBar(content: Text('SRT copied to clipboard')));
            },
            child: const Text('Copy'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  // Manual SRT loading removed per user preference; VOD subtitles are automatically
  // used if provided by the content metadata. Function intentionally removed.
}
