import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

/// Centralized image cache configuration for consistent performance across the app.
/// 
/// This class provides standardized cache settings to prevent memory issues
/// and ensure consistent image loading behavior throughout the app.
class ImageCacheConfig {
  ImageCacheConfig._();

  /// Maximum number of images to keep in memory cache
  /// Reduced from default to prevent OOM on low-end devices
  static const int maxMemoryCacheEntries = 100;

  /// Maximum size of memory cache in bytes (50MB)
  static const int maxMemoryCacheSizeBytes = 50 * 1024 * 1024;

  /// Default cache width for thumbnails
  static const int defaultThumbWidth = 400;

  /// Default cache height for thumbnails  
  static const int defaultThumbHeight = 300;

  /// Default cache width for hero images
  static const int defaultHeroWidth = 1280;

  /// Default cache height for hero images
  static const int defaultHeroHeight = 720;

  /// Default cache width for channel logos
  static const int defaultLogoWidth = 200;

  /// Default cache height for channel logos
  static const int defaultLogoHeight = 150;

  /// Initialize the image cache with optimized settings
  static void initialize() {
    // Configure the Flutter image cache
    PaintingBinding.instance.imageCache
      ..maximumSize = maxMemoryCacheEntries
      ..maximumSizeBytes = maxMemoryCacheSizeBytes;

    // Configure cached_network_image defaults
    CachedNetworkImage.logLevel = CacheManagerLogLevel.none;
  }

  /// Calculate optimal cache dimensions based on device pixel ratio
  static ({int width, int height}) calculateCacheDimensions(
    double displayWidth,
    double displayHeight, {
    double? devicePixelRatio,
    int maxCacheWidth = 1920,
    int maxCacheHeight = 1080,
  }) {
    final dpr = devicePixelRatio ?? 1.0;
    final cacheWidth = (displayWidth * dpr).round().clamp(1, maxCacheWidth);
    final cacheHeight = (displayHeight * dpr).round().clamp(1, maxCacheHeight);
    return (width: cacheWidth, height: cacheHeight);
  }

  /// Get cache dimensions for a thumbnail
  static ({int width, int height}) getThumbCacheDimensions(
    double displayWidth,
    double displayHeight, {
    double? devicePixelRatio,
  }) {
    return calculateCacheDimensions(
      displayWidth,
      displayHeight,
      devicePixelRatio: devicePixelRatio,
      maxCacheWidth: defaultThumbWidth,
      maxCacheHeight: defaultThumbHeight,
    );
  }

  /// Get cache dimensions for a hero image
  static ({int width, int height}) getHeroCacheDimensions(
    double displayWidth,
    double displayHeight, {
    double? devicePixelRatio,
  }) {
    return calculateCacheDimensions(
      displayWidth,
      displayHeight,
      devicePixelRatio: devicePixelRatio,
      maxCacheWidth: defaultHeroWidth,
      maxCacheHeight: defaultHeroHeight,
    );
  }

  /// Get cache dimensions for a channel logo
  static ({int width, int height}) getLogoCacheDimensions(
    double displayWidth,
    double displayHeight, {
    double? devicePixelRatio,
  }) {
    return calculateCacheDimensions(
      displayWidth,
      displayHeight,
      devicePixelRatio: devicePixelRatio,
      maxCacheWidth: defaultLogoWidth,
      maxCacheHeight: defaultLogoHeight,
    );
  }

  /// Clear all image caches
  static void clearCaches() {
    PaintingBinding.instance.imageCache.clear();
    PaintingBinding.instance.imageCache.clearLiveImages();
  }

  /// Evict a specific image from the cache
  static bool evictImage(String url) {
    return PaintingBinding.instance.imageCache.evict(
      NetworkImage(url),
      includeLive: true,
    );
  }
}
