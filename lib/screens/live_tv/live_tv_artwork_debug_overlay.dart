import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:iptv_player/screens/live_tv/live_tv_artwork_resolver.dart';
import 'package:iptv_player/services/live_tv_artwork_service.dart';

/// Debug-only artwork cache diagnostics overlay.
class LiveTvArtworkDebugOverlay extends StatelessWidget {
  const LiveTvArtworkDebugOverlay({
    super.key,
    required this.artworkService,
    required this.artworkResolver,
  });

  final LiveTvArtworkService artworkService;
  final LiveTvArtworkResolver artworkResolver;

  @override
  Widget build(BuildContext context) {
    if (!kDebugMode) return const SizedBox.shrink();

    return Positioned(
      top: 4,
      right: 4,
      child: IgnorePointer(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
          decoration: BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            '${artworkService.diagnosticSummary}\n'
            'Cards: ${artworkResolver.diagCardArtHit} hit / '
            '${artworkResolver.diagCardArtMiss} miss / '
            '${artworkResolver.diagCardNoProgram} noProg / '
            '${artworkResolver.diagCardValidationReject} valRej\n'
            'Hero: ${artworkResolver.diagHeroArtHit} hit / '
            '${artworkResolver.diagHeroArtMiss} miss / '
            '${artworkResolver.diagHeroValidationReject} valRej\n'
            'Cache: ${artworkService.programArtworkCacheSize} id / '
            '${artworkService.titleArtworkCacheSize} title',
            style: const TextStyle(
              color: Colors.greenAccent,
              fontSize: 9,
              fontFamily: 'monospace',
            ),
          ),
        ),
      ),
    );
  }
}
