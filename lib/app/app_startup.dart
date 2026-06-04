part of '../main.dart';

class _DeviceMemoryInfo {
  final bool isLowMemory;
  _DeviceMemoryInfo({required this.isLowMemory});
}

Future<_DeviceMemoryInfo> _getDeviceMemoryInfo() async {
  // Supported Android targets are API 26+; avoid a getprop subprocess on every cold start.
  return _DeviceMemoryInfo(isLowMemory: false);
}

void _configureImageCacheLimits(_DeviceMemoryInfo memoryInfo) {
  ImageFailureCache.setAggressiveMode(memoryInfo.isLowMemory);
  if (memoryInfo.isLowMemory) {
    PaintingBinding.instance.imageCache.maximumSize = 80;
    PaintingBinding.instance.imageCache.maximumSizeBytes = 100 << 20;
    StartupProbe.mark('Image cache limits configured (LOW MEMORY)');
    PaintingBinding.instance.imageCache.clear();
    try {
      PaintingBinding.instance.imageCache.clearLiveImages();
    } catch (e) {
      debugLog('main: clearLiveImages failed: $e');
    }
    StartupProbe.mark('Low-memory image cache cleanup completed');
  } else {
    PaintingBinding.instance.imageCache.maximumSize = 150;
    PaintingBinding.instance.imageCache.maximumSizeBytes = 200 << 20;
    StartupProbe.mark('Image cache limits configured (NORMAL)');
  }
}

/// Heavy startup work deferred until after the first Flutter frame (native splash dismisses).
Future<void> _completeDeferredStartup() async {
  StartupProbe.mark('Deferred startup begin');
  unawaited(CrashLogger.instance.init());

  final memoryInfo = await _getDeviceMemoryInfo();
  _configureImageCacheLimits(memoryInfo);

  await SSLHandler.init();
  StartupProbe.mark('SSL handler configured');

  HttpClientService().initialize();
  StartupProbe.mark('HTTP client service initialized');

  if (!kIsWeb && Platform.isAndroid) {
    TVFocusHelper.setIsAndroidTV(true);
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    StartupProbe.mark('Preferred orientations locked (Android)');
  }

  _ensureMediaKitIfNeeded();
  initializeSqliteForPlatform();
  StartupProbe.mark('SQLite platform initialized');

  StartupProbe.mark('Deferred startup complete');
}

/// media_kit + libmpv are bundled for Linux desktop only (see media_kit_libs_linux).
void _ensureMediaKitIfNeeded() {
  if (kIsWeb || !Platform.isLinux) return;
  MediaKit.ensureInitialized();
  StartupProbe.mark('MediaKit initialized (Linux)');
}

/// Single compiled RegExp for error suppression — O(1) amortized instead of
/// O(n) linear scan through individual `.contains()` checks.
final _suppressedErrorPattern = RegExp(
  [
    r'429',
    r'rate limit',
    r'HttpException',
    r'SocketException',
    r'ClientException',
    r'RenderFlex overflowed',
    r'overflowed by',
    r'Invalid image data',
    r'Image data',
    r'Failed to load network image',
    r'NetworkImageLoadException',
    r'HandshakeException',
    r'Connection closed',
    r'Connection reset',
  ].map(RegExp.escape).join('|'),
  caseSensitive: false,
);

bool _shouldSuppressError(String errorStr) {
  return _suppressedErrorPattern.hasMatch(errorStr);
}
