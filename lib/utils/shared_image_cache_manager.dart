import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class SharedImageCacheManager {
  SharedImageCacheManager._();

  static final CacheManager instance = CacheManager(
    Config(
      'risaSharedImageCache',
      stalePeriod: const Duration(days: 14),
      // Sized for large IPTV libraries: 7k+ channels each with a logo plus
      // per-program EPG artwork easily exceeds a few thousand objects. A 4000
      // cap evicted hot entries and forced re-downloads on scroll/relaunch.
      maxNrOfCacheObjects: 20000,
      repo: CacheObjectProvider(databaseName: 'risaSharedImageCache'),
    ),
  );
}
