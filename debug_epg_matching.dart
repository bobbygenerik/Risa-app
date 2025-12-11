// Simple debug script to test EPG matching logic

void main() {
  // Sample channel IDs from typical IPTV playlists
  final sampleChannelIds = [
    'bbc1.uk',
    'itv1.uk', 
    'channel4.uk',
    'sky1.uk',
    'discovery.uk',
    'cnn.us',
    'espn.us',
    'fox.us',
    'bbc-one',
    'itv-1',
    'channel-4',
    'sky-one',
    'BBC One',
    'ITV1',
    'Channel 4',
    'Sky One',
  ];

  // Sample EPG keys from typical EPG XML files
  final sampleEpgKeys = [
    'bbc1london.bbc.co.uk',
    'itv1london.itv.com',
    'channel4.channel4.com',
    'sky1.sky.com',
    'discoverychannel.discovery.com',
    'cnn.cnn.com',
    'espn.espn.com',
    'fox.fox.com',
    'bbc-one-hd',
    'itv1-hd',
    'channel4-hd',
    'sky-one-hd',
  ];

  print('=== EPG MATCHING DEBUG ===');
  print('Channel IDs: ${sampleChannelIds.length}');
  print('EPG Keys: ${sampleEpgKeys.length}');
  
  print('\nSample Channel IDs:');
  for (final id in sampleChannelIds) {
    print('  "$id"');
  }
  
  print('\nSample EPG Keys:');
  for (final key in sampleEpgKeys) {
    print('  "$key"');
  }
  
  // Test exact matches
  int exactMatches = 0;
  print('\n=== EXACT MATCHES ===');
  for (final channelId in sampleChannelIds) {
    for (final epgKey in sampleEpgKeys) {
      if (channelId == epgKey) {
        print('EXACT: "$channelId" == "$epgKey"');
        exactMatches++;
      }
    }
  }
  print('Exact matches: $exactMatches');
  
  // Test case-insensitive matches
  int caseMatches = 0;
  print('\n=== CASE-INSENSITIVE MATCHES ===');
  for (final channelId in sampleChannelIds) {
    for (final epgKey in sampleEpgKeys) {
      if (channelId.toLowerCase() == epgKey.toLowerCase()) {
        print('CASE: "$channelId" == "$epgKey"');
        caseMatches++;
      }
    }
  }
  print('Case-insensitive matches: $caseMatches');
  
  // Test normalized matches (remove non-alphanumeric)
  int normalizedMatches = 0;
  print('\n=== NORMALIZED MATCHES ===');
  for (final channelId in sampleChannelIds) {
    final normalizedChannel = channelId.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
    for (final epgKey in sampleEpgKeys) {
      final normalizedEpg = epgKey.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
      if (normalizedChannel == normalizedEpg) {
        print('NORMALIZED: "$channelId" ($normalizedChannel) == "$epgKey" ($normalizedEpg)');
        normalizedMatches++;
      }
    }
  }
  print('Normalized matches: $normalizedMatches');
  
  // Test prefix matches
  int prefixMatches = 0;
  print('\n=== PREFIX MATCHES ===');
  for (final channelId in sampleChannelIds) {
    final normalizedChannel = channelId.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
    for (final epgKey in sampleEpgKeys) {
      final normalizedEpg = epgKey.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
      if (normalizedEpg.startsWith(normalizedChannel) && normalizedChannel.length >= 4) {
        print('PREFIX: "$channelId" ($normalizedChannel) starts "$epgKey" ($normalizedEpg)');
        prefixMatches++;
      }
    }
  }
  print('Prefix matches: $prefixMatches');
  
  print('\n=== SUMMARY ===');
  print('Total channel IDs: ${sampleChannelIds.length}');
  print('Total EPG keys: ${sampleEpgKeys.length}');
  print('Exact matches: $exactMatches');
  print('Case-insensitive matches: $caseMatches');
  print('Normalized matches: $normalizedMatches');
  print('Prefix matches: $prefixMatches');
}