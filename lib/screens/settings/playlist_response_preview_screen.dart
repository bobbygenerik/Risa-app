import 'package:flutter/material.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/widgets/settings_tile_widgets.dart';

class PlaylistResponsePreviewScreen extends StatelessWidget {
  const PlaylistResponsePreviewScreen({
    super.key,
    required this.diagnostics,
    required this.preview,
  });

  final String diagnostics;
  final String preview;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkBackground,
      appBar: AppBar(
        title: const Text('Playlist Response Preview'),
        backgroundColor: Colors.white.withAlpha((0.08 * 255).round()),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        children: [
          const SettingsSectionHeader(
            title: 'Diagnostics',
            subtitle: 'Response summary and raw preview',
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.black.withAlpha((0.25 * 255).round()),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.white12),
            ),
            child: Text(
              diagnostics,
              style: const TextStyle(
                color: AppTheme.textSecondary,
                fontFamily: 'monospace',
                fontSize: 12,
                height: 1.4,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const SettingsSectionHeader(
            title: 'Preview',
            subtitle: 'First part of the response payload',
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.black.withAlpha((0.2 * 255).round()),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.white12),
            ),
            child: Text(
              preview,
              style: const TextStyle(
                color: AppTheme.textPrimary,
                fontFamily: 'monospace',
                fontSize: 12,
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
