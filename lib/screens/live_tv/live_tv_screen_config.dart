/// Tuning constants for Live TV category/scroll prefetch.
class LiveTvScreenConfig {
  LiveTvScreenConfig._();

  static const int initialCategoryPrefetchCount = 20;
  static const int rowInitialFetch = 12;
  static const int rowFetchStep = 16;
  static const int categoryChunkSize = 6;
  static const double categoryPrefetchExtent = 600;
  static const int maxCategoryLoads = 2;
  static const int prefetchWindowRows = 3;
  static const int heroPrefetchWindow = 5;
  static const int rowPrefetchWindow = 8;
  static const bool forceRowsVisible = false;
  static const bool debugRowProbe = false;
}
