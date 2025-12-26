import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:flutter/services.dart';
import 'package:iptv_player/utils/debug_helper.dart';

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
    final totalChannels = channelProvider.channelCount;

    if (totalChannels == 0 || epgService.availableChannels.isEmpty) {
      return {'matched': 0, 'total': totalChannels};
    }

    return channelProvider.computeEpgMatchStats(epgService);
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
          final epgChannels = epgService.availableChannels.take(10).toList();
          _maybeRefreshStats(totalChannels, epgCount);

          // Debug info for IncrementalEpgService
          if (totalChannels > 0 && epgCount > 0) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              _writeDebugMarker('epg_postframe_callback');
              print('=== INCREMENTAL EPG DEBUG ===');
              print('EPG available channels: ${epgService.availableChannels.length}');
              print('EPG loaded channels: ${epgService.loadedChannelCount}');
              print('Channel provider channels count: $totalChannels');

              // Test first few channels manually
              for (int i = 0; i < 5 && i < totalChannels; i++) {
                final channel = channelProvider.getChannelAt(i);
                final tvgId = channel.tvgId ?? channel.id;
                final hasEpg =
                    epgService.hasEpgMatch(tvgId, channelName: channel.name);
                print(
                    'Channel $i: "${channel.name}" (ID: "$tvgId") -> EPG: $hasEpg');
              }
              print('=== END INCREMENTAL EPG DEBUG ===');
            });
          }

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
                    final total = stats?['total'] ?? totalChannels;
                    final percent = total == 0
                        ? '0.0'
                        : ((matched / total) * 100).toStringAsFixed(1);
                    final isLoadingStats =
                        snapshot.connectionState == ConnectionState.waiting;
                    final color =
                        matched > (total * 0.5) ? Colors.green : Colors.orange;

                    return Row(
                      children: [
                        Text(
                          'Matched: $matched/$total ($percent%)',
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
                              '⚠️ No EPG URL configured! This is likely why only 10 channels are matching.',
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
                const SizedBox(height: 20),

                const Text(
                  'First 10 EPG Channel IDs:',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                ...epgChannels.take(10).map((id) => Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Text(
                        id,
                        style:
                            const TextStyle(color: Colors.green, fontSize: 14),
                      ),
                    )),

                const SizedBox(height: 20),
                const Text(
                  'First 10 Playlist Channels:',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                ...List.generate(previewCount, (index) {
                  final channel = channelProvider.getChannelAt(index);
                  final hasEpg = epgService.hasEpgMatch(
                    channel.tvgId ?? channel.id,
                    channelName: channel.name,
                  );
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: hasEpg
                            ? Colors.green.withAlpha(50)
                            : Colors.red.withAlpha(50),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name: ${channel.name}',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 14),
                          ),
                          Text(
                            'ID: ${channel.id}',
                            style: const TextStyle(
                                color: Colors.white70, fontSize: 12),
                          ),
                          if (channel.tvgId != null)
                            Text(
                              'TVG-ID: ${channel.tvgId}',
                              style: const TextStyle(
                                  color: Colors.white70, fontSize: 12),
                            ),
                          Text(
                            'EPG Match: ${hasEpg ? "YES" : "NO"}',
                            style: TextStyle(
                              color: hasEpg ? Colors.green : Colors.red,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ],
            ),
          );
        },
      ),
    );
  }

  Future<void> _writeDebugMarker(String name) async {
    try {
      final channel = MethodChannel('com.streamhub.iptv/debug_io');
      final filename = 'marker_${name}_${DateTime.now().toIso8601String().replaceAll(':', '-')}.txt';
      await channel.invokeMethod('writeFile', {'name': filename, 'content': name});
      debugLog('Wrote debug marker: $filename');
    } catch (e) {
      debugLog('Failed to write debug marker $name: $e');
    }
  }

}
