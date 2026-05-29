const _sensitiveQueryKeys = <String>{
  'password',
  'username',
  'token',
  'access_token',
  'api_key',
  'apikey',
  'authorization',
};

String redactUrl(String url) {
  final uri = Uri.tryParse(url);
  if (uri == null || !uri.hasScheme) return _redactRaw(url);

  final query = Map<String, String>.from(uri.queryParameters);
  var changed = false;
  for (final key in query.keys.toList()) {
    if (_sensitiveQueryKeys.contains(key.toLowerCase())) {
      query[key] = 'REDACTED';
      changed = true;
    }
  }

  final segments = uri.pathSegments.toList();
  if (segments.length >= 4 &&
      {'live', 'movie', 'series'}.contains(segments.first.toLowerCase())) {
    segments[1] = 'REDACTED';
    segments[2] = 'REDACTED';
    changed = true;
  }

  if (!changed) return url;
  return uri
      .replace(
        pathSegments: segments.isEmpty ? null : segments,
        queryParameters: query.isEmpty ? null : query,
      )
      .toString();
}

String _redactRaw(String value) {
  return value.replaceAllMapped(
    RegExp(
      r'(username|password|token|api[_-]?key)=([^&\s]+)',
      caseSensitive: false,
    ),
    (match) => '${match.group(1)}=REDACTED',
  );
}
