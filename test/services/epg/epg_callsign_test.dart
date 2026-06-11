import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/services/epg/epg_callsign.dart';

void main() {
  group('extractCallsignFromEpgId', () {
    test('strips network prefix and .us suffix', () {
      expect(extractCallsignFromEpgId('CBSWBZ.us'), 'WBZ');
      expect(extractCallsignFromEpgId('CBSWPRI.us'), 'WPRI');
      expect(extractCallsignFromEpgId('ABCWCVB.us'), 'WCVB');
      expect(extractCallsignFromEpgId('FOXWFXT.us'), 'WFXT');
      expect(extractCallsignFromEpgId('ABCKGO.us'), 'KGO');
      expect(extractCallsignFromEpgId('ABCKABC.us'), 'KABC');
    });

    test('ignores non-US ids', () {
      expect(extractCallsignFromEpgId('skysports.uk'), isNull);
      expect(extractCallsignFromEpgId('Some.Channel.ca'), isNull);
    });
  });

  group('extractCallsignFromPlaylist', () {
    test('prefers clean callsign in the display name', () {
      expect(extractCallsignFromPlaylist('cbs4wbzboston.us', 'WBZ4'), 'WBZ');
      expect(
          extractCallsignFromPlaylist('cbs12wpriprovidence.us', 'CBS12 WPRI'),
          'WPRI');
      expect(extractCallsignFromPlaylist('abcwlneprovidenceri.us', 'ABC6 WLNE'),
          'WLNE');
      expect(
          extractCallsignFromPlaylist(
              'nbc10wjarprovidencerhodeisland.us', 'NBC10 WJAR'),
          'WJAR');
      expect(extractCallsignFromPlaylist('fox64wnacprovidence.us', 'FOX64 WNAC'),
          'WNAC');
    });

    test('returns null when the name has no clean callsign token', () {
      // Verbose id alone is not parsed: no delimiter -> greedy false match.
      expect(extractCallsignFromPlaylist('cbs4wbzboston.us', 'Boston CBS'),
          isNull);
    });

    test('ignores non-US channels', () {
      expect(extractCallsignFromPlaylist('skysports.uk', 'Sky Sports'), isNull);
    });
  });

  group('extractNetworkFromPlaylist', () {
    test('reads the network prefix from the name', () {
      expect(extractNetworkFromPlaylist('NBC10 WJAR'), 'NBC');
      expect(extractNetworkFromPlaylist('CBS12 WPRI'), 'CBS');
      expect(extractNetworkFromPlaylist('WBZ4'), isNull);
    });
  });

  group('CallsignIndex', () {
    test('maps unique callsigns to their epg id', () {
      final idx =
          CallsignIndex.build(['CBSWBZ.us', 'CBSWPRI.us', 'FOXWFXT.us']);
      expect(idx.lookup('WBZ'), 'CBSWBZ.us');
      expect(idx.lookup('WPRI'), 'CBSWPRI.us');
      expect(idx.lookup('WFXT'), 'FOXWFXT.us');
    });

    test('disambiguates a shared callsign by network', () {
      final idx = CallsignIndex.build(['NBCWJAR.us', 'ABCWJAR.us']);
      expect(idx.lookup('WJAR', network: 'NBC'), 'NBCWJAR.us');
      expect(idx.lookup('WJAR', network: 'ABC'), 'ABCWJAR.us');
      expect(idx.lookup('WJAR'), isNull,
          reason: 'ambiguous without a network hint');
    });

    test('rejects branded ids whose token is a word, not a callsign', () {
      final idx = CallsignIndex.build(['CINEVAULTWesterns.us']);
      expect(idx.lookup('WEST'), isNull);
    });

    test('bridges bare lowercase callsign ids', () {
      final idx = CallsignIndex.build(['wcco.us', 'wgn.us']);
      expect(idx.lookup('WCCO'), 'wcco.us');
    });
  });

  group('CallsignIndex.addId (incremental)', () {
    test('adds a new resolvable callsign without a rebuild', () {
      final idx = CallsignIndex.build(['CBSWBZ.us']);
      idx.addId('FOXWFXT.us');
      expect(idx.lookup('WBZ'), 'CBSWBZ.us');
      expect(idx.lookup('WFXT'), 'FOXWFXT.us');
    });

    test('a second id under the same callsign becomes ambiguous', () {
      final idx = CallsignIndex.build(['NBCWJAR.us']);
      // Before the second add, the callsign is unambiguous.
      expect(idx.lookup('WJAR'), 'NBCWJAR.us');
      idx.addId('ABCWJAR.us');
      // After it, a network-less lookup must no longer resolve.
      expect(idx.lookup('WJAR', network: 'NBC'), 'NBCWJAR.us');
      expect(idx.lookup('WJAR', network: 'ABC'), 'ABCWJAR.us');
      expect(idx.lookup('WJAR'), isNull,
          reason: 'ambiguous once a second station shares the callsign');
    });

    test('incremental adds match a from-scratch build of the same ids', () {
      final ids = [
        'CBSWBZ.us',
        'NBCWJAR.us',
        'ABCWJAR.us',
        'wcco.us',
        'CINEVAULTWesterns.us',
      ];
      final built = CallsignIndex.build(ids);
      final incremental = CallsignIndex.build(const <String>[]);
      for (final id in ids) {
        incremental.addId(id);
      }
      for (final cs in ['WBZ', 'WJAR', 'WCCO', 'WEST']) {
        expect(incremental.lookup(cs), built.lookup(cs), reason: 'no-net $cs');
        for (final net in ['NBC', 'ABC', 'CBS']) {
          expect(incremental.lookup(cs, network: net),
              built.lookup(cs, network: net),
              reason: '$cs/$net');
        }
      }
    });
  });
}
