import 'dart:io';
import 'dart:isolate';
import 'dart:async';
import '../services/m3u_parser_service.dart';

/// Legacy compute-compatible entrypoint retained for small payloads
Future<Map<String, dynamic>> parsePlaylistInIsolate(List<int> bytes) async {
  final parser = M3UParserService();
  return parser.parseM3UStreamToMaps(Stream.value(bytes));
}

/// Isolate worker that receives a SendPort and a stream source descriptor.
/// This supports progress updates and cooperative cancellation.
class _IsolateRequest {
  final SendPort replyPort;
  final String? filePath;
  final List<int>? bytes;
  final String? url;
  _IsolateRequest({required this.replyPort, this.filePath, this.bytes, this.url});
}

/// Top-level entrypoint for spawned isolate
void _isolateEntry(_IsolateRequest request) async {
  final SendPort reply = request.replyPort;
  HttpClient? client;
  try {
    final parser = M3UParserService();
    Stream<List<int>> stream;
    
    if (request.url != null) {
      client = HttpClient();
      // Disable auto-uncompress to handle it manually (sniffing)
      client.autoUncompress = false;
      client.badCertificateCallback = (cert, host, port) => true;
      final req = await client.getUrl(Uri.parse(request.url!));
      req.headers.add('User-Agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36');
      req.headers.add('Accept', '*/*');
      final resp = await req.close();
      
      if (resp.statusCode != 200) {
        throw Exception('HTTP ${resp.statusCode}');
      }

      Stream<List<int>> incoming = resp;
      
      // Check headers first
      final encoding = resp.headers.value('content-encoding')?.toLowerCase() ?? '';
      bool isGzip = encoding.contains('gzip');
      
      // If header says gzip, trust it (mostly). 
      // But acts of GZIP sniffing are required for "raw" streams that are actual GZIP but lack headers.
      
      if (isGzip) {
        stream = incoming.transform(gzip.decoder);
      } else {
        // Sniff first bytes to detect GZIP magic number (1f 8b)
        stream = _sniffAndDecompress(resp);
      }
    } else if (request.filePath != null) {
      final file = File(request.filePath!);
      stream = file.openRead();
    } else if (request.bytes != null) {
      stream = Stream.value(request.bytes!);
    } else {
      throw Exception('No source provided');
    }

    // Use fast parser without VOD detection for maximum speed
    final result = await parser.parseM3UStreamToMaps(stream,
        progressPort: reply);
    reply.send({'type': 'done', 'result': result});
  } catch (e, st) {
    reply.send({'type': 'error', 'error': e.toString(), 'stack': st.toString()});
  } finally {
    client?.close(force: true);
  }
}

// Sniff stream for GZIP magic bytes (0x1f 0x8b) and decompress if found
Stream<List<int>> _sniffAndDecompress(Stream<List<int>> source) async* {
  final iterator = StreamIterator(source);
  
  List<int>? firstChunk;
  while (await iterator.moveNext()) {
    final chunk = iterator.current;
    if (chunk.isNotEmpty) {
      firstChunk = chunk;
      break;
    }
  }
  
  if (firstChunk == null) return; // Stream empty
  
  bool isGzip = false;
  if (firstChunk.length >= 2) {
    if (firstChunk[0] == 0x1f && firstChunk[1] == 0x8b) {
      isGzip = true;
    }
  }
  
  // Reconstruct the stream
  // We need to yield firstChunk then the rest of iterator
  final reconstructed = _rebuildStream(firstChunk, iterator);
  
  if (isGzip) {
    yield* reconstructed.transform(gzip.decoder);
  } else {
    yield* reconstructed;
  }
}

// Helper to rebuild stream using StreamIterator results
Stream<List<int>> _rebuildStream(List<int> first, StreamIterator<List<int>> iterator) async* {
  yield first;
  while (await iterator.moveNext()) {
    yield iterator.current;
  }
}

/// Parse playlist in a spawned isolate with progress messages and cancellation support.
/// Returns a map with keys: 'result' (parsed maps) or 'error'.
Future<Map<String, dynamic>> parsePlaylistCancelable({
  String? filePath,
  List<int>? bytes,
  String? url,
  void Function(int parsedChannels)? onProgress,
  void Function(List<Map<String, dynamic>> chunk)? onChannelsChunk,
  CancelToken? cancelToken,
}) async {
  final receivePort = ReceivePort();
  final errorPort = ReceivePort();

  // Spawn a real isolate entry function (top-level) to avoid closure sendability issues
  final isolate = await Isolate.spawn<_IsolateRequest>(
      _isolateEntry,
      _IsolateRequest(
          replyPort: receivePort.sendPort, filePath: filePath, bytes: bytes, url: url),
      onError: errorPort.sendPort);

  final completer = Completer<Map<String, dynamic>>();

  StreamSubscription? sub;
  sub = receivePort.listen((message) {
    if (message is Map) {
      final t = message['type'];
      if (t == 'done') {
        completer.complete(Map<String, dynamic>.from(message['result']));
        sub?.cancel();
        receivePort.close();
        errorPort.close();
        isolate.kill(priority: Isolate.immediate);
      } else if (t == 'error') {
        completer.completeError(Exception(message['error']));
        sub?.cancel();
        receivePort.close();
        errorPort.close();
        isolate.kill(priority: Isolate.immediate);
      } else if (t == 'progress') {
        final channels = message['channels'] as int? ?? 0;
        if (onProgress != null) {
          try {
            onProgress(channels);
          } catch (_) {}
        }
      } else if (t == 'channels_chunk') {
        final chunk = (message['channels'] as List<dynamic>?)
            ?.cast<Map<String, dynamic>>();
        if (chunk != null && onChannelsChunk != null) {
          try {
            onChannelsChunk(chunk);
          } catch (_) {}
        }
      }
    }
  });

  // Cancel handling
  cancelToken?.onCancel = () {
    if (!completer.isCompleted) {
      completer.complete({'channels': [], 'epgUrl': null});
    }
    try {
      isolate.kill(priority: Isolate.immediate);
    } catch (_) {}
    sub?.cancel();
    receivePort.close();
    errorPort.close();
  };

  return completer.future;
}

/// Simple cancel token to request cancellation from caller side.
class CancelToken {
  void Function()? onCancel;
  bool get isCancelled => _cancelled;
  bool _cancelled = false;
  void cancel() {
    _cancelled = true;
    if (onCancel != null) onCancel!();
  }
}
