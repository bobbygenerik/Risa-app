part of '../epg_diagnostic_screen.dart';

extension EpgDiagnosticEpgTab on _EpgDiagnosticScreenState {
  Widget _buildEpgDiagnosticsTab(
    BuildContext context,
    IncrementalEpgService epgService,
    ChannelProvider channelProvider,
    int displayChannels,
    int displayEpg,
  ) {
    final isEpgBusy = epgService.isDownloading ||
        epgService.isParsing ||
        epgService.isLoading;
    final fullScanPercent =
        _fullScanTotal == 0 ? 0.0 : (_fullScanMatched / _fullScanTotal) * 100.0;
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: FocusTraversalGroup(
        policy: WidgetOrderTraversalPolicy(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDiagnosticCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'EPG Status: ${_epgStatusSummary(epgService)}',
                        style: TextStyle(
                          color:
                              _epgStatusSummary(epgService).startsWith('Loaded')
                                  ? AppTheme.accentGreen
                                  : _epgStatusSummary(epgService) == 'Partial'
                                      ? AppTheme.accentOrange
                                      : AppTheme.accentOrange,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 160,
                            child: BrandPrimaryButton(
                              focusNode: _reloadFocus,
                              onPressed: () async {
                                final messenger =
                                    ScaffoldMessenger.maybeOf(context);
                                try {
                                  await _writeDebugMarker(
                                      'epg_reload_requested');
                                  debugLog(
                                      'EPG: Force reload initiated from diagnostic screen');

                                  // Clear all EPG state before reload
                                  await epgService.clearAllData(
                                      clearUrls: false,
                                      clearSavedPlaylists: false);
                                  debugLog('EPG: Cleared EPG data');

                                  // Force fresh download and parse
                                  await epgService.initialize(
                                      forceRefresh: true);
                                  debugLog('EPG: Reload completed');

                                  await _writeDebugMarker(
                                      'epg_reload_completed');
                                  if (!mounted) return;
                                  _refreshStats();
                                  if (!mounted) return;
                                  _deliverSnackBar(
                                    messenger,
                                    const SnackBar(
                                        content: Text('EPG reload completed')),
                                  );
                                } catch (e) {
                                  await _writeDebugMarker('epg_reload_failed');
                                  if (!mounted) return;
                                  _deliverSnackBar(
                                    messenger,
                                    SnackBar(
                                        content: Text(
                                            'EPG reload failed: ${e.toString()}')),
                                  );
                                }
                              },
                              icon: Icons.refresh,
                              label: 'Reload EPG',
                              expand: true,
                              minHeight: 36,
                            ),
                          ),
                          const SizedBox(width: 10),
                          SizedBox(
                            width: 140,
                            child: BrandPrimaryButton(
                              onPressed: () {
                                if (_fullScanInFlight) return;
                                unawaited(_runFullScan());
                              },
                              icon: Icons.find_in_page,
                              label: _fullScanInFlight
                                  ? 'Scanning...'
                                  : 'Full Scan',
                              expand: true,
                              minHeight: 36,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  if (isEpgBusy) ...[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'EPG: ${_formatEpgStatus(epgService)}',
                            style: const TextStyle(color: Colors.white70),
                          ),
                          const SizedBox(height: 8),
                          LinearProgressIndicator(
                            value: epgService.epgProgress > 0.02
                                ? epgService.epgProgress
                                : null,
                            color: AppTheme.primaryBlue,
                            backgroundColor: Colors.white12,
                            minHeight: 6,
                          ),
                          if (epgService.epgProgress > 0.02) ...[
                            const SizedBox(height: 4),
                            Text(
                              '${(epgService.epgProgress * 100).round()}% complete',
                              style: const TextStyle(
                                color: Colors.white54,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ],
                  if (epgService.error != null) ...[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text('EPG Error: ${epgService.error}',
                          style: const TextStyle(color: Colors.redAccent)),
                    ),
                  ],
                  const SizedBox(height: 4),
                  Text(
                    'EPG Channels: $displayEpg',
                    style: const TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  Text(
                    'Channels With Program Data: ${epgService.loadedProgramChannelCount}',
                    style: const TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  Text(
                    'Playlist Channels: $displayChannels',
                    style: const TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  FutureBuilder<Map<String, int>>(
                    future: _statsFuture,
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        debugLog(
                            'EPG Diagnostic stats error: ${snapshot.error}');
                        return Text(
                          'Failed to compute stats: ${snapshot.error}',
                          style: const TextStyle(
                              color: Colors.redAccent, fontSize: 14),
                        );
                      }
                      if (!snapshot.hasData) {
                        if (isEpgBusy) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Match stats will update when EPG loading finishes.',
                              style: TextStyle(
                                color: Colors.white.withValues(alpha: 0.6),
                                fontSize: 14,
                              ),
                            ),
                          );
                        }
                        return const Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        );
                      }
                      final data = snapshot.data!;
                      final matched = data['matched'] ?? 0;
                      final total = data['total'] ?? 0;
                      final scanned = data['scanned'] ?? 0;
                      final epgChannels = data['epgChannels'] ?? 0;
                      final loadedProgramChannels =
                          data['loadedProgramChannels'] ?? 0;
                      final estimated = data['estimated'] == 1;
                      final matchRate =
                          total == 0 ? 0.0 : (matched / total) * 100.0;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 12),
                          LinearProgressIndicator(
                            value: total == 0 ? 0 : matched / total,
                            color: AppTheme.primaryBlue,
                            backgroundColor: Colors.white12,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Matches: $matched / $total (${matchRate.toStringAsFixed(1)}%) '
                            '(${estimated ? "sampled/projection" : "actual scan"}, '
                            '$scanned scanned, $epgChannels guide ids, '
                            '$loadedProgramChannels channels with programs)',
                            style: const TextStyle(
                                color: Colors.white70, fontSize: 12),
                          ),
                          if (_fullScanInFlight) ...[
                            const SizedBox(height: 6),
                            LinearProgressIndicator(
                              value: _fullScanProgress,
                              color: AppTheme.accentGreen,
                              backgroundColor: Colors.white12,
                            ),
                            const SizedBox(height: 6),
                            Text(
                              'Full scan: $_fullScanMatched / $_fullScanTotal '
                              '(${fullScanPercent.toStringAsFixed(1)}%)',
                              style: const TextStyle(
                                  color: Colors.white70, fontSize: 12),
                            ),
                          ] else if (_fullScanTotal > 0) ...[
                            const SizedBox(height: 6),
                            Text(
                              'Full scan: $_fullScanMatched / $_fullScanTotal '
                              '(${fullScanPercent.toStringAsFixed(1)}%)'
                              '${_fullScanDuration == null ? "" : " in ${_formatDuration(_fullScanDuration!)}"}',
                              style: const TextStyle(
                                  color: Colors.white70, fontSize: 12),
                            ),
                          ],
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
            _buildDiagnosticCard(
              child: FutureBuilder<Map<String, String?>>(
                future: _getEpgConfiguration(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) return const SizedBox.shrink();
                  final config = snapshot.data!;
                  final primaryUrl = config['primary'];
                  final secondaryUrl = config['secondary'];
                  return Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: (primaryUrl?.isNotEmpty == true)
                          ? Colors.green.withAlpha(50)
                          : Colors.red.withAlpha(50),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: (primaryUrl?.isNotEmpty == true)
                            ? Colors.green
                            : Colors.red,
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'EPG Configuration',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Primary EPG URL: ${primaryUrl?.isNotEmpty == true ? "✓ Configured" : "❌ Not configured"}',
                          style: TextStyle(
                            color: (primaryUrl?.isNotEmpty == true)
                                ? Colors.green
                                : Colors.red,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'Secondary EPG URL: ${secondaryUrl?.isNotEmpty == true ? "✓ Configured" : "❌ Not configured"}',
                          style: TextStyle(
                            color: (secondaryUrl?.isNotEmpty == true)
                                ? Colors.green
                                : Colors.orange,
                            fontSize: 14,
                          ),
                        ),
                        if (primaryUrl?.isEmpty != false) ...[
                          const SizedBox(height: 8),
                          const Text(
                            '⚠️ No EPG URL configured. Xtream/M3U should provide one automatically, but you can paste a guide URL if your provider omits it.',
                            style: TextStyle(
                                color: Colors.orange,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              width: 160,
                              child: BrandSecondaryButton(
                                focusNode: _configureFocus,
                                onPressed: () => context.push('/epg-manager'),
                                icon: Icons.settings,
                                label: 'Configure EPG',
                                expand: true,
                                minHeight: 32,
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                  );
                },
              ),
            ),
            _buildDiagnosticCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'What these numbers mean',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  Text(
                    '• Playlist channels: every entry delivered by your provider (can be tens of thousands).\n'
                    '• EPG channels: unique guide IDs declared inside the XML source; providers often publish fewer EPG IDs than playlist entries.\n'
                    '• Matching: we normalize IDs/names, strip regional suffixes (Manchester, Yorkshire, etc.), collapse plus-one variants, and convert number words ("ONE" -> 1) to improve hit rate.',
                    style: TextStyle(color: Colors.white70, height: 1.35),
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
                        'Match Samples',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Loaded: ${_pageEntries.length}',
                        style: const TextStyle(color: Colors.white70),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      _buildMatchFilterChip(
                        label: 'All',
                        filter: _MatchFilter.all,
                        focusNode: _chipFocusNodes[0],
                      ),
                      _buildMatchFilterChip(
                        label: 'Matched',
                        filter: _MatchFilter.matched,
                        focusNode: _chipFocusNodes[1],
                      ),
                      _buildMatchFilterChip(
                        label: 'Unmatched',
                        filter: _MatchFilter.unmatched,
                        focusNode: _chipFocusNodes[2],
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  if (_pageEntries.isEmpty)
                    if (_pageLoading)
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: CircularProgressIndicator(),
                        ),
                      )
                    else
                      const Text(
                        'No samples loaded yet.',
                        style: TextStyle(color: Colors.white70),
                      )
                  else
                    Column(
                      children: [
                        for (final entry in _pageEntries)
                          _buildMatchEntryRow(entry),
                      ],
                    ),
                  const SizedBox(height: 12),
                  if (_pageLoading)
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: CircularProgressIndicator(),
                      ),
                    )
                  else if (_pageHasMore)
                    Center(
                      child: SizedBox(
                        width: 160,
                        child: BrandSecondaryButton(
                          focusNode: _loadMoreFocus,
                          onPressed: _loadNextMatchPage,
                          icon: Icons.add,
                          label: 'Load more',
                          expand: true,
                          minHeight: 34,
                        ),
                      ),
                    )
                  else
                    const Center(
                      child: Text(
                        'No more results.',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
