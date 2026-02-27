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

final _whitespaceRegex = RegExp(r'\s+');

/// Generate stable channel id: prefer tvgId if present and non-empty,
/// otherwise deterministic hash of normalized url + name.
String stableChannelId(
    {String? tvgId, required String name, required String url}) {
  if (tvgId != null) {
    // Keep standard trim() for small ID strings, it's efficient enough
    final trimmedTvgId = tvgId.trim();
    if (trimmedTvgId.isNotEmpty) return trimmedTvgId;
  }

  // --- Optimized ASCII Path ---
  // Optimistically assume ASCII to avoid regex and string allocation overhead.
  // Falls back to original robust implementation for Unicode characters.

  bool isAscii = true;
  final int urlLen = url.length;
  for (int i = 0; i < urlLen; i++) {
    if (url.codeUnitAt(i) > 127) {
      isAscii = false;
      break;
    }
  }

  if (isAscii) {
    final int nameLen = name.length;
    for (int i = 0; i < nameLen; i++) {
      if (name.codeUnitAt(i) > 127) {
        isAscii = false;
        break;
      }
    }
  }

  // FNV-1a 32-bit constants
  const int fnvPrime = 0x01000193;
  int hash = 0x811C9DC5;

  if (isAscii) {
    // Process URL: Skip whitespace + Lowercase
    for (int i = 0; i < urlLen; i++) {
      int charCode = url.codeUnitAt(i);
      if (charCode <= 32) continue; // Skip whitespace

      // To Lowercase (ASCII)
      if (charCode >= 65 && charCode <= 90) {
        charCode += 32;
      }

      hash ^= charCode;
      hash = (hash * fnvPrime) & 0xFFFFFFFF;
    }

    // Separator '|'
    hash ^= 124;
    hash = (hash * fnvPrime) & 0xFFFFFFFF;

    // Process Name: Trim (skip leading/trailing) + Lowercase
    int start = 0;
    int end = name.length - 1;

    // Skip leading whitespace
    while (start <= end && name.codeUnitAt(start) <= 32) {
      start++;
    }

    // Skip trailing whitespace
    while (end >= start && name.codeUnitAt(end) <= 32) {
      end--;
    }

    for (int i = start; i <= end; i++) {
      int charCode = name.codeUnitAt(i);

      // To Lowercase (ASCII)
      if (charCode >= 65 && charCode <= 90) {
        charCode += 32;
      }

      hash ^= charCode;
      hash = (hash * fnvPrime) & 0xFFFFFFFF;
    }

    return 'ch_${hash.toRadixString(16).padLeft(8, '0')}';
  } else {
    // Fallback for Non-ASCII
    final normalizedUrl = url.trim().replaceAll(_whitespaceRegex, '');
    final key = '${normalizedUrl.toLowerCase()}|${name.trim().toLowerCase()}';

    // Inline hash of key
    final bytes = key.codeUnits;
    for (var b in bytes) {
      hash ^= b;
      hash = (hash * fnvPrime) & 0xFFFFFFFF;
    }
    return 'ch_${hash.toRadixString(16).padLeft(8, '0')}';
  }
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
