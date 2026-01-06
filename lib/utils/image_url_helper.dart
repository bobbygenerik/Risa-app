String normalizeImageUrl(String url) {
  final uri = Uri.tryParse(url);
  if (uri == null) return url;

  final host = uri.host.toLowerCase();
  if (host == 'logo.m3uassets.com') {
    return uri.replace(scheme: 'http').toString();
  }

  return url;
}
