import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/services/epg_service.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';

/// A focused Live TV screen. Shows a hero for the currently airing program
/// on a featured channel, plus channel rows below.
class LiveTVScreen extends StatelessWidget {
  const LiveTVScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF050710),
            Color(0xFF0d1140),
          ],
        ),
      ),
      child: Consumer2<ChannelProvider, EpgService>(
        builder: (context, channelProvider, epgService, _) {
          final channels = channelProvider.channels;

          if (channels.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.live_tv, size: 80, color: AppTheme.primaryBlue.withAlpha((0.5 * 255).round())),
                  const SizedBox(height: 24),
                  Text('No Live TV Available', style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: 8),
                  Text('Load a playlist with Live TV channels from Settings', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppTheme.textSecondary), textAlign: TextAlign.center),
                  const SizedBox(height: 32),
                  ElevatedButton.icon(
                    onPressed: () => Future.delayed(const Duration(milliseconds: 100), () { if (context.mounted) context.go('/settings'); }),
                    icon: const Icon(Icons.settings),
                    label: const Text('Go to Settings'),
                    style: ElevatedButton.styleFrom(backgroundColor: AppTheme.primaryBlue),
                  ),
                ],
              ),
            );
          }

          // Pick featured channel: prefer one with a current program
          Channel? featuredChannel;
          Program? currentProgram;

          for (final c in channels) {
            final p = epgService.getCurrentProgram(c.id);
            if (p != null) {
              featuredChannel = c;
              currentProgram = p;
              break;
            }
          }

          // Fallback to first channel
          featuredChannel ??= channels.first;
          currentProgram ??= epgService.getCurrentProgram(featuredChannel.id);

          return SingleChildScrollView(
            child: Column(
              children: [
                _buildHero(context, featuredChannel, currentProgram),
                _buildChannelSection(context, 'Featured Channels', channels.take(6).toList()),
                const SizedBox(height: 24),
                _buildChannelSection(context, 'All Channels', channels),
                const SizedBox(height: 40),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildHero(BuildContext context, Channel channel, Program? program) {
    final title = program?.title ?? channel.name;
    final subtitle = program != null
        ? '${_formatTime(program.startTime)} — ${_formatTime(program.endTime)}'
        : channel.groupTitle ?? '';

    final progress = program?.progressPercentage ?? 0.0;

    return GestureDetector(
      onTap: () => context.push('/player', extra: channel),
      child: Container(
        height: 420,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppTheme.cardBackground,
          borderRadius: BorderRadius.zero,
        ),
        child: Stack(
          children: [
            // Background image if available
            if (program?.imageUrl != null)
              Positioned.fill(
                child: Image.network(program!.imageUrl!, fit: BoxFit.cover, errorBuilder: (_, __, ___) => Container(color: AppTheme.cardBackground)),
              ),
            // Dark gradient overlay
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF050710), Color(0xFF0d1140)],
                  ),
                ),
              ),
            ),
            // Hero content
            Positioned(
              left: 24,
              bottom: 24,
              right: 24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (channel.logoUrl != null && channel.logoUrl!.isNotEmpty)
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(channel.logoUrl!, height: 64, width: 120, fit: BoxFit.contain, errorBuilder: (_, __, ___) => const SizedBox.shrink()),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                if (program != null)
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                    decoration: BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(8)),
                                    child: const Text('LIVE', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
                                  ),
                                const SizedBox(width: 8),
                                Flexible(
                                  child: Text(
                                    title,
                                    style: const TextStyle(color: AppTheme.textPrimary, fontSize: 26, fontWeight: FontWeight.w800),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(subtitle, style: const TextStyle(color: AppTheme.textSecondary, fontSize: 14)),
                            const SizedBox(height: 12),
                            // Progress bar
                            if (program != null)
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  LinearProgressIndicator(value: progress, color: AppTheme.accentOrange, backgroundColor: Colors.white.withOpacity(0.08)),
                                  const SizedBox(height: 8),
                                  Text('${(progress * 100).round()}% elapsed', style: const TextStyle(color: AppTheme.textSecondary, fontSize: 12)),
                                ],
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () => context.push('/player', extra: channel),
                        icon: const Icon(Icons.play_arrow),
                        label: const Text('Watch'),
                        style: ElevatedButton.styleFrom(backgroundColor: AppTheme.primaryBlue),
                      ),
                      const SizedBox(width: 12),
                      OutlinedButton.icon(
                        onPressed: () => context.go('/epg'),
                        icon: const Icon(Icons.schedule),
                        label: const Text('Guide'),
                        style: OutlinedButton.styleFrom(foregroundColor: AppTheme.textPrimary, side: BorderSide(color: AppTheme.primaryBlue.withOpacity(0.4))),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChannelSection(BuildContext context, String title, List<Channel> channels) {
    if (channels.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(24),
          child: Text(title, style: const TextStyle(color: AppTheme.textPrimary, fontSize: 20, fontWeight: FontWeight.w700)),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: channels.map((channel) {
              return GestureDetector(
                onTap: () => context.push('/player', extra: channel),
                child: Container(
                  width: 200,
                  height: 120,
                  margin: const EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: AppTheme.cardBackground, border: Border.all(color: Colors.white.withOpacity(0.1), width: 1)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: channel.logoUrl != null && channel.logoUrl!.isNotEmpty
                        ? Image.network(channel.logoUrl!, fit: BoxFit.cover, width: double.infinity, height: double.infinity, errorBuilder: (_, __, ___) => _buildChannelPlaceholder(channel.name))
                        : _buildChannelPlaceholder(channel.name),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }

  Widget _buildChannelPlaceholder(String name) {
    return Container(
      color: AppTheme.cardBackground,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.live_tv, size: 40, color: AppTheme.textSecondary.withOpacity(0.5)),
            const SizedBox(height: 8),
            Text(name.length > 20 ? name.substring(0, 20) : name, style: TextStyle(color: AppTheme.textSecondary.withOpacity(0.7), fontSize: 10), textAlign: TextAlign.center, maxLines: 1, overflow: TextOverflow.ellipsis),
          ],
        ),
      ),
    );
  }

  String _formatTime(DateTime dt) {
    final hour = dt.hour == 0 ? 12 : (dt.hour > 12 ? dt.hour - 12 : dt.hour);
    final period = dt.hour < 12 ? 'AM' : 'PM';
    return '${hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')} $period';
  }
}
