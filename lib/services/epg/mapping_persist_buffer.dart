import 'dart:async';

/// Coalesces channel->EPG-id mapping writes into batched flushes.
///
/// During hydration thousands of mappings resolve in bursts; persisting each
/// one individually meant one DB transaction per channel on the UI isolate.
/// Buffering them and flushing once per [flushDelay] turns that into a single
/// batched upsert.
class MappingPersistBuffer {
  MappingPersistBuffer({
    required this.onFlush,
    this.flushDelay = const Duration(milliseconds: 500),
    this.onError,
  });

  final Future<void> Function(Map<String, String> batch) onFlush;
  final Duration flushDelay;
  final void Function(Object error)? onError;

  final Map<String, String> _pending = {};
  Timer? _timer;

  void add(String channelId, String epgId) {
    _pending[channelId] = epgId;
    _timer ??= Timer(flushDelay, flushNow);
  }

  void flushNow() {
    _timer?.cancel();
    _timer = null;
    if (_pending.isEmpty) return;
    final batch = Map<String, String>.of(_pending);
    _pending.clear();
    onFlush(batch).catchError((Object e) {
      onError?.call(e);
    });
  }

  void dispose() {
    flushNow();
  }
}
