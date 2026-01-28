import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/services/service_validator.dart';
import 'package:iptv_player/utils/artwork_diagnostics.dart';
import 'dart:math' as math;
import 'package:iptv_player/widgets/brand_button.dart';
import 'package:iptv_player/widgets/tv_focusable.dart';

enum _MatchFilter { all, matched, unmatched }

class _MatchEntry {
  final Channel channel;
  final bool matched;
  final String id;

  const _MatchEntry({
    required this.channel,
    required this.matched,
    required this.id,
  });
}

class EpgDiagnosticScreen extends StatefulWidget {
  const EpgDiagnosticScreen({super.key});

  @override
  State<EpgDiagnosticScreen> createState() => _EpgDiagnosticScreenState();
}

class _EpgDiagnosticScreenState extends State<EpgDiagnosticScreen> {
  Future<Map<String, int>>? _statsFuture;
  int _lastChannelCount = -1;
  int _lastEpgCount = -1;
  int _diagnosticChannelCount = 0;
  int _diagnosticEpgCount = 0;
  int _artworkDebugTick = 0;
  bool _statsInFlight = false;
  DateTime? _lastRefreshAt;
  bool _fullScanInFlight = false;
  int _fullScanMatched = 0;
  int _fullScanTotal = 0;
  double _fullScanProgress = 0.0;
  Duration? _fullScanDuration;
  final List<_MatchEntry> _pageEntries = [];
  int _pageOffset = 0;
  bool _pageLoading = false;
  bool _pageHasMore = true;
  _MatchFilter _matchFilter = _MatchFilter.all;
  String _pageSignature = '';
  static const int _pageSize = 100;
  static const int _scanChunkSize = 200;
  final FocusNode _reloadFocus = FocusNode(debugLabel: 'EpgReload');
  final FocusNode _configureFocus = FocusNode(debugLabel: 'EpgConfigure');
  final FocusNode _loadMoreFocus = FocusNode(debugLabel: 'EpgLoadMore');
  final List<FocusNode> _chipFocusNodes = List.generate(
    3,
    (index) => FocusNode(debugLabel: 'EpgMatchChip$index'),
  );

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _refreshStats());
    WidgetsBinding.instance.addPostFrameCallback((_) => _requestInitialFocus());
  }

  void _refreshStats() {
    if (_statsInFlight) return;
    final epgService = context.read<IncrementalEpgService>();
    final channelProvider = context.read<ChannelProvider>();
    final isEpgBusy = epgService.isDownloading ||
        epgService.isParsing ||
        epgService.isLoading;
    if (isEpgBusy || channelProvider.isLoading) {
      return;
    }
    final now = DateTime.now();
    if (_lastRefreshAt != null &&
        now.difference(_lastRefreshAt!).inMilliseconds < 750) {
      return;
    }
    _lastRefreshAt = now;
    setState(() {
      _statsFuture = _computeStats();
    });
  }

  void _resetPagedMatches() {
    _pageEntries.clear();
    _pageOffset = 0;
    _pageHasMore = true;
    _pageLoading = false;
  }

  void _updatePageSignature(int channelCount, int epgCount) {
    final signature = '$channelCount|$epgCount|${_matchFilter.name}';
    if (_pageSignature == signature) return;
    _pageSignature = signature;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        setState(_resetPagedMatches);
      }
    });
  }

  Future<void> _loadNextMatchPage() async {
    if (_pageLoading || !_pageHasMore) return;
    final epgService = context.read<IncrementalEpgService>();
    final channelProvider = context.read<ChannelProvider>();
    final isEpgBusy = epgService.isDownloading ||
        epgService.isParsing ||
        epgService.isLoading;
    if (isEpgBusy || channelProvider.isLoading) return;
    setState(() => _pageLoading = true);

    final totalChannels = await channelProvider.getChannelCountAsync();
    final List<_MatchEntry> next = [];
    var offset = _pageOffset;
    var iterations = 0;

    try {
      while (
          next.length < _pageSize && offset < totalChannels && iterations < 5) {
        final batch = await channelProvider.getChannelsPage(
          offset: offset,
          limit: _scanChunkSize,
        );
        if (batch.isEmpty) break;
        offset += batch.length;
        for (final channel in batch) {
          final id = channel.epgLookupId;
          final matched =
              epgService.hasEpgMatch(id, channelName: channel.epgLookupName);
          final passes = _matchFilter == _MatchFilter.all ||
              (_matchFilter == _MatchFilter.matched && matched) ||
              (_matchFilter == _MatchFilter.unmatched && !matched);
          if (!passes) continue;
          next.add(_MatchEntry(channel: channel, matched: matched, id: id));
          if (next.length >= _pageSize) break;
        }
        iterations++;
      }
    } catch (e, st) {
      debugLog('EPG Diagnostic: load page failed: $e\n$st');
    }

    if (!mounted) return;
    setState(() {
      _pageEntries.addAll(next);
      _pageOffset = offset;
      _pageHasMore = _pageOffset < totalChannels;
      _pageLoading = false;
    });
  }

  void _maybeRefreshStats(
      int channelCount, int epgCount, bool isEpgBusy, bool isPlaylistBusy) {
    if (channelCount == _lastChannelCount && epgCount == _lastEpgCount) {
      return;
    }
    if (isEpgBusy || isPlaylistBusy) {
      return;
    }
    _lastChannelCount = channelCount;
    _lastEpgCount = epgCount;
    
    // Only refresh stats if enough time has passed to avoid rapid rebuilds
    final now = DateTime.now();
    if (_lastRefreshAt != null && now.difference(_lastRefreshAt!).inSeconds < 2) {
      return;
    }
    
    // Defer state update to post-frame to avoid setState during build
    Future.microtask(() {
      if (mounted) _refreshStats();
    });
  }

  void _requestInitialFocus() {
    if (_reloadFocus.hasFocus) return;
    _reloadFocus.requestFocus();
  }

  String _formatDuration(Duration duration) {
    final totalSeconds = duration.inSeconds;
    final minutes = (totalSeconds ~/ 60).toString().padLeft(2, '0');
    final seconds = (totalSeconds % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  Future<void> _runFullScan() async {
    if (_fullScanInFlight) return;
    final epgService = context.read<IncrementalEpgService>();
    final channelProvider = context.read<ChannelProvider>();
    final isEpgBusy = epgService.isDownloading ||
        epgService.isParsing ||
        epgService.isLoading;
    if (isEpgBusy || channelProvider.isLoading) return;
    setState(() {
      _fullScanInFlight = true;
      _fullScanMatched = 0;
      _fullScanTotal = 0;
      _fullScanProgress = 0.0;
      _fullScanDuration = null;
    });

    final startedAt = DateTime.now();
    final totalChannels = await channelProvider.getChannelCountAsync();
    const pageSize = 300;
    int processed = 0;
    int matched = 0;

    while (processed < totalChannels) {
      final batch = await channelProvider.getChannelsPage(
        offset: processed,
        limit: pageSize,
      );
      if (batch.isEmpty) break;
      for (final channel in batch) {
        final id = channel.epgLookupId;
        if (epgService.hasEpgMatch(id, channelName: channel.epgLookupName)) {
          matched++;
        }
      }
      processed += batch.length;
      if (!mounted) return;
      setState(() {
        _fullScanMatched = matched;
        _fullScanTotal = totalChannels;
        _fullScanProgress =
            totalChannels == 0 ? 0.0 : (processed / totalChannels).clamp(0.0, 1.0);
      });
      // Yield to keep UI responsive.
      await Future.delayed(const Duration(milliseconds: 1));
    }

    if (!mounted) return;
    setState(() {
      _fullScanMatched = matched;
      _fullScanTotal = totalChannels;
      _fullScanProgress = 1.0;
      _fullScanInFlight = false;
      _fullScanDuration = DateTime.now().difference(startedAt);
    });
  }

  Future<Map<String, int>> _computeStats() async {
    _statsInFlight = true;
    try {
      final channelProvider = context.read<ChannelProvider>();
      final epgService = context.read<IncrementalEpgService>();

      final totalChannels = await channelProvider.getChannelCountAsync();
      if (totalChannels == 0) {
        return {'matched': 0, 'total': 0, 'scanned': 0, 'epgChannels': 0};
      }

      final epgAvailable = epgService.availableChannels.length;
      if (mounted) {
        setState(() {
          _diagnosticChannelCount = totalChannels;
          _diagnosticEpgCount = epgAvailable;
        });
      }

      int mappingCount = 0;
      // Estimate matches in-memory to avoid DB locks during heavy parsing
      if (epgAvailable == 0) {
        return {
          'matched': 0,
          'scanned': totalChannels,
          'total': totalChannels,
          'epgChannels': epgAvailable,
        };
      } else {
        final sampleSize = math.min(200, totalChannels);
        try {
          final sample =
              channelProvider.getChannelSampleMapsByStride(sampleSize);
          if (sample.isNotEmpty) {
            final matched = epgService.estimateMatchesFast(sample);
            // Guard against division by zero - use sample.length if not empty, else 1
            final divisor = sample.isNotEmpty ? sample.length : 1;
            mappingCount = matched * (totalChannels ~/ divisor);
          }
        } catch (e, st) {
          debugLog('EPG Diagnostic: sampling failed: $e\n$st');
          mappingCount = 0;
        }
      }

      // matched is count of mappings; scanned == total (no sampling)
      return {
        'matched': mappingCount,
        'scanned': totalChannels,
        'total': totalChannels,
        'epgChannels': epgAvailable,
      };
    } catch (e, st) {
      debugLog('EPG Diagnostic: computeStats failed: $e\n$st');
      return {'matched': 0, 'total': 0, 'scanned': 0, 'epgChannels': 0};
    } finally {
      _statsInFlight = false;
    }
  }

  Future<Map<String, String?>> _getEpgConfiguration() async {
    final prefs = await SharedPreferences.getInstance();
    return {
      'primary':
          prefs.getString('custom_epg_url') ?? prefs.getString('epg_url'),
      'secondary': prefs.getString('secondary_epg_url'),
    };
  }

  Future<Map<String, String>> _getCacheStats() async {
    final prefs = await SharedPreferences.getInstance();
    int readIntPref(String key) {
      final raw = prefs.get(key);
      if (raw is int) return raw;
      if (raw is String) return int.tryParse(raw) ?? 0;
      return 0;
    }

    final cacheHours = readIntPref('epg_cache_duration');
    final cacheTime = readIntPref('epg_cache_time');
    final cacheUrl = prefs.getString('epg_cache_url') ?? '';
    final cacheTimeText = cacheTime == 0
        ? 'unknown'
        : DateTime.fromMillisecondsSinceEpoch(cacheTime).toString();
    return {
      'cacheHours': cacheHours.toString(),
      'cacheTime': cacheTimeText,
      'cacheUrl': cacheUrl,
    };
  }

  @override
  void dispose() {
    _reloadFocus.dispose();
    _configureFocus.dispose();
    _loadMoreFocus.dispose();
    for (final node in _chipFocusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _writeDebugMarker('epg_diagnostic_build');
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppTheme.darkBackground,
        appBar: AppBar(
          title: const Text('EPG Diagnostic'),
          backgroundColor: AppTheme.darkBackground,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              } else {
                context.go('/home');
              }
            },
          ),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'EPG'),
              Tab(text: 'System'),
            ],
          ),
        ),
        body: Consumer2<IncrementalEpgService, ChannelProvider>(
          builder: (context, epgService, channelProvider, _) {
            final totalChannels = channelProvider.channelCount;
            final epgCount = epgService.availableChannels.length;
            final isEpgBusy = epgService.isDownloading ||
                epgService.isParsing ||
                epgService.isLoading;
            final displayChannels = _diagnosticChannelCount > 0
                ? _diagnosticChannelCount
                : totalChannels;
            final displayEpg =
                _diagnosticEpgCount > 0 ? _diagnosticEpgCount : epgCount;
            _maybeRefreshStats(displayChannels, displayEpg, isEpgBusy,
                channelProvider.isLoading);
            _updatePageSignature(displayChannels, displayEpg);
            if (_pageEntries.isEmpty &&
                !_pageLoading &&
                _pageHasMore &&
                !isEpgBusy &&
                !channelProvider.isLoading) {
              // Defer loading to avoid build phase conflicts
              Future.microtask(() {
                if (mounted) {
                  _loadNextMatchPage();
                }
              });
            }

            return TabBarView(
              children: [
                _buildEpgDiagnosticsTab(
                  context,
                  epgService,
                  channelProvider,
                  displayChannels,
                  displayEpg,
                ),
                _buildSystemDiagnosticsTab(
                  context,
                  epgService,
                  channelProvider,
                ),
              ],
            );
          },
        ),
      ),
    );
  }

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
    final fullScanPercent = _fullScanTotal == 0
        ? 0.0
        : (_fullScanMatched / _fullScanTotal) * 100.0;
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
                        'EPG Status: ${epgService.availableChannels.isNotEmpty ? "Loaded" : "No Data"}',
                        style: TextStyle(
                          color: epgService.availableChannels.isNotEmpty
                              ? AppTheme.accentGreen
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
                                  await _writeDebugMarker('epg_reload_requested');
                                  debugLog(
                                      'EPG: Force reload initiated from diagnostic screen');

                                  // Clear all EPG state before reload
                                  await epgService.clearAllData(
                                      clearUrls: false,
                                      clearSavedPlaylists: false);
                                  debugLog('EPG: Cleared EPG data');

                                  // Force fresh download and parse
                                  await epgService.initialize(forceRefresh: true);
                                  debugLog('EPG: Reload completed');

                                  await _writeDebugMarker('epg_reload_completed');
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
                              label: _fullScanInFlight ? 'Scanning...' : 'Full Scan',
                              expand: true,
                              minHeight: 36,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  if (isEpgBusy)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text(
                        'EPG: ${_formatEpgStatus(epgService)}',
                        style: const TextStyle(color: Colors.white70),
                      ),
                    ),
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
                    style: const TextStyle(
                        color: Colors.white70, fontSize: 16),
                  ),
                  Text(
                    'Playlist Channels: $displayChannels',
                    style: const TextStyle(
                        color: Colors.white70, fontSize: 16),
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
                            '($scanned scanned, $epgChannels guide entries)',
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

  String _formatEpgStatus(IncrementalEpgService epgService) {
    // Use the label directly if available (shows MB for chunked downloads)
    final label = epgService.epgProgressLabel;
    if (label != null && label.isNotEmpty) {
      return label;
    }
    // Fallback to percentage for known-length downloads
    final pct = (epgService.epgProgress * 100).round().clamp(0, 100);
    if (epgService.isDownloading) return 'Downloading ($pct%)';
    if (epgService.isParsing) return 'Parsing ($pct%)';
    if (epgService.isLoading) return 'Loading ($pct%)';
    return 'Idle';
  }

  void _deliverSnackBar(ScaffoldMessengerState? messenger, SnackBar snackBar) {
    final target = messenger ?? rootScaffoldMessengerKey.currentState;
    target?.showSnackBar(snackBar);
  }

  Future<void> _writeDebugMarker(String name) async {
    // Disable writing marker files to Downloads by default — this was causing
    // noisy marker files on user devices. Keep a local debug log instead.
    try {
      debugLog('Debug marker: $name');
    } catch (e) {
      // Swallow errors to avoid affecting diagnostics UI
    }
  }

  Widget _buildDiagnosticCard({required Widget child}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.cardBackground,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: Colors.white.withAlpha(60),
          width: 1,
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 24,
            offset: Offset(0, 12),
          ),
        ],
      ),
      child: child,
    );
  }

  Widget _buildMatchEntryRow(_MatchEntry entry) {
    final statusColor = entry.matched ? Colors.green : Colors.orange;
    return TVFocusable(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppTheme.cardBackground,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.white.withAlpha(40),
            width: 1,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              entry.matched ? Icons.check_circle : Icons.error,
              color: statusColor,
              size: 18,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    entry.channel.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'ID: ${entry.id}',
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    entry.matched ? 'Matched' : 'No match found',
                    style: TextStyle(
                      color: statusColor,
                      fontSize: 12,
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

  Widget _buildMatchFilterChip({
    required String label,
    required _MatchFilter filter,
    required FocusNode focusNode,
  }) {
    final isSelected = _matchFilter == filter;
    return TVFocusable(
      focusNode: focusNode,
      onPressed: () {
        setState(() {
          _matchFilter = filter;
          _resetPagedMatches();
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected
              ? AppTheme.primaryBlue
              : AppTheme.cardBackground.withAlpha((0.85 * 255).round()),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: isSelected
                ? AppTheme.primaryBlue
                : Colors.white.withAlpha(40),
            width: 1,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.white70,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
          ),
        ),
      ),
    );
  }

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
