part of '../live_tv_channel_card.dart';

class EpgCardData {
  const EpgCardData({
    required this.program,
    required this.hasUsableData,
    required this.isLoading,
  });

  final Program? program;
  final bool hasUsableData;
  final bool isLoading;
}

/// Callback signatures for channel card events.
typedef OnChannelTap = void Function(Channel channel);
typedef OnChannelLongPress = void Function(Channel channel);
typedef GetImageUrlCallback = String? Function(
    Program? program, Channel? channel, bool allowPrefetch,
    {bool highPriority});
typedef DisplayTitleCallback = String Function(Program program, Channel channel);
typedef FormatTimeCallback = String Function(DateTime dt);
typedef NavigationFocusCallback = bool Function();
typedef BuildFallbackCallback = Widget Function(Program? program, Channel channel);
typedef BuildLogoCallback = Widget Function(
    Channel channel, Program? program, int cacheWidth, int cacheHeight);
typedef BuildAdaptiveImageCallback = Widget Function(
    BuildContext context,
    String imageUrl,
    BoxFit fit,
    int cacheWidth,
    int cacheHeight,
    Widget fallback);

/// A reusable channel card widget for Live TV.
/// Extracted from LiveTVScreen to improve maintainability.
