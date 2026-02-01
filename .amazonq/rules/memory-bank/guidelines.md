# Development Guidelines - Risa IPTV Player

## Code Quality Standards

### Kotlin Code Formatting

#### Package Structure
- Use reverse domain notation: `com.risa.app`, `com.risa.iptv`, `com.iptvplayer.iptv_player`
- Group related functionality in the same package
- Keep platform-specific code in dedicated packages

#### Class Organization
```kotlin
// 1. Package declaration
package com.risa.iptv

// 2. Imports (grouped: Android, AndroidX, third-party, internal)
import android.content.Context
import androidx.media3.common.Player
import io.flutter.embedding.engine.plugins.FlutterPlugin
import kotlinx.coroutines.*

// 3. Class declaration with annotations
@UnstableApi
class WhisperPlugin : FlutterPlugin, MethodCallHandler {
    // 4. Companion object with constants
    companion object {
        private const val CHANNEL = "com.risa.iptv/whisper"
        private const val SAMPLE_RATE = 16000
    }
    
    // 5. Properties (lateinit, nullable, non-null)
    private lateinit var channel: MethodChannel
    private var activity: Activity? = null
    private val captureScope = CoroutineScope(SupervisorJob() + Dispatchers.IO)
    
    // 6. Lifecycle methods
    override fun onCreate() { }
    
    // 7. Public methods
    fun publicMethod() { }
    
    // 8. Private methods
    private fun privateMethod() { }
}
```

#### Naming Conventions
- **Classes**: PascalCase (`WhisperPlugin`, `ExoPlayerView`)
- **Methods**: camelCase (`startAudioCapture`, `loadVideo`)
- **Properties**: camelCase (`mediaSession`, `isInPipMode`)
- **Constants**: UPPER_SNAKE_CASE (`SAMPLE_RATE`, `CHANNEL_COUNT`)
- **Private properties**: prefix with underscore if needed (`_suppressCrashFileWrites`)

#### Null Safety
```kotlin
// Use nullable types explicitly
private var activity: Activity? = null

// Safe call operator
activity?.getSystemService(Context.MEDIA_PROJECTION_SERVICE)

// Elvis operator for defaults
val volume = call.argument<Double>("volume")?.toFloat() ?: 1f

// Let for null checks
transcriptionSink?.let { audioCapturer?.setEventSink(it) }

// Safe cast
val trackIndex = (call.argument<Any>("trackIndex") as? Number)?.toInt() ?: -1
```

#### Coroutines Usage
```kotlin
// Use CoroutineScope for lifecycle-aware coroutines
private val captureScope = CoroutineScope(SupervisorJob() + Dispatchers.IO)

// Launch coroutines with proper dispatchers
CoroutineScope(Dispatchers.IO).launch {
    val result = performHeavyOperation()
    withContext(Dispatchers.Main) {
        updateUI(result)
    }
}

// Cancel jobs on cleanup
captureJob?.cancel()
captureJob = null
```

#### Error Handling
```kotlin
// Try-catch with specific exceptions
try {
    whisperLib = WhisperLib()
    result.success(true)
} catch (e: Exception) {
    result.success(false)
}

// Suppress specific exceptions when expected
try {
    audioRecord?.stop()
} catch (_: Exception) {}

// Log errors with context
android.util.Log.e("ExoPlayer", "Playback error: ${error.message}")
```

### Dart/Flutter Code Formatting

#### File Organization
```dart
// 1. Imports (dart:, package:flutter, package:provider, package:iptv_player, third-party)
import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:dio/dio.dart';

// 2. Constants
const bool _enablePrewarm = false;

// 3. Main class
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  
  @override
  State<MyApp> createState() => _MyAppState();
}

// 4. State class
class _MyAppState extends State<MyApp> {
  // Properties
  bool _disclaimerAccepted = false;
  
  // Lifecycle methods
  @override
  void initState() {
    super.initState();
  }
  
  // Build method
  @override
  Widget build(BuildContext context) {
    return Container();
  }
  
  // Private methods
  Future<void> _initialize() async { }
}
```

#### Naming Conventions
- **Classes**: PascalCase (`ChannelProvider`, `LiveTVScreen`)
- **Methods**: camelCase (`loadPlaylist`, `ensureChannelsLoaded`)
- **Properties**: camelCase (`isLoading`, `currentChannel`)
- **Private members**: prefix with underscore (`_initialize`, `_hasPlaylist`)
- **Constants**: camelCase with const (`const bool _enablePrewarm`)

#### Async/Await Patterns
```dart
// Use async/await for asynchronous operations
Future<void> _initialize() async {
  try {
    await FastStartupService.instance.initialize();
    await _checkDisclaimer();
    await _checkAndLoadPlaylist();
  } catch (error, stack) {
    debugLog('Initialization error: $error');
  }
}

// Use unawaited for fire-and-forget
unawaited(CrashLogger.instance.init());

// Use Future.microtask for deferred execution
Future.microtask(() => service.quickStart());

// Use Future.delayed for timed delays
await Future.delayed(const Duration(milliseconds: 500));
```

#### State Management with Provider
```dart
// ChangeNotifier for state classes
class ChannelProvider extends ChangeNotifier {
  List<Channel> _channels = [];
  
  void updateChannels(List<Channel> channels) {
    _channels = channels;
    notifyListeners();
  }
}

// ProxyProvider for dependent providers
ChangeNotifierProxyProvider<IncrementalEpgService, ChannelProvider>(
  create: (context) => ChannelProvider(),
  update: (context, epgService, channelProvider) {
    final provider = channelProvider ?? ChannelProvider();
    Future.microtask(() => provider.setEpgService(epgService));
    return provider;
  },
)

// Consumer for reactive UI
Consumer<ChannelProvider>(
  builder: (context, provider, child) {
    return Text(provider.channelCount.toString());
  },
)
```

#### Error Handling
```dart
// Try-catch with specific error types
try {
  await loadPlaylist();
} on DioException catch (e) {
  debugLog('Network error: ${e.message}');
} catch (error, stack) {
  debugLog('Unexpected error: $error');
  unawaited(CrashLogger.instance.logError(error, stack));
}

// Error suppression for known issues
final errorStr = error.toString();
if (_shouldSuppressError(errorStr)) {
  debugLog('Suppressed error: $error');
  return;
}

// Null-aware operators
final url = channel?.url ?? 'default_url';
final name = channel?.name;
```

### Python Code Formatting

#### Script Structure
```python
#!/usr/bin/env python3
"""Module docstring describing purpose.

Usage:
  python3 script.py <arg1> <arg2>
"""
import argparse
import re
import sys
from dataclasses import dataclass
from typing import List, Optional, Tuple

# Constants
NON_ALNUM_RE = re.compile(r"[^a-z0-9]")

# Data classes
@dataclass(frozen=True)
class EpgChannel:
    channel_id: str
    display_name: str

# Functions
def normalize(text: str) -> str:
    return NON_ALNUM_RE.sub("", text.lower()) if text else ""

# Main entry point
def main():
    parser = argparse.ArgumentParser(description="Tool description")
    parser.add_argument("input", help="Input file")
    args = parser.parse_args()

if __name__ == "__main__":
    main()
```

#### Naming Conventions
- **Functions**: snake_case (`normalize`, `load_epg_channels`)
- **Classes**: PascalCase (`EpgChannel`, `WhisperLib`)
- **Constants**: UPPER_SNAKE_CASE (`NON_ALNUM_RE`, `SAMPLE_RATE`)
- **Variables**: snake_case (`channel_id`, `display_name`)

## Architectural Patterns

### Service Layer Pattern

Services encapsulate business logic and external integrations:

```dart
// Service singleton pattern
class TMDBService {
  static TMDBService? _instance;
  static TMDBService get instance => _instance ??= TMDBService._();
  
  TMDBService._();
  
  static Future<void> init() async {
    // Initialize service
  }
  
  Future<Map<String, dynamic>?> searchProgram(String query) async {
    // Implementation
  }
}

// Service with ChangeNotifier for reactive state
class IncrementalEpgService extends ChangeNotifier {
  Future<void> quickStart() async {
    // Fast initialization
    notifyListeners();
  }
  
  Future<void> loadPrograms(String channelId) async {
    // Load EPG data
    notifyListeners();
  }
}
```

### Provider Pattern for State Management

```dart
// Simple ChangeNotifier provider
ChangeNotifierProvider(
  create: (_) {
    final provider = SettingsProvider();
    provider.initialize();
    return provider;
  },
)

// ProxyProvider with dependencies
ChangeNotifierProxyProvider<IncrementalEpgService, ChannelProvider>(
  create: (context) => ChannelProvider(),
  update: (context, epgService, channelProvider) {
    final provider = channelProvider ?? ChannelProvider();
    Future.microtask(() => provider.setEpgService(epgService));
    return provider;
  },
)
```

### Isolate Pattern for Heavy Processing

```dart
// Isolate-based service
class LogoMatchingIsolate {
  static Future<List<Match>> matchLogos(List<Channel> channels) async {
    return await compute(_matchLogosIsolate, channels);
  }
  
  static List<Match> _matchLogosIsolate(List<Channel> channels) {
    // CPU-intensive matching logic
    return matches;
  }
}
```

### Circuit Breaker Pattern

```dart
class CircuitBreaker {
  int _failureCount = 0;
  final int _threshold = 5;
  bool _isOpen = false;
  
  Future<T> execute<T>(Future<T> Function() operation) async {
    if (_isOpen) {
      throw CircuitBreakerOpenException();
    }
    
    try {
      final result = await operation();
      _failureCount = 0;
      return result;
    } catch (e) {
      _failureCount++;
      if (_failureCount >= _threshold) {
        _isOpen = true;
      }
      rethrow;
    }
  }
}
```

### Repository Pattern for Data Access

```dart
class LocalDbService {
  static Database? _database;
  
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }
  
  Future<List<Channel>> getChannels() async {
    final db = await database;
    final maps = await db.query('channels');
    return maps.map((m) => Channel.fromMap(m)).toList();
  }
  
  Future<void> insertChannel(Channel channel) async {
    final db = await database;
    await db.insert('channels', channel.toMap());
  }
}
```

## Common Code Idioms

### Flutter Widget Patterns

#### Deferred Initialization
```dart
// Use addPostFrameCallback for post-build operations
WidgetsBinding.instance.addPostFrameCallback((_) {
  BackgroundTaskManager.start(context);
});

// Use Future.microtask for immediate async operations
Future.microtask(() => provider.autoLoadPlaylist());
```

#### Focus Management for TV
```dart
// TV-friendly focusable widget
Focus(
  autofocus: true,
  child: Builder(
    builder: (context) {
      final isFocused = Focus.of(context).hasFocus;
      return AnimatedScale(
        scale: isFocused ? TVFocusStyle.focusScale : 1.0,
        duration: TVFocusStyle.animationDuration,
        child: Container(
          decoration: BoxDecoration(
            boxShadow: isFocused 
              ? TVFocusStyle.focusedShadow 
              : TVFocusStyle.defaultShadow,
          ),
          child: child,
        ),
      );
    },
  ),
)
```

#### Safe Navigation
```dart
// SafePopScope for back button handling
SafePopScope(
  child: SettingsScreen(),
)

// GoRouter navigation
context.go('/player', extra: channel);
GoRouter.of(context).go('/home');
```

#### Conditional Rendering
```dart
// Use if expressions in widget lists
children: [
  Text('Always visible'),
  if (isLoading) CircularProgressIndicator(),
  if (hasError) ErrorWidget(),
]

// Use ternary for single widgets
child: isLoading ? LoadingWidget() : ContentWidget()
```

### Kotlin Platform Channel Patterns

#### Method Channel Handler
```kotlin
override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
    when (call.method) {
        "loadVideo" -> {
            val videoUrl = call.argument<String>("videoUrl")
            if (videoUrl != null) {
                loadVideo(videoUrl)
                result.success(null)
            } else {
                result.error("INVALID_URL", "Video URL is required", null)
            }
        }
        "play" -> {
            exoPlayer.play()
            result.success(null)
        }
        else -> result.notImplemented()
    }
}
```

#### Event Channel Handler
```kotlin
override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
    eventSink = events
}

override fun onCancel(arguments: Any?) {
    eventSink = null
}

// Send events
eventSink?.success(transcriptionText)
```

#### Activity Result Handling
```kotlin
override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?): Boolean {
    if (requestCode != CAPTURE_REQUEST_CODE) return false
    
    if (resultCode == Activity.RESULT_OK && data != null) {
        mediaProjection = projectionManager!!.getMediaProjection(resultCode, data)
        pendingPermissionResult?.success(true)
    } else {
        pendingPermissionResult?.success(false)
    }
    pendingPermissionResult = null
    return true
}
```

### Memory Management Patterns

#### Image Cache Configuration
```dart
// Conservative cache limits for low-memory devices
if (memoryInfo.isLowMemory) {
  PaintingBinding.instance.imageCache.maximumSize = 15;
  PaintingBinding.instance.imageCache.maximumSizeBytes = 2 << 20; // 2MB
} else {
  PaintingBinding.instance.imageCache.maximumSize = 40;
  PaintingBinding.instance.imageCache.maximumSizeBytes = 6 << 20; // 6MB
}

// Clear cache when needed
PaintingBinding.instance.imageCache.clear();
PaintingBinding.instance.imageCache.clearLiveImages();
```

#### Resource Cleanup
```kotlin
override fun dispose() {
    isDisposed = true
    try {
        positionUpdateRunnable?.let { mainHandler.removeCallbacks(it) }
        methodChannel.setMethodCallHandler(null)
        exoPlayer.release()
    } catch (e: Exception) {
        android.util.Log.w("ExoPlayer", "Error during dispose: ${e.message}")
    }
}
```

```dart
@override
void dispose() {
  BackgroundTaskManager.stop();
  _pendingDeferredOperations.clear();
  super.dispose();
}
```

## Internal API Usage Patterns

### Flutter Method Channels

#### Dart Side
```dart
// Define channel
final _channel = MethodChannel('com.streamhub.iptv/pip');

// Invoke method
final result = await _channel.invokeMethod('enterPipMode');

// Handle method calls from native
_channel.setMethodCallHandler((call) async {
  if (call.method == 'onPipModeChanged') {
    final isInPipMode = call.arguments['isInPipMode'] as bool;
    // Handle state change
  }
});
```

#### Kotlin Side
```kotlin
// Create channel
val channel = MethodChannel(messenger, "com.streamhub.iptv/pip")

// Set handler
channel.setMethodCallHandler { call, result ->
    when (call.method) {
        "enterPipMode" -> {
            val success = enterPictureInPictureMode(params)
            result.success(success)
        }
        else -> result.notImplemented()
    }
}

// Invoke method to Dart
channel.invokeMethod("onPipModeChanged", mapOf("isInPipMode" to true))
```

### ExoPlayer Integration

```kotlin
// Build ExoPlayer with custom configuration
val loadControl = DefaultLoadControl.Builder()
    .setBufferDurationsMs(2000, 4000, 500, 1000)
    .setTargetBufferBytes(4 * 1024 * 1024)
    .setPrioritizeTimeOverSizeThresholds(true)
    .build()

exoPlayer = ExoPlayer.Builder(context, renderersFactory)
    .setMediaSourceFactory(mediaSourceFactory)
    .setLoadControl(loadControl)
    .setTrackSelector(trackSelector)
    .build()

// Add listener
exoPlayer.addListener(object : Player.Listener {
    override fun onPlaybackStateChanged(state: Int) {
        methodChannel.invokeMethod("onPlaybackStateChanged", 
            mapOf("state" to stateName))
    }
})

// Load media
val mediaItem = MediaItem.fromUri(Uri.parse(url))
exoPlayer.setMediaItem(mediaItem)
exoPlayer.prepare()
```

### Provider Access Patterns

```dart
// Read provider without listening
final provider = Provider.of<ChannelProvider>(context, listen: false);

// Listen to provider changes
final provider = Provider.of<ChannelProvider>(context);

// Consumer for scoped listening
Consumer<ChannelProvider>(
  builder: (context, provider, child) {
    return Text(provider.channelCount.toString());
  },
)

// Selector for optimized listening
Selector<ChannelProvider, int>(
  selector: (context, provider) => provider.channelCount,
  builder: (context, count, child) {
    return Text(count.toString());
  },
)
```

### GoRouter Navigation

```dart
// Define routes
final _router = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      pageBuilder: (context, state) => 
        _fadeSlidePage(key: state.pageKey, child: LiveTVScreen()),
    ),
    ShellRoute(
      builder: (context, state, child) => MainShell(child: child),
      routes: [
        // Nested routes
      ],
    ),
  ],
);

// Navigate
context.go('/player', extra: channel);
context.push('/settings');
context.pop();
```

## Frequently Used Annotations

### Dart Annotations
```dart
@override  // Override superclass method
@protected  // Protected member (visible to subclasses)
@visibleForTesting  // Visible for testing only
@immutable  // Immutable class
@required  // Required parameter (deprecated, use 'required' keyword)
const  // Compile-time constant
final  // Runtime constant
```

### Kotlin Annotations
```kotlin
@UnstableApi  // Media3 unstable API
@NonNull  // Non-null parameter/return
@Suppress("XXE")  // Suppress specific warning
override  // Override superclass method
lateinit  // Late initialization
companion object  // Static members
```

### Lint Suppressions
```dart
// ignore: avoid_print
print('Debug message');

// ignore_for_file: todo
// Suppress TODO warnings for entire file
```

## Testing Patterns

### Widget Tests
```dart
testWidgets('Widget displays correctly', (WidgetTester tester) async {
  await tester.pumpWidget(
    MaterialApp(home: MyWidget()),
  );
  
  expect(find.text('Expected Text'), findsOneWidget);
  
  await tester.tap(find.byType(ElevatedButton));
  await tester.pump();
  
  expect(find.text('After Tap'), findsOneWidget);
});
```

### Unit Tests
```dart
test('Service returns correct data', () async {
  final service = MyService();
  final result = await service.fetchData();
  
  expect(result, isNotNull);
  expect(result.length, greaterThan(0));
});
```

## Performance Best Practices

### Lazy Loading
```dart
// Defer heavy initialization
Future.microtask(() async {
  if (await _shouldInitTranscriptionServices()) {
    await manager.initialize();
  }
});

// Use const constructors
const Text('Static text');
const SizedBox(height: 16);
```

### Efficient Rebuilds
```dart
// Use keys for list items
ListView.builder(
  itemBuilder: (context, index) {
    return ListTile(
      key: ValueKey(items[index].id),
      title: Text(items[index].name),
    );
  },
)

// Separate stateful widgets
class ParentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StaticWidget(),  // Won't rebuild
        StatefulChildWidget(),  // Only this rebuilds
      ],
    );
  }
}
```

### Memory Optimization
```kotlin
// Limit buffer sizes for ExoPlayer
val loadControl = DefaultLoadControl.Builder()
    .setBufferDurationsMs(2000, 4000, 500, 1000)
    .setTargetBufferBytes(4 * 1024 * 1024)
    .build()

// Release resources promptly
override fun dispose() {
    exoPlayer.release()
    super.dispose()
}
```

## Logging Standards

### Dart Logging
```dart
import 'package:iptv_player/utils/debug_helper.dart';

// Debug logging
debugLog('Message with context');

// System logging
logToSystem('Important message', name: 'RisaFlutter');

// Crash logging
await CrashLogger.instance.logError(error, stack, source: 'flutter');
```

### Kotlin Logging
```kotlin
import android.util.Log

// Standard logging
Log.d("ExoPlayer", "Debug message")
Log.i("ExoPlayer", "Info message")
Log.w("ExoPlayer", "Warning message")
Log.e("ExoPlayer", "Error message: ${error.message}")
```

## Security Practices

### Input Validation
```dart
// Validate URLs
final uri = Uri.tryParse(url);
if (uri == null || uri.scheme.isEmpty) {
  throw ArgumentError('Invalid URL');
}

// Sanitize user input
final sanitized = input.replaceAll(RegExp(r'[^\w\s-]'), '');
```

### Secure Storage
```dart
// Use SharedPreferences for non-sensitive data
final prefs = await SharedPreferences.getInstance();
await prefs.setString('key', 'value');

// Never store credentials in plain text
// Use platform-specific secure storage if needed
```

### SSL Handling
```kotlin
// Custom SSL handler for IPTV providers
class IPTVHttpOverrides : HttpOverrides() {
    override fun createHttpClient(context: SecurityContext?): HttpClient {
        return super.createHttpClient(context)
            ..badCertificateCallback = { cert, host, port -> 
                // Only allow for specific hosts
                allowedHosts.contains(host)
            }
    }
}
```

## Documentation Standards

### Dart Documentation
```dart
/// Service for managing IPTV playlists.
///
/// Handles M3U and Xtream Codes playlist parsing, caching,
/// and channel management.
class PlaylistService {
  /// Loads a playlist from the given [url].
  ///
  /// Returns a list of [Channel] objects or throws an exception
  /// if the playlist cannot be loaded.
  Future<List<Channel>> loadPlaylist(String url) async {
    // Implementation
  }
}
```

### Kotlin Documentation
```kotlin
/**
 * Native ExoPlayer view for Flutter platform integration.
 *
 * Provides hardware-accelerated video playback with support for
 * HLS, DASH, and progressive streams.
 *
 * @param context Android context
 * @param messenger Flutter binary messenger for method channels
 * @param viewId Unique view identifier
 */
class ExoPlayerView(
    context: Context,
    messenger: BinaryMessenger,
    viewId: Int
) : PlatformView {
    // Implementation
}
```

### Python Documentation
```python
def normalize(text: str) -> str:
    """Normalize text for fuzzy matching.
    
    Removes all non-alphanumeric characters and converts to lowercase.
    
    Args:
        text: Input text to normalize
        
    Returns:
        Normalized text string, or empty string if input is None
    """
    return NON_ALNUM_RE.sub("", text.lower()) if text else ""
```

## Code Review Checklist

- [ ] Code follows naming conventions
- [ ] Proper error handling with try-catch
- [ ] Resources are properly disposed/released
- [ ] No hardcoded credentials or sensitive data
- [ ] Null safety properly handled
- [ ] Async operations use proper patterns
- [ ] Memory management considered (cache limits, cleanup)
- [ ] Logging includes context and error details
- [ ] Documentation added for public APIs
- [ ] Tests added for new functionality
- [ ] Performance impact considered
- [ ] Accessibility requirements met (TV focus, large text)
- [ ] Platform-specific code properly isolated
- [ ] Legal compliance maintained (no piracy enablement)
