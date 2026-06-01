part of '../main.dart';

class _DeviceMemoryInfo {
  final bool isLowMemory;
  _DeviceMemoryInfo({required this.isLowMemory});
}

Future<_DeviceMemoryInfo> _getDeviceMemoryInfo() async {
  try {
    if (kIsWeb) return _DeviceMemoryInfo(isLowMemory: false);

    // Simple heuristic: assume low memory if running on older Android (pre-8.0).
    // Shield TV devices (2–3 GB RAM) are NOT low-memory and should not be
    // treated as such — the old override was degrading artwork loading on one
    // of the most common IPTV devices.
    if (Platform.isAndroid) {
      final info = await Process.run('getprop', ['ro.build.version.sdk']);
      final sdkVersion = int.tryParse(info.stdout.toString().trim()) ?? 30;
      return _DeviceMemoryInfo(isLowMemory: sdkVersion < 26); // Android 8.0+
    }

    return _DeviceMemoryInfo(isLowMemory: false);
  } catch (e) {
    return _DeviceMemoryInfo(isLowMemory: false);
  }
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
