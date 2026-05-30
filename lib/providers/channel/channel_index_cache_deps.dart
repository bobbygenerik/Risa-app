/// Mutable channel index state shared with [ChannelIndexCache].
class ChannelIndexCacheDeps {
  const ChannelIndexCacheDeps({
    required this.channelMaps,
    required this.channelIndexById,
    required this.channelIndicesByGroup,
    required this.channelLowerNames,
    required this.channelLowerGroups,
  });

  final List<Map<String, dynamic>> channelMaps;
  final Map<String, int> channelIndexById;
  final Map<String, List<int>> channelIndicesByGroup;
  final List<String> channelLowerNames;
  final List<String> channelLowerGroups;
}
