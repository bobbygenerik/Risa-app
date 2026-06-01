part of '../epg_diagnostic_screen.dart';

extension EpgDiagnosticSystemTab on _EpgDiagnosticScreenState {
  Widget _buildSystemDiagnosticsTab(
    BuildContext context,
    IncrementalEpgService epgService,
    ChannelProvider channelProvider,
  ) {
    final serviceStatus = ServiceValidator.getServiceStatus();
    final artworkSnapshot = ArtworkDiagnostics.snapshot();
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildDiagnosticCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'SQLite / DB',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Channel DB: ${channelProvider.isDbReady ? "ready" : "not ready"}'
                  ' (disabled=${channelProvider.isDbDisabled}, recovery=${channelProvider.isDbReadOnlyRecoveryInFlight})',
                  style: const TextStyle(color: Colors.white70, fontSize: 13),
                ),
                Text(
                  'Channel count: ${channelProvider.dbChannelCount} (visible=${channelProvider.channelCount})',
                  style: const TextStyle(color: Colors.white70, fontSize: 13),
                ),
                const SizedBox(height: 6),
                Text(
                  'EPG DB: ${epgService.isDbReady ? "ready" : "not ready"}'
                  ' (disabled=${epgService.isDbDisabled}, closed=${epgService.isDbClosedDetected})',
                  style: const TextStyle(color: Colors.white70, fontSize: 13),
                ),
                Text(
                  'EPG state: loading=${epgService.isLoading} parsing=${epgService.isParsing} downloading=${epgService.isDownloading}',
                  style: const TextStyle(color: Colors.white70, fontSize: 13),
                ),
              ],
            ),
          ),
          _buildDiagnosticCard(
            child: FutureBuilder<Map<String, String>>(
              future: _getCacheStats(),
              builder: (context, snapshot) {
                final cache = snapshot.data;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Caching',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'EPG cache duration: ${epgService.cacheDuration.inHours}h (prefs=${cache?['cacheHours'] ?? '...'}h)',
                      style:
                          const TextStyle(color: Colors.white70, fontSize: 13),
                    ),
                    Text(
                      'Last EPG cache time: ${cache?['cacheTime'] ?? '...'}',
                      style:
                          const TextStyle(color: Colors.white70, fontSize: 13),
                    ),
                    Text(
                      'Last EPG cache URL: ${cache?['cacheUrl'] ?? '...'}',
                      style:
                          const TextStyle(color: Colors.white70, fontSize: 13),
                    ),
                  ],
                );
              },
            ),
          ),
          _buildDiagnosticCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Image Fetching',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Regular priority: TVDB → TMDB → Fanart',
                  style: const TextStyle(color: Colors.white70, fontSize: 13),
                ),
                Text(
                  'Sports priority: Sportradar → TheSportsDB → TVDB',
                  style: const TextStyle(color: Colors.white70, fontSize: 13),
                ),
                Text(
                  'Posters: hard-rejected for hero/cards',
                  style: const TextStyle(color: Colors.white70, fontSize: 13),
                ),
              ],
            ),
          ),
          _buildDiagnosticCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Service Availability',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() => _artworkDebugTick++);
                      },
                      child: const Text(
                        'Refresh',
                        style: TextStyle(color: AppTheme.primaryBlue),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                for (final entry in serviceStatus.entries)
                  Text(
                    '${entry.key}: ${entry.value ? "available" : "missing"}',
                    style: TextStyle(
                      color: entry.value
                          ? AppTheme.accentGreen
                          : AppTheme.accentOrange,
                      fontSize: 13,
                    ),
                  ),
              ],
            ),
          ),
          _buildDiagnosticCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Artwork Decisions',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                if (artworkSnapshot.entries.isEmpty)
                  const Text(
                    'No artwork decisions captured yet.',
                    style: TextStyle(color: Colors.white70, fontSize: 13),
                  )
                else ...[
                  Text(
                    'Recent: ${artworkSnapshot.entries.length} entries',
                    style: const TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    runSpacing: 6,
                    children: [
                      for (final entry in artworkSnapshot.sourceCounts.entries)
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: AppTheme.cardBackground,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Colors.white.withAlpha(30),
                              width: 1,
                            ),
                          ),
                          child: Text(
                            '${entry.key}: ${entry.value}',
                            style: const TextStyle(
                                color: Colors.white70, fontSize: 11),
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  for (final entry
                      in artworkSnapshot.entries.toList().reversed.take(20))
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            entry.program.isNotEmpty
                                ? entry.program
                                : '(unknown)',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            'source=${entry.source} result=${entry.result}',
                            style: const TextStyle(
                                color: Colors.white70, fontSize: 11),
                          ),
                          if (entry.url.isNotEmpty)
                            Text(
                              entry.url,
                              style: const TextStyle(
                                  color: Colors.white38, fontSize: 10),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                        ],
                      ),
                    ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
