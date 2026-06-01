import 'dart:async';

import 'package:flutter/material.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/widgets/cached_image.dart';

/// Bottom sheet context menu for a channel long-press on the EPG guide.
Future<void> showEpgChannelContextSheet({
  required BuildContext context,
  required Channel channel,
  required bool isFavorite,
  required bool hasMapping,
  required String? currentMapping,
  required VoidCallback onToggleFavorite,
  required VoidCallback onMatchEpg,
  required VoidCallback onRemoveMapping,
}) {
  return showModalBottomSheet<void>(
    context: context,
    backgroundColor: const Color(0xFF1E1E2E),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (sheetContext) => SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                CachedChannelLogo(
                  logoUrl: channel.logoUrl,
                  channelName: channel.name,
                  tvgId: channel.tvgId,
                  size: 40,
                  fallbackIcon: Icons.tv,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        channel.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        'ID: ${channel.epgLookupId}',
                        style: const TextStyle(
                            color: AppTheme.textSecondary, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          ListTile(
            leading: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: AppTheme.accentPink,
            ),
            title: Text(
                isFavorite ? 'Remove from Favorites' : 'Add to Favorites'),
            onTap: () {
              Navigator.pop(sheetContext);
              onToggleFavorite();
            },
          ),
          ListTile(
            leading: const Icon(Icons.link, color: AppTheme.primaryBlue),
            title: const Text('Match EPG Channel'),
            subtitle: hasMapping
                ? Text(
                    'Currently: $currentMapping',
                    style: const TextStyle(fontSize: 12))
                : null,
            onTap: () {
              Navigator.pop(sheetContext);
              onMatchEpg();
            },
          ),
          if (hasMapping)
            ListTile(
              leading: const Icon(Icons.link_off, color: AppTheme.accentRed),
              title: const Text('Remove EPG Mapping'),
              onTap: () {
                Navigator.pop(sheetContext);
                onRemoveMapping();
              },
            ),
          const SizedBox(height: 8),
        ],
      ),
    ),
  );
}
