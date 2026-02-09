String normalizeImageUrl(String url) {
  final trimmed = url.trim();
  if (trimmed.isEmpty) return trimmed;

  final candidate = trimmed.startsWith('//') ? 'https:$trimmed' : trimmed;
  final uri = Uri.tryParse(candidate);
  if (uri == null) return trimmed;

  if (uri.hasScheme) {
    final scheme = uri.scheme.toLowerCase();
    if (scheme == 'http' || scheme == 'https') {
      return uri.toString();
    }
    return trimmed;
  }

  if (RegExp(r'^[^/\s]+\.[^/\s]+(/|$)').hasMatch(candidate)) {
    return 'https://$candidate';
  }

  return trimmed;
}
