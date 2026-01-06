import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iptv_player/utils/image_url_helper.dart';

class _LogoCacheEntry {
  final ImageProvider provider;
  _LogoCacheEntry(this.provider);
}

/// Small in-memory cache for logo ImageProviders to reduce repeat loads.
class LogoImageCache {
  static const int _maxEntries = 200;
  static final Map<String, _LogoCacheEntry> _cache = {};
  static final List<String> _order = [];

  static ImageProvider providerFor(
    String url, {
    Map<String, String>? headers,
  }) {
    final normalizedUrl = normalizeImageUrl(url);
    final key = _cacheKey(normalizedUrl, headers);
    final existing = _cache[key];
    if (existing != null) {
      _touch(key);
      return existing.provider;
    }

    final provider =
        CachedNetworkImageProvider(normalizedUrl, headers: headers);
    _cache[key] = _LogoCacheEntry(provider);
    _order.add(key);
    _trim();
    return provider;
  }

  static String _cacheKey(String url, Map<String, String>? headers) {
    if (headers == null || headers.isEmpty) return url;
    final headerKey = headers.entries
        .map((entry) => '${entry.key}:${entry.value}')
        .join('|');
    return '$url|$headerKey';
  }

  static void _touch(String key) {
    _order.remove(key);
    _order.add(key);
  }

  static void _trim() {
    while (_order.length > _maxEntries) {
      final oldest = _order.removeAt(0);
      _cache.remove(oldest);
    }
  }

  static void clear() {
    _cache.clear();
    _order.clear();
  }
}
