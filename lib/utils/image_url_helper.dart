String normalizeImageUrl(String url) {
  final trimmed = url.trim();
  if (trimmed.isEmpty) return trimmed;

  final candidate = trimmed.startsWith('//') ? 'https:$trimmed' : trimmed;
  final uri = Uri.tryParse(candidate);
  if (uri == null) return trimmed;

  if (uri.hasScheme) {
    final scheme = uri.scheme.toLowerCase();
    if (scheme == 'http' || scheme == 'https') {
      // Downgrade logo.m3uassets.com to http:// — server rejects TLS
      if (scheme == 'https' && _shouldDowngradeToHttp(uri)) {
        return uri.replace(scheme: 'http').toString();
      }
      return uri.toString();
    }
    return trimmed;
  }

  if (RegExp(r'^[^/\s]+\.[^/\s]+(/|$)').hasMatch(candidate)) {
    final parsed = Uri.tryParse('https://$candidate');
    if (parsed != null && _shouldDowngradeToHttp(parsed)) {
      return 'http://$candidate';
    }
    return 'https://$candidate';
  }

  return trimmed;
}

/// Hosts that are known to reject HTTPS / TLS connections.
const _httpOnlyHosts = <String>{
  'logo.m3uassets.com',
};

bool _shouldDowngradeToHttp(Uri uri) {
  return _httpOnlyHosts.contains(uri.host.toLowerCase());
}

// Pre-compiled regex for fast SVG extension checking without string allocations
// Matches .svg at the end of the string or before query parameters (.svg?)
final RegExp _svgExtensionPattern = RegExp(r'\.svg(\?|$)', caseSensitive: false);

/// Checks if a URL points to an SVG image, optimized for hot paths.
bool isSvgUrl(String url) {
  return _svgExtensionPattern.hasMatch(url);
}

/// Build a fallback logo URL when the primary URL fails.
///
/// For `logo.m3uassets.com` URLs that fail even over HTTP, there's no reliable
/// way to construct the equivalent `cdn.iptvboss.pro` path because the two
/// services use different ID schemes. Returns `null` in that case so the
/// widget falls through to [ChannelLogoService] enrichment.
String? buildLogoFallbackUrl(String failedUrl, {String? tvgId}) {
  final uri = Uri.tryParse(failedUrl);
  if (uri == null) return null;

  final host = uri.host.toLowerCase();

  // If the http:// downgrade was already applied and still failed,
  // we can't construct a different CDN URL without a mapping table.
  // Return null so the caller falls through to ChannelLogoService enrichment.
  if (host == 'logo.m3uassets.com') {
    return null;
  }

  return null;
}
