import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/services/epg_service.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/utils/app_theme.dart';

class EpgDiagnosticScreen extends StatelessWidget {
  const EpgDiagnosticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF050710),
      appBar: AppBar(
        title: const Text('EPG Diagnostic'),
        backgroundColor: const Color(0xFF050710),
      ),
      body: Consumer2<EpgService, ChannelProvider>(
        builder: (context, epgService, channelProvider, _) {
          final channels = channelProvider.channels;
          final epgChannels = epgService.getEpgChannelIds();
          
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'EPG Status: ${epgService.hasData ? "Loaded" : "No Data"}',
                  style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'EPG Channels: ${epgChannels.length}',
                  style: const TextStyle(color: Colors.white70, fontSize: 16),
                ),
                Text(
                  'Playlist Channels: ${channels.length}',
                  style: const TextStyle(color: Colors.white70, fontSize: 16),
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
                    channelName: channel.name,
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