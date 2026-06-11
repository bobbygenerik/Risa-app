import 'dart:convert';

import 'package:flutter/foundation.dart';

/// JSON-encodes [data] on a background isolate.
///
/// For large payloads (e.g. the Live TV snapshot: categories x channels x
/// programs) a synchronous [jsonEncode] on the UI isolate stalls frame builds.
/// [data] must be isolate-sendable (plain maps/lists/strings/nums/bools/null).
Future<String> jsonEncodeOffMain(Object? data) =>
    compute(jsonEncode, data, debugLabel: 'jsonEncodeOffMain');

/// Decodes a batch of JSONL lines on a background isolate.
///
/// Returns one entry per input line, in order: the decoded map, or null when
/// the line is malformed or not a JSON object (the caller counts those as
/// decode errors). Batching bounds memory; per-line jsonDecode on the UI
/// isolate was the dominant cost of EPG program ingest.
Future<List<Map<String, dynamic>?>> decodeJsonlBatchOffMain(
        List<String> lines) =>
    compute(_decodeJsonlBatch, lines, debugLabel: 'decodeJsonlBatchOffMain');

List<Map<String, dynamic>?> _decodeJsonlBatch(List<String> lines) {
  return [
    for (final line in lines)
      switch (_tryDecode(line)) {
        final Map<String, dynamic> map => map,
        _ => null,
      },
  ];
}

Object? _tryDecode(String line) {
  try {
    return jsonDecode(line);
  } catch (_) {
    return null;
  }
}
