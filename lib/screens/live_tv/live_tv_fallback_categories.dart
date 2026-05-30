import 'package:iptv_player/providers/channel_provider.dart';

/// Builds category names from in-memory channels when the provider list is empty.
class LiveTvFallbackCategories {
  LiveTvFallbackCategories._();

  static List<String> fromProvider(ChannelProvider provider) {
    if (!provider.hasChannels) return [];
    final channels = provider.channels;
    final seen = <String>{};
    final categories = <String>[];
    for (final channel in channels) {
      final trimmed = (channel.groupTitle ?? '').trim();
      final name = trimmed.isEmpty ? 'Uncategorized' : trimmed;
      if (seen.add(name)) {
        if (name != 'Uncategorized') {
          categories.add(name);
        }
      }
    }
    if (seen.contains('Uncategorized')) {
      categories.add('Uncategorized');
    }
    return categories;
  }
}
