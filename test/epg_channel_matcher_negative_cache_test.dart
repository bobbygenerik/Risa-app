import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/services/epg/epg_channel_matcher.dart';

EpgChannelMatcher _matcher() => EpgChannelMatcher(
      availableChannels: {},
      manualMappings: {},
      normalizedChannelsGetter: () => null,
      enableDiagnostics: false,
      onMappingResolved: (_, __) {},
    );

void main() {
  test('unmatched channel returns null and stays null on repeat', () {
    final m = _matcher();
    m.setDisplayNames({
      'epg.cooking': ['Cooking Channel'],
    });
    m.rebuildFuzzyCandidates();

    final first = m.findBestEpgId('sky.sports.id', 'Sky Sports Main Event');
    final scansAfterFirst = m.fuzzyScanCount;
    final second = m.findBestEpgId('sky.sports.id', 'Sky Sports Main Event');

    expect(first, isNull);
    expect(second, isNull);
    expect(scansAfterFirst, 1, reason: 'first lookup runs the fuzzy scan once');
    expect(m.fuzzyScanCount, 1,
        reason: 'repeat lookup must hit the negative cache, not rescan');
  });

  test('rebuilding candidates invalidates the negative cache', () {
    final m = _matcher();
    m.setDisplayNames({
      'epg.cooking': ['Cooking Channel'],
    });
    m.rebuildFuzzyCandidates();

    // Caches a no-match for this channel.
    expect(m.findBestEpgId('sky.sports.id', 'Sky Sports Main Event'), isNull);

    // New EPG data arrives that DOES cover the channel.
    m.setDisplayNames({
      'epg.cooking': ['Cooking Channel'],
      'epg.sky': ['Sky Sports Main Event'],
    });
    m.rebuildFuzzyCandidates();

    expect(
      m.findBestEpgId('sky.sports.id', 'Sky Sports Main Event'),
      'epg.sky',
    );
  });

  test('mergeDisplayNames extends fuzzy coverage without replacing primary', () {
    final m = _matcher();
    m.setDisplayNames({
      'epg.one': ['Channel One'],
    });
    m.rebuildFuzzyCandidates();
    expect(m.findBestEpgId('x', 'Channel Two'), isNull);

    m.mergeDisplayNames({
      'epg.two': ['Channel Two'],
    });
    m.rebuildFuzzyCandidates();

    expect(m.findBestEpgId('x', 'Channel Two'), 'epg.two');
    expect(m.findBestEpgId('x', 'Channel One'), 'epg.one');
  });

  test('callsign tier bridges verbose US tvg-id to network+callsign EPG id', () {
    final m = _matcher();
    m.rebuildEpgIdIndexFromIds(['CBSWBZ.us', 'CBSWPRI.us', 'FOXWFXT.us']);

    expect(m.findBestEpgId('cbs4wbzboston.us', 'WBZ4'), 'CBSWBZ.us');
    expect(
        m.findBestEpgId('cbs12wpriprovidence.us', 'CBS12 WPRI'), 'CBSWPRI.us');
  });

  test('callsign tier uses the network to break a shared-callsign tie', () {
    final m = _matcher();
    m.rebuildEpgIdIndexFromIds(['NBCWJAR.us', 'ABCWJAR.us']);

    expect(
      m.findBestEpgId('nbc10wjarprovidence.us', 'NBC10 WJAR'),
      'NBCWJAR.us',
    );
  });

  test('callsign tier ignores non-US channels', () {
    final m = _matcher();
    m.rebuildEpgIdIndexFromIds(['CBSWBZ.us']);
    // A UK channel that happens to contain a callsign-shaped token must not
    // bridge to a US station.
    expect(m.findBestEpgId('skysports.uk', 'WBZ Sports'), isNull);
  });
}
