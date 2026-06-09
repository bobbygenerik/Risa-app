import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iptv_player/utils/image_cache_config.dart';
import 'package:iptv_player/utils/image_url_helper.dart';
import 'package:iptv_player/utils/shared_image_cache_manager.dart';

class _LogoCacheEntry {
  final ImageProvider provider;
  _LogoCacheEntry(this.provider);
}

/// Small in-memory cache for logo ImageProviders to reduce repeat loads.
class LogoImageCache {
  static const int _maxEntries = 80;
  static final Map<String, _LogoCacheEntry> _cache = {};
  static final List<String> _order = [];

  static ImageProvider providerFor(
    String url, {
    Map<String, String>? headers,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    final normalizedUrl = normalizeImageUrl(url);
    final key = _cacheKey(normalizedUrl, headers, cacheWidth, cacheHeight);
    final existing = _cache[key];
    if (existing != null) {
      _touch(key);
      return existing.provider;
    }

    final provider = CachedNetworkImageProvider(
      normalizedUrl,
      headers: headers,
      cacheManager: SharedImageCacheManager.instance,
    );
    // policy.fit preserves aspect ratio; without it ResizeImage stretches
    // non-square logos (e.g. HBO) to a 256x256 square.
    final resized = ResizeImage(
      provider,
      width: cacheWidth ?? ImageCacheConfig.defaultLogoWidth,
      height: cacheHeight ?? ImageCacheConfig.defaultLogoHeight,
      policy: ResizeImagePolicy.fit,
    );
    _cache[key] = _LogoCacheEntry(resized);
    _order.add(key);
    _trim();
    return resized;
  }

  static String _cacheKey(
    String url,
    Map<String, String>? headers,
    int? cacheWidth,
    int? cacheHeight,
  ) {
    final dims = '${cacheWidth ?? 0}x${cacheHeight ?? 0}';
    if (headers == null || headers.isEmpty) return '$url|$dims';
    final headerKey =
        headers.entries.map((entry) => '${entry.key}:${entry.value}').join('|');
    return '$url|$headerKey|$dims';
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
