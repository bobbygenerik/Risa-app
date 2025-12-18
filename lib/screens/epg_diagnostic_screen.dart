import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/utils/app_theme.dart';

class EpgDiagnosticScreen extends StatelessWidget {
  const EpgDiagnosticScreen({super.key});
  
  Future<Map<String, String?>> _getEpgConfiguration() async {
    final prefs = await SharedPreferences.getInstance();
    return {
      'primary': prefs.getString('custom_epg_url') ?? prefs.getString('epg_url'),
      'secondary': prefs.getString('secondary_epg_url'),
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkBackground,
      appBar: AppBar(
        title: const Text('EPG Diagnostic'),
        backgroundColor: AppTheme.darkBackground,
      ),
      body: Consumer2<IncrementalEpgService, ChannelProvider>(
        builder: (context, epgService, channelProvider, _) {
          final channels = channelProvider.channels;
          final epgChannels = epgService.getEpgChannelIds();
          // Calculate basic stats since getMatchingStats doesn't exist
          final matched = channels.where((c) => epgService.hasEpgData(c.tvgId ?? c.id)).length;
          final stats = {'matched': matched, 'total': channels.length};
          
          // Debug info for IncrementalEpgService
          if (channels.isNotEmpty && epgService.availableChannels.isNotEmpty) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              print('=== INCREMENTAL EPG DEBUG ===');
              print('EPG available channels: ${epgService.availableChannels.length}');
              print('EPG loaded channels: ${epgService.loadedChannelCount}');
              print('Channel provider channels count: ${channels.length}');
              
              // Test first few channels manually
              for (int i = 0; i < 5 && i < channels.length; i++) {
                final channel = channels[i];
                final tvgId = channel.tvgId ?? channel.id;
                final hasEpg = epgService.hasEpgData(tvgId);
                print('Channel $i: "${channel.name}" (ID: "$tvgId") -> EPG: $hasEpg');
              }
              print('=== END INCREMENTAL EPG DEBUG ===');
            });
          }
          
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'EPG Status: ${epgService.availableChannels.isNotEmpty ? "Loaded" : "No Data"}',
                  style: TextStyle(
                    color: epgService.availableChannels.isNotEmpty ? Colors.green : Colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'EPG Channels: ${epgChannels.length}',
                  style: const TextStyle(color: Colors.white70, fontSize: 16),
                ),
                Text(
                  'Playlist Channels: ${channels.length}',
                  style: const TextStyle(color: Colors.white70, fontSize: 16),
                ),
                Text(
                  'Matched: ${stats['matched']}/${stats['total']} (${((stats['matched']! / stats['total']!) * 100).toStringAsFixed(1)}%)',
                  style: TextStyle(
                    color: stats['matched']! > stats['total']! * 0.5 ? Colors.green : Colors.orange,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
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
                        color: (primaryUrl?.isNotEmpty == true) ? Colors.green.withAlpha(50) : Colors.red.withAlpha(50),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: (primaryUrl?.isNotEmpty == true) ? Colors.green : Colors.red,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'EPG Configuration',
                            style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Primary EPG URL: ${primaryUrl?.isNotEmpty == true ? "✓ Configured" : "❌ Not configured"}',
                            style: TextStyle(
                              color: (primaryUrl?.isNotEmpty == true) ? Colors.green : Colors.red,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'Secondary EPG URL: ${secondaryUrl?.isNotEmpty == true ? "✓ Configured" : "❌ Not configured"}',
                            style: TextStyle(
                              color: (secondaryUrl?.isNotEmpty == true) ? Colors.green : Colors.orange,
                              fontSize: 14,
                            ),
                          ),
                          if (primaryUrl?.isEmpty != false) ...[

                            const SizedBox(height: 8),
                            const Text(
                              '⚠️ No EPG URL configured! This is likely why only 10 channels are matching.',
                              style: TextStyle(color: Colors.orange, fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8),
                            ElevatedButton.icon(
                              onPressed: () => context.push('/epg-manager'),
                              icon: const Icon(Icons.settings, size: 16),
                              label: const Text('Configure EPG'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
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
                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                ...epgChannels.take(10).map((id) => Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Text(
                    id,
                    style: const TextStyle(color: Colors.green, fontSize: 14),
                  ),
                )),
                
                const SizedBox(height: 20),
                const Text(
                  'First 10 Playlist Channels:',
                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                ...channels.take(10).map((channel) {
                  final hasEpg = epgService.hasEpgData(
                    channel.tvgId ?? channel.id,
                  );
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: hasEpg ? Colors.green.withAlpha(50) : Colors.red.withAlpha(50),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name: ${channel.name}',
                            style: const TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          Text(
                            'ID: ${channel.id}',
                            style: const TextStyle(color: Colors.white70, fontSize: 12),
                          ),
                          if (channel.tvgId != null)
                            Text(
                              'TVG-ID: ${channel.tvgId}',
                              style: const TextStyle(color: Colors.white70, fontSize: 12),
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
}