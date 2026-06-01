part of '../enhanced_video_player_screen.dart';

extension EnhancedVideoPlayerSubtitles on _EnhancedVideoPlayerScreenState {
Future<void> _showRegularSubtitlePicker() async {
  Navigator.pop(context);
  String captionText = '';
  // VLC doesn't expose embedded captions through this UI yet.
  if (captionText.isEmpty) {
    showAppSnackBar(
      context,
      const SnackBar(content: Text('No embedded subtitles detected yet')),
    );
    return;
  }
  final selected = await showDialog<bool>(
    context: context,
    builder: (context) => Dialog(
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
              'Embedded Subtitles',
              Icons.closed_caption,
              false,
              () => Navigator.pop(context, true),
              autofocus: true,
            ),
            _buildMenuOption(
              'Cancel',
              Icons.close,
              false,
              () => Navigator.pop(context, false),
            ),
          ],
        ),
      ),
    ),
  );
  if (selected == true) {
    _setSubtitleMode(EnhancedSubtitleMode.regular);
  }
}

Widget _buildRegularSubtitleOverlay() {
  // VLC handles subtitles internally
  return const SizedBox.shrink();
}
}
