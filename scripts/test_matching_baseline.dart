import '../lib/utils/epg_matching_utils.dart';

// Mock data to simulate the user's scenario
final List<String> playlistNames = [
  'BBC One HD', 'BBC One', 'BBC 2', 'ITV 1', 'Channel 4', 'Sky Sports Main Event',
  'Sky Sports Premier League', 'CNN International', 'Al Jazeera English',
  'TV5 Monde', 'Rai 1', 'ZDF', 'Das Erste', 'Antena 3', 'La 1',
  'Canal+ France', 'HBO', 'Discovery Channel', 'Nat Geo', 'History',
  'BBC One', // Exact match (via normalization)
  'Sport 1', // Typo case for Levenshtein (vs Sport I or similar) - let's try 'Sport I' in EPG
];

final List<String> epgIds = [
  'BBC One', 'BBC Two', 'ITV1', 'Channel 4', 'Sky Sports Main Event',
  'Sky Sports Premier League', 'CNN Int.', 'Al Jazeera',
  'TV5MONDE', 'Rai Uno', 'ZDF', 'ARD Das Erste', 'Antena 3', 'La 1 TVE',
  'Canal+', 'HBO East', 'Discovery', 'National Geographic', 'History Channel',
  'Sport I', // Target for 'Sport 1' fuzzy match
];

void main() {
  print('Running matching benchmark...');

  int exactMatches = 0;
  int fuzzyMatches = 0;

  // Simulate "Strict" matching (Current Diagnostic)
  // Note: We can't easily reproduce the exact _normalizeForMatch behavior here 
  // without copying it, but we can verify what EPGMatchingUtils does currently.
  
  for (final name in playlistNames) {
    bool foundExact = false;
    // Current Diagnostic uses strict equality check after normalization
    // We'll approximate what the failure looks like
    if (epgIds.contains(name)) {
      foundExact = true;
      exactMatches++;
    }
    
    // Fuzzy matching using existing EPGMatchingUtils
    if (!foundExact) {
      final candidates = epgIds.map((id) => MapEntry(id, id)).toList();
      final best = EPGMatchingUtils.findBestFuzzyMatch(name, candidates);
      if (best != null) {
        fuzzyMatches++;
         print('Fuzzy Match: "$name" -> "${best.key}" (Score: ${best.value})');
      } else {
         print('No Match: "$name"');
      }
    }
  }

  print('Total Items: ${playlistNames.length}');
  print('Exact Matches: $exactMatches');
  print('Fuzzy Matches: $fuzzyMatches');
  print('Total Matches: ${exactMatches + fuzzyMatches}');
  print('Strict Rate: ${(exactMatches / playlistNames.length * 100).toStringAsFixed(1)}%');
  print('Fuzzy Rate: ${((exactMatches + fuzzyMatches) / playlistNames.length * 100).toStringAsFixed(1)}%');
}
