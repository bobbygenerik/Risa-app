import 'dart:convert';

import 'package:flutter/foundation.dart';

/// JSON-encodes [data] on a background isolate.
///
/// For large payloads (e.g. the Live TV snapshot: categories x channels x
/// programs) a synchronous [jsonEncode] on the UI isolate stalls frame builds.
/// [data] must be isolate-sendable (plain maps/lists/strings/nums/bools/null).
Future<String> jsonEncodeOffMain(Object? data) =>
    compute(jsonEncode, data, debugLabel: 'jsonEncodeOffMain');
