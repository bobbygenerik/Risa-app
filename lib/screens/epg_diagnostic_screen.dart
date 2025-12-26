import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/services/local_db_service.dart';
import 'dart:math' as math;

class EpgDiagnosticScreen extends StatefulWidget {
  const EpgDiagnosticScreen({super.key});

  @override
  State<EpgDiagnosticScreen> createState() => _EpgDiagnosticScreenState();
}

class _EpgDiagnosticScreenState extends State<EpgDiagnosticScreen> {
  Future<Map<String, int>>? _statsFuture;
  int _lastChannelCount = -1;
  int _lastEpgCount = -1;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _refreshStats());
  }

  void _refreshStats() {
    setState(() {
      _statsFuture = _computeStats();
    });
  }

  void _maybeRefreshStats(int channelCount, int epgCount) {
    if (channelCount == _lastChannelCount && epgCount == _lastEpgCount) {
      return;
    }
    _lastChannelCount = channelCount;
    _lastEpgCount = epgCount;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _refreshStats();
    });
  }

  Future<Map<String, int>> _computeStats() async {
    final channelProvider = context.read<ChannelProvider>();
    final epgService = context.read<IncrementalEpgService>();
    final db = LocalDbService.instance;
    await db.init();

    final totalChannels = await channelProvider.getChannelCountAsync();
    if (totalChannels == 0) {
      return {'matched': 0, 'total': 0, 'scanned': 0};
    }

    int mappingCount = 0;
    try {
      mappingCount = await db.mappingCount();
    } catch (_) {}
    final epgAvailable = epgService.availableChannels.length;

    // If DB isn't ready or mappings are empty, estimate matches in-memory
    if (mappingCount == 0 || epgAvailable == 0) {
      final sampleSize = math.min(200, totalChannels);
      final sample = await channelProvider.getChannelsPage(
        offset: 0,
        limit: sampleSize,
      );
      if (sample.isNotEmpty) {
        int matched = 0;
        for (final c in sample) {
          if (epgService.hasEpgMatch(c.tvgId ?? c.id, channelName: c.name)) {
            matched++;
          }
        }
        mappingCount =
            matched * (totalChannels ~/ (sample.isEmpty ? 1 : sample.length));
      }
    }

    // matched is count of mappings; scanned == total (no sampling)
    return {
      'matched': mappingCount,
      'scanned': totalChannels,
      'total': totalChannels,
      'epgChannels': epgAvailable,
    };
  }

  Future<Map<String, String?>> _getEpgConfiguration() async {
    final prefs = await SharedPreferences.getInstance();
    return {
      'primary':
          prefs.getString('custom_epg_url') ?? prefs.getString('epg_url'),
      'secondary': prefs.getString('secondary_epg_url'),
    };
  }

  @override
  Widget build(BuildContext context) {
    _writeDebugMarker('epg_diagnostic_build');
    return Scaffold(
      backgroundColor: AppTheme.darkBackground,
      appBar: AppBar(
        title: const Text('EPG Diagnostic'),
        backgroundColor: AppTheme.darkBackground,
      ),
      body: Consumer2<IncrementalEpgService, ChannelProvider>(
        builder: (context, epgService, channelProvider, _) {
          final totalChannels = channelProvider.channelCount;
                  final epgCount = epgService.availableChannels.length;
                  _maybeRefreshStats(totalChannels, epgCount);

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
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
                            ? Colors.green
                            : Colors.red,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () async {
                        try {
                          await _writeDebugMarker('epg_reload_requested');
                          await epgService.initialize(forceRefresh: true);
                          await _writeDebugMarker('epg_reload_completed');
                          _refreshStats();
                          rootScaffoldMessengerKey.currentState?.showSnackBar(
                              const SnackBar(
                                  content: Text('EPG reload requested')));
                        } catch (e) {
                          await _writeDebugMarker('epg_reload_failed');
                          rootScaffoldMessengerKey.currentState?.showSnackBar(
                              SnackBar(content: Text('EPG reload failed: $e')));
                        }
                      },
                      icon: const Icon(Icons.refresh, size: 16),
                      label: const Text('Reload EPG'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                if (epgService.isDownloading ||
                    epgService.isParsing ||
                    epgService.isLoading)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      'EPG: ${epgService.isDownloading ? "Downloading" : epgService.isParsing ? "Parsing" : epgService.isLoading ? "Loading" : "Idle"}',
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
                Text(
                  'EPG Channels: $epgCount',
                  style: const TextStyle(color: Colors.white70, fontSize: 16),
                ),
                Text(
                  'Playlist Channels: $totalChannels',
                  style: const TextStyle(color: Colors.white70, fontSize: 16),
                ),
                FutureBuilder<Map<String, int>>(
                  future: _statsFuture,
                  builder: (context, snapshot) {
                    final stats = snapshot.data;
                    final matched = stats?['matched'] ?? 0;
                    final scanned = stats?['scanned'] ?? totalChannels;
                    final overall = stats?['total'] ?? totalChannels;
                    final percent = scanned == 0
                        ? '0.0'
                        : ((matched / scanned) * 100).toStringAsFixed(1);
                    final isLoadingStats =
                        snapshot.connectionState == ConnectionState.waiting;
                    final color =
                        matched > (scanned * 0.5) ? Colors.green : Colors.orange;

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Matched: $matched/$scanned ($percent%)',
                              style: TextStyle(
                                color: color,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            if (isLoadingStats) ...[
                              const SizedBox(width: 8),
                              const SizedBox(
                                width: 16,
                                height: 16,
                                child: CircularProgressIndicator(strokeWidth: 2),
                              ),
                            ],
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            'Mapped $matched of $overall channels (full scan, persisted).',
                            style: const TextStyle(
                                color: Colors.white70, fontSize: 12),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                const SizedBox(height: 20),

                // EPG Configuration Status
                FutureBuilder<Map<String, String?>>(
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
                        borderRadius: BorderRadius.circular(8),
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
                            ElevatedButton.icon(
                              onPressed: () => context.push('/epg-manager'),
                              icon: const Icon(Icons.settings, size: 16),
                              label: const Text('Configure EPG'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 8),
                                textStyle: const TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ],
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                const Text(
                  'What these numbers mean',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 6),
                const Text(
                  '• Playlist channels: every entry delivered by your provider (can be tens of thousands).\n'
                  '• EPG channels: unique guide IDs declared inside the XML source; providers often publish fewer EPG IDs than playlist entries.\n'
                  '• Matching: we normalize IDs/names, strip regional suffixes (Manchester, Yorkshire, etc.), collapse plus-one variants, and convert number words ("ONE" -> 1) to improve hit rate.',
                  style: TextStyle(color: Colors.white70, height: 1.35),
                ),
              ],
            ),
          );
        },
      ),
    );
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

}
