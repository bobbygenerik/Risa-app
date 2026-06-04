/// US broadcast-callsign bridging for EPG matching.
///
/// Playlist tvg-ids encode locals verbosely (`cbs4wbzboston.us`,
/// `nbc10wjarprovidence.us`) while the XMLTV guide keys them by
/// network+callsign (`CBSWBZ.us`, `NBCWJAR.us`). Exact-id and name matching
/// both miss this, so we bridge on the FCC callsign (`WBZ`, `WJAR`) which is
/// stable on both sides, disambiguating shared callsigns by network.
library;

final RegExp _callsignToken = RegExp(r'[WK][A-Z]{2,3}');
final RegExp _callsignWhole = RegExp(r'^[WK][A-Z]{2,3}$');
final RegExp _networkToken =
    RegExp(r'^(CBS|ABC|NBC|FOX|CW|PBS|MYNETWORK|MY|ION|UNI|TEL)');

bool _isUsId(String id) => id.toLowerCase().endsWith('.us');

/// Callsign of an EPG id, e.g. `CBSWBZ.us` -> `WBZ`, `ABCKGO.us` -> `KGO`,
/// `wcco.us` -> `WCCO`. After stripping an optional network prefix and the
/// `.us` suffix, the *entire* remainder must be a clean 3-4 letter callsign —
/// this rejects branded ids like `CINEVAULTWesterns.us` (whose `WEST` is a
/// word, not a station) that a loose token scan would falsely accept.
String? extractCallsignFromEpgId(String epgId) {
  final trimmed = epgId.trim();
  if (!_isUsId(trimmed)) return null;
  var body = trimmed.substring(0, trimmed.length - 3).toUpperCase();
  final net = _networkToken.firstMatch(body);
  if (net != null) body = body.substring(net.group(0)!.length);
  return _callsignWhole.hasMatch(body) ? body : null;
}

/// Leading network prefix of an EPG id, e.g. `CBSWBZ.us` -> `CBS`. Null when the
/// id starts with the callsign itself (`wcco.us`) or is not a `.us` id.
String? extractNetworkFromEpgId(String epgId) {
  final trimmed = epgId.trim();
  if (!_isUsId(trimmed)) return null;
  final body = trimmed.substring(0, trimmed.length - 3).toUpperCase();
  return _networkToken.firstMatch(body)?.group(1);
}

/// Callsign from a US playlist channel, read from the clean display name
/// (`WBZ4` -> `WBZ`, `CBS12 WPRI` -> `WPRI`). The verbose id (`cbs4wbzboston`)
/// has no delimiter between callsign and city, so we deliberately do not parse
/// it — a greedy read yields `WBZB` and a wrong match. Scoped to `.us`
/// channels to limit false positives across an international list.
String? extractCallsignFromPlaylist(String channelId, String? name) {
  if (!_isUsId(channelId.trim())) return null;

  final display = (name ?? '').toUpperCase();
  for (final token in display.split(RegExp(r'[^A-Z0-9]+'))) {
    final letters = token.replaceAll(RegExp(r'[0-9]'), '');
    final m = _callsignToken.firstMatch(token);
    if (m != null && m.group(0) == letters) {
      return m.group(0);
    }
  }
  return null;
}

/// Network prefix from a US playlist channel name (`NBC10 WJAR` -> `NBC`).
String? extractNetworkFromPlaylist(String? name) {
  for (final token in (name ?? '').toUpperCase().split(RegExp(r'[^A-Z]+'))) {
    final m = _networkToken.firstMatch(token);
    if (m != null && m.group(0) == token) return token;
  }
  return null;
}

/// callsign -> network -> EPG id, built from the guide's `.us` ids. Keeps every
/// (callsign, network) pair plus, for callsigns that resolve to a single id, a
/// network-less entry under the empty key for direct lookup.
class CallsignIndex {
  CallsignIndex._(this._byCallsign);

  static const String _any = '';

  final Map<String, Map<String, String>> _byCallsign;

  factory CallsignIndex.build(Iterable<String> epgIds) {
    final byCallsign = <String, Map<String, String>>{};
    for (final id in epgIds) {
      final cs = extractCallsignFromEpgId(id);
      if (cs == null) continue;
      final network = extractNetworkFromEpgId(id) ?? _any;
      final trimmed = id.trim();
      final networks = byCallsign.putIfAbsent(cs, () => {});
      networks[network] = trimmed;
    }

    // Promote unambiguous callsigns to the network-less slot.
    for (final entry in byCallsign.entries) {
      final ids = entry.value.values.toSet();
      if (ids.length == 1) {
        entry.value[_any] = ids.first;
      }
    }
    return CallsignIndex._(byCallsign);
  }

  bool get isEmpty => _byCallsign.isEmpty;

  /// EPG id for [callsign], using [network] to break ties when the callsign
  /// maps to more than one station. Returns null when ambiguous and the
  /// network does not disambiguate.
  String? lookup(String callsign, {String? network}) {
    final networks = _byCallsign[callsign];
    if (networks == null) return null;
    if (network != null) {
      final byNet = networks[network];
      if (byNet != null) return byNet;
    }
    return networks[_any];
  }
}
