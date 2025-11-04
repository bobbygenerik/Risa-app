import '../models/channel.dart';

class M3UParserService {
  /// Parses M3U playlist content and returns a list of channels
  List<Channel> parseM3U(String content) {
    final List<Channel> channels = [];
    final lines = content.split('\n');
    
    String? currentInfo;
    Map<String, String> currentAttributes = {};
    
    for (int i = 0; i < lines.length; i++) {
      final line = lines[i].trim();
      
      if (line.isEmpty) continue;
      
      if (line.startsWith('#EXTINF:')) {
        // Parse channel info
        currentInfo = line.substring(8); // Remove '#EXTINF:'
        currentAttributes = _parseAttributes(currentInfo);
      } else if (!line.startsWith('#') && currentInfo != null) {
        // This is a stream URL
        final channelName = _extractChannelName(currentInfo);
        final channel = Channel(
          id: DateTime.now().millisecondsSinceEpoch.toString() + i.toString(),
          name: channelName,
          url: line,
          logoUrl: currentAttributes['tvg-logo'],
          groupTitle: currentAttributes['group-title'],
          tvgId: currentAttributes['tvg-id'],
          attributes: currentAttributes,
        );
        
        channels.add(channel);
        currentInfo = null;
        currentAttributes = {};
      }
    }
    
    return channels;
  }
  
  /// Extracts channel name from EXTINF line
  String _extractChannelName(String info) {
    // Channel name is usually after the last comma
    final parts = info.split(',');
    if (parts.length > 1) {
      return parts.last.trim();
    }
    return 'Unknown Channel';
  }
  
  /// Parses attributes from EXTINF line
  Map<String, String> _parseAttributes(String info) {
    final Map<String, String> attributes = {};
    
    // Regular expression to match key="value" or key='value' patterns
    final regex = RegExp(r'(\w+-?\w+)="([^"]*)"');
    final matches = regex.allMatches(info);
    
    for (final match in matches) {
      if (match.groupCount >= 2) {
        final key = match.group(1);
        final value = match.group(2);
        if (key != null && value != null) {
          attributes[key] = value;
        }
      }
    }
    
    return attributes;
  }
  
  /// Groups channels by category
  Map<String, List<Channel>> groupChannelsByCategory(List<Channel> channels) {
    final Map<String, List<Channel>> grouped = {};
    
    for (final channel in channels) {
      final category = channel.groupTitle ?? 'Uncategorized';
      if (!grouped.containsKey(category)) {
        grouped[category] = [];
      }
      grouped[category]!.add(channel);
    }
    
    return grouped;
  }
}
