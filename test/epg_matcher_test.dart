
import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/utils/epg_matcher.dart';

void main() {
  group('EpgMatcher Normalization', () {
    test('removes country prefixes', () {
      expect(EpgMatcher.normalize('UK: BBC One'), equals('bbcone'));
      expect(EpgMatcher.normalize('US: CNN'), equals('cnn'));
      expect(EpgMatcher.normalize('FR: TF1'), equals('tf1'));
    });

    test('removes quality flags', () {
      expect(EpgMatcher.normalize('Discovery Channel 4K'), equals('discoverychannel'));
      expect(EpgMatcher.normalize('Sports UHD'), equals('sports'));
      expect(EpgMatcher.normalize('Movie HDR'), equals('movie'));
      expect(EpgMatcher.normalize('Event Ultra'), equals('event'));
      expect(EpgMatcher.normalize('Live Event EVENT ONLY'), equals('liveevent'));
    });

    test('removes bracketed notes', () {
      expect(EpgMatcher.normalize('Sky Sports (Local)'), equals('skysports'));
      expect(EpgMatcher.normalize('Fox (F)'), equals('fox'));
      expect(EpgMatcher.normalize('Channel (Event Only)'), equals('channel'));
    });

    test('trims league prefixes', () {
      expect(EpgMatcher.normalize('AFL : Collingwood vs Essendon'), equals('collingwoodvsessendon'));
      expect(EpgMatcher.normalize('NRL : Broncos v Dolphins'), equals('broncosvdolphins'));
      expect(EpgMatcher.normalize('A-LEAGUE : City v United'), equals('cityvunited'));
    });

    test('combined cleanup', () {
      expect(EpgMatcher.normalize('AU: AFL : Grand Final (Live) 4K'), equals('grandfinal'));
    });
  });

  group('EpgMatcher Matching', () {
    final epgChannels = {'bbc1', 'cnn', 'skysports', 'discovery'};
    final epgDisplayNames = {
      'bbc1': 'BBC One',
      'cnn': 'CNN International',
      'skysports': 'Sky Sports Main Event',
      'discovery': 'Discovery Channel'
    };

    test('Direct EPG ID match', () {
      final playlist = [
        {'stream_id': '1', 'original_title': 'Random Name', 'epg_id': 'bbc1'}
      ];
      final result = EpgMatcher.matchChannels(playlist, epgChannels, epgDisplayNames);
      expect(result.matches['1'], equals('bbc1'));
      expect(result.matched, equals(1));
    });

    test('Handles dummy ID fallback', () {
      // Should count as skipped dummy, BUT then proceed to match by name
      final playlist = [
        {'stream_id': '1', 'original_title': 'BBC One', 'epg_id': 'StreamingOnThisService.bossdummy'}
      ];
      final result = EpgMatcher.matchChannels(playlist, epgChannels, epgDisplayNames);
      // It matches 'BBC One' to 'bbc1' via normalization
      expect(result.matches['1'], equals('bbc1'));
      expect(result.skipped, equals(1));
      expect(result.matched, equals(1)); 
    });

    test('Exact Normalized Match', () {
      final playlist = [
        {'stream_id': '1', 'original_title': 'UK: BBC One (F)', 'epg_id': ''}
      ];
      // 'UK: BBC One (F)' -> 'bbcone'. 'BBC One' -> 'bbcone'. Match.
      final result = EpgMatcher.matchChannels(playlist, epgChannels, epgDisplayNames);
      expect(result.matches['1'], equals('bbc1'));
      expect(result.matched, equals(1));
    });

    test('Fuzzy Match', () {
       // 'Sky Sport Main Evnt' -> 'skysportmainevnt'. 
       // 'Sky Sports Main Event' -> 'skysportsmainevent'.
      final playlist = [
        {'stream_id': '1', 'original_title': 'Sky Sport Main Evnt', 'epg_id': ''}
      ];
      final result = EpgMatcher.matchChannels(playlist, epgChannels, epgDisplayNames);
      expect(result.matches['1'], equals('skysports'));
      expect(result.matched, equals(1));
    });

    test('Inheritance (4K/UHD)', () {
      // Playlist has 'Discovery Channel 4K', EPG has 'Discovery Channel'
      final playlist = [
        {'stream_id': '1', 'original_title': 'Discovery Channel 4K', 'epg_id': ''}
      ];
      final result = EpgMatcher.matchChannels(playlist, epgChannels, epgDisplayNames);
      expect(result.matches['1'], equals('discovery'));
      expect(result.inherited, equals(1));
    });

    test('Team Channel Mapping (Simulation)', () {
      // "AFL : MyFeed" -> "myfeed" if available
      // Assuming 'myfeed' is in EPG channels for this test
      final localEpgChannels = {'aflfeed', 'nrlfeed'};
      final localEpgNames = {'aflfeed': 'AFL Feed', 'nrlfeed': 'NRL Feed'};
      

      // Normalize 'AFL : Match Day' -> 'matchday'. No match.
      // But if EPG has 'AFL : Match Day' as name, normalized -> 'matchday'. Match.
      
      // Let's optimize the test for what we implemented:
      // We stripping "AFL :", so if EPG name matches the remainder, it works.
      final result = EpgMatcher.matchChannels([
        {'stream_id': '1', 'original_title': 'AFL : AFL Feed', 'epg_id': ''}
      ], localEpgChannels, localEpgNames);
      
      // 'AFL : AFL Feed' -> 'aflfeed'
      // 'AFL Feed' -> 'aflfeed'
      expect(result.matches['1'], equals('aflfeed'));
    });
  });
}
