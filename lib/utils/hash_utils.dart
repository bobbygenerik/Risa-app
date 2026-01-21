/// Simple fast deterministic hash (FNV-1a 32) for stable IDs
String fnv1aHex(String input) {
  const int fnvPrime = 0x01000193;
  int hash = 0x811C9DC5;
  final bytes = input.codeUnits;
  for (var b in bytes) {
    hash ^= b;
    hash = (hash * fnvPrime) & 0xFFFFFFFF;
  }
  return hash.toRadixString(16).padLeft(8, '0');
}

/// Generate stable channel id: prefer tvgId if present and non-empty,
/// otherwise deterministic hash of normalized url + name.
String stableChannelId(
    {String? tvgId, required String name, required String url}) {
  if (tvgId != null && tvgId.trim().isNotEmpty) return tvgId.trim();
  final normalizedUrl = url.trim().replaceAll(RegExp(r'\s+'), '');
  final key = '${normalizedUrl.toLowerCase()}|${name.trim().toLowerCase()}';
  return 'ch_${fnv1aHex(key)}';
}

/// Generate a stable playlist id based on the playlist source.
String stablePlaylistId({
  required String type,
  String? url,
  String? server,
  String? username,
}) {
  final normalizedType = type.trim().toLowerCase();
  String key;
  if (normalizedType == 'xtream') {
    final normalizedServer = (server ?? '').trim().toLowerCase();
    final normalizedUser = (username ?? '').trim().toLowerCase();
    key = '$normalizedType|$normalizedServer|$normalizedUser';
  } else {
    final normalizedUrl = (url ?? '').trim().toLowerCase();
    key = '$normalizedType|$normalizedUrl';
  }
  return 'pl_${fnv1aHex(key)}';
}
