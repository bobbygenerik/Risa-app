import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class SharedImageCacheManager {
  SharedImageCacheManager._();

  static final CacheManager instance = CacheManager(
    Config(
      'risaSharedImageCache',
      stalePeriod: const Duration(days: 14),
      maxNrOfCacheObjects: 4000,
      repo: CacheObjectProvider(databaseName: 'risaSharedImageCache'),
    ),
  );
}
