import 'package:iptv_player/providers/channel_provider.dart';

/// Builds category names from in-memory channels when the provider list is empty.
class LiveTvFallbackCategories {
  LiveTvFallbackCategories._();

  static Future<List<String>> fromProvider(ChannelProvider provider) =>
      provider.getAllCategoryNamesAsync();

  static List<String> fromProviderSync(ChannelProvider provider) {
    if (!provider.hasChannels) return [];
    final categories = provider.getAllCategoryNames();
    if (categories.isNotEmpty) return categories;
    return [];
  }
}
