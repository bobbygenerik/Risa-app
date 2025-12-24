import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:xml/xml_events.dart';
import 'package:iptv_player/models/program.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';

// Provider-block exception type removed — provider HTML cases are handled
// via graceful aborts and user-facing `_error` messages to preserve
// last-known-good EPG state.

class IncrementalEpgService extends ChangeNotifier {
  final Set<String> _availableChannels = {};
  final Set<String> _loadedChannels = {};
  final Map<String, String> _internalToEpgIdMapping = {};
  Map<String, String>?
      _normalizedAvailableChannels; // normalizedId -> originalId
  bool _isLoading = false;
  bool _isDownloading = false;
  bool _isParsing = false;
  String? _error;
  String? _epgUrl;
  bool _hasParsed = false;

  // Storage for all parsed programs
  final Map<String, List<Program>> _programsByChannel = {};

  // legacy prefs keys removed: do not store large EPG data in SharedPreferences
  static const String _epgCacheTimeKey = 'epg_cache_time';
  static const String _normalizedMapFileName = 'epg_normalized.json';
  static const int _channelsPerBatch = 50;
  static const int _maxRetries = 3;
  static const Duration _cacheDuration = Duration(hours: 6);

  bool get isLoading => _isLoading;
  bool get isDownloading => _isDownloading;
  bool get isParsing => _isParsing;
  String? get error => _error;
  Set<String> get availableChannels => _availableChannels;
  int get loadedChannelCount => _loadedChannels.length;
  bool get hasEpgUrl => _epgUrl != null && _epgUrl!.isNotEmpty;

  Future<void> initialize({bool forceRefresh = false}) async {
    debugLog('EPG: Initializing...');
    final prefs = await SharedPreferences.getInstance();
    // Try both keys - custom_epg_url (set by user) and epg_url (auto-found in M3U)
    // custom_epg_url takes precedence
    _epgUrl = prefs.getString('custom_epg_url');
    if (_epgUrl == null || _epgUrl!.isEmpty) {
      _epgUrl = prefs.getString('epg_url');
    }

    if (_epgUrl != null && _epgUrl!.isNotEmpty) {
      debugLog('EPG: Initializing with URL: $_epgUrl');
      // Try loading persisted normalized mapping early to speed up matches
      await _loadNormalizedMappingFromPrefs();
      await _loadChannelList(forceRefresh: forceRefresh);
    } else {
      debugLog('EPG: No URL configured (checked custom_epg_url and epg_url)');
      _error = 'No EPG URL configured';
      notifyListeners();
    }

    // Debug: Log current state
    debugLog(
        'EPG: Service state - URL: $_epgUrl, Available channels: ${_availableChannels.length}, Loaded channels: ${_programsByChannel.length}');
  }

  Future<void> _saveNormalizedMappingToPrefs(Map<String, String>? map) async {
    try {
      final dir = await getApplicationSupportDirectory();
      final file = File('${dir.path}/$_normalizedMapFileName');
      if (map == null || map.isEmpty) {
        if (await file.exists()) await file.delete();
        return;
      }
      final jsonStr = jsonEncode(map);
      await file.writeAsString(jsonStr);
      debugLog(
          'EPG: Saved normalized mapping (${map.length} entries) to ${file.path}');
    } catch (e) {
      debugLog('EPG: Failed to save normalized mapping: $e');
    }
  }

  Future<void> _loadNormalizedMappingFromPrefs() async {
    try {
      final dir = await getApplicationSupportDirectory();
      final file = File('${dir.path}/$_normalizedMapFileName');
      if (!await file.exists()) return;
      final jsonStr = await file.readAsString();
      if (jsonStr.isEmpty) return;
      final Map<String, dynamic> decoded = jsonDecode(jsonStr);
      _normalizedAvailableChannels =
          decoded.map((k, v) => MapEntry(k, v.toString()));
      _availableChannels.addAll(_normalizedAvailableChannels!.values);
      debugLog(
          'EPG: Loaded normalized mapping from file (${_normalizedAvailableChannels!.length} entries)');
    } catch (e) {
      debugLog('EPG: Failed to load normalized mapping from file: $e');
    }
  }

  Future<File> _getCacheFile() async {
    final dir = await getApplicationSupportDirectory();
    return File('${dir.path}/epg_cache.xml');
  }

  Future<bool> _isCacheValid() async {
    try {
      final file = await _getCacheFile();
      if (!await file.exists()) {
        debugLog('EPG: Cache file does not exist.');
        return false;
      }

      final modified = await file.lastModified();
      final length = await file.length();
      if (length == 0) {
        debugLog('EPG: Cache file is empty.');
        return false;
      }

      final age = DateTime.now().difference(modified);
      final isValid = age < _cacheDuration;
      debugLog(
          'EPG: Cache is ${isValid ? 'valid' : 'stale'}. Age: ${age.inMinutes} minutes. Size: ${(length / 1024 / 1024).toStringAsFixed(2)} MB');
      return isValid;
    } catch (e) {
      debugLog('EPG: Error checking cache validity: $e');
      return false;
    }
  }

  Future<void> _downloadEpgIfNeeded({bool forceRefresh = false}) async {
    if (_epgUrl == null) {
      debugLog('EPG: Download skipped, no EPG URL.');
      return;
    }

    if (!forceRefresh && await _isCacheValid()) {
      debugLog('EPG: Using valid cached file, skipping download.');
      return;
    }

    // Single-flight: prevent overlapping downloads
    if (_isDownloading) {
      debugLog(
          'EPG: Download already in progress, skipping concurrent request.');
      return;
    }

    _isDownloading = true;
    _error = null;
    notifyListeners();
    debugLog('EPG: Starting EPG download from $_epgUrl...');

    final client = HttpClient()
      ..connectionTimeout = const Duration(seconds: 60)
      // Manage decompression ourselves so we can inspect headers/body and
      // avoid accidental double-decompression by the HttpClient.
      ..autoUncompress = false
      ..badCertificateCallback = (cert, host, port) => true;

    try {
      final request = await client.getUrl(Uri.parse(_epgUrl!));
      request.headers.add('Accept-Encoding', 'gzip, deflate');

      final response = await request.close();

      // 1) HTTP status check — abort gracefully on non-200
      if (response.statusCode != 200) {
        _error = 'EPG fetch failed: HTTP ${response.statusCode}';
        debugLog('EPG: $_error');
        // Ensure no partial cache remains
        final cf = await _getCacheFile();
        if (await cf.exists()) await cf.delete();
        return;
      }

      // 2) Content-Type sanity check
      final contentTypeHeader =
          response.headers.value('content-type')?.toLowerCase();
      if (contentTypeHeader == null || !contentTypeHeader.contains('xml')) {
        _error =
            'EPG response is not XML (Content-Type: ${contentTypeHeader ?? 'unknown'})';
        debugLog('EPG: $_error');
        throw Exception(_error);
      }

      final file = await _getCacheFile();
      var received = 0;

      // Respect Content-Encoding header and avoid double-decompress.
      final encHeader =
          response.headers.value('content-encoding')?.toLowerCase() ?? '';
      final isGzipHeader = encHeader.contains('gzip');
      final isDeflateHeader =
          encHeader.contains('deflate') || encHeader.contains('zlib');
      final isGzipExt = _epgUrl!.toLowerCase().split('?').first.endsWith('.gz');

      debugLog(
          'EPG: Downloading content (Content-Encoding: $encHeader, Ext GZIP: $isGzipExt)...');

      final sink = file.openWrite();

      try {
        Stream<List<int>> stream = response;

        // Apply decompression only when the response body is encoded.
        if (isGzipHeader || isGzipExt) {
          stream = stream.transform(gzip.decoder);
        } else if (isDeflateHeader) {
          stream = stream.transform(zlib.decoder);
        }

        // We'll inspect the first decoded chunk(s) to ensure the response
        // looks like XML (starts with '<'). If it looks like an HTML error
        // page, surface a clear error and abort.
        final firstBuffer = <int>[];
        bool headerChecked = false;
        const int requiredInspectBytes = 4096;

        late StreamSubscription<List<int>> sub;
        sub = stream.listen((data) {
          try {
            if (!headerChecked) {
              firstBuffer.addAll(data);
              // If we have enough or this is the last chunk, inspect.
              if (firstBuffer.length >= requiredInspectBytes) {
                final preview = utf8
                    .decode(firstBuffer, allowMalformed: true)
                    .trimLeft()
                    .toLowerCase();
                if (preview.isEmpty) {
                  _error = 'EPG response body is empty or unreadable';
                  debugLog('EPG: $_error');
                  sub.cancel();
                  sink.close();
                  // cleanup
                  try {
                    if (file.existsSync()) file.deleteSync();
                  } catch (_) {}
                  return;
                }

                if (!preview.startsWith('<')) {
                  _error = 'EPG response does not start with XML';
                  debugLog('EPG: $_error');
                  sub.cancel();
                  sink.close();
                  try {
                    if (file.existsSync()) file.deleteSync();
                  } catch (_) {}
                  return;
                }

                if (preview.startsWith('<!doctype html') ||
                    preview.startsWith('<html')) {
                  _error = 'EPG unavailable from provider';
                  debugLog('EPG: Provider returned HTML error page');
                  sub.cancel();
                  sink.close();
                  try {
                    if (file.existsSync()) file.deleteSync();
                  } catch (_) {}
                  return;
                }

                // Looks like XML — write the buffered bytes and continue
                sink.add(firstBuffer);
                headerChecked = true;
              }
            } else {
              sink.add(data);
            }

            received += data.length;
            if (received % (2 * 1024 * 1024) < 100000) {
              debugLog(
                  'EPG: Downloaded ${(received / (1024 * 1024)).toStringAsFixed(1)} MB');
            }
          } catch (e) {
            debugLog('EPG: Stream chunk handling error: $e');
            try {
              sink.close();
            } catch (_) {}
            try {
              if (file.existsSync()) file.deleteSync();
            } catch (_) {}
            return;
          }
        }, onDone: () async {
          // If header wasn't checked yet (small content), check now
          if (!headerChecked) {
            final preview = utf8
                .decode(firstBuffer, allowMalformed: true)
                .trimLeft()
                .toLowerCase();
            if (preview.isEmpty) {
              _error = 'EPG response body is empty or unreadable';
              debugLog('EPG: $_error');
              await sink.close();
              try {
                if (file.existsSync()) await file.delete();
              } catch (_) {}
              return;
            }

            if (!preview.startsWith('<')) {
              _error = 'EPG response does not start with XML';
              debugLog('EPG: $_error');
              await sink.close();
              try {
                if (file.existsSync()) await file.delete();
              } catch (_) {}
              return;
            }

            if (preview.startsWith('<!doctype html') ||
                preview.startsWith('<html')) {
              _error = 'EPG unavailable from provider';
              debugLog('EPG: Provider returned HTML error page');
              await sink.close();
              try {
                if (file.existsSync()) await file.delete();
              } catch (_) {}
              return;
            }

            // Looks like XML — write buffer
            sink.add(firstBuffer);
            headerChecked = true;
          }

          await sink.close();
        });
        await sub.asFuture();
      } catch (e) {
        debugLog('EPG: Error during download/decompression/check: $e');
        try {
          if (await file.exists()) await file.delete();
        } catch (_) {}
        _error = 'EPG download failed: $e';
        return;
      }

      final fileSize = await file.length();
      debugLog(
          'EPG: Download complete. Saved to ${file.path} (${(fileSize / 1024).toStringAsFixed(2)} KB)');

      // Minimal sanity checks on final file
      if (fileSize == 0 || fileSize < 100) {
        _error = 'Downloaded EPG file is too small';
        debugLog('EPG: $_error');
        try {
          if (await file.exists()) await file.delete();
        } catch (_) {}
        return;
      }

      // Read a small prefix to validate structure (avoid loading full file)
      try {
        final prefixBytes =
            await file.openRead(0, 16384).reduce((a, b) => a + b);
        final prefix = utf8
            .decode(prefixBytes, allowMalformed: true)
            .trimLeft()
            .toLowerCase();
        if (!prefix.startsWith('<')) {
          _error = 'EPG response does not start with XML';
          debugLog('EPG: $_error');
          try {
            if (await file.exists()) await file.delete();
          } catch (_) {}
          return;
        }
        if (prefix.startsWith('<!doctype html') || prefix.startsWith('<html')) {
          _error = 'EPG unavailable from provider';
          debugLog('EPG: Provider returned HTML error page');
          try {
            if (await file.exists()) await file.delete();
          } catch (_) {}
          return;
        }
        if (!prefix.contains('<tv')) {
          _error = 'EPG does not appear to be XMLTV (missing <tv)';
          debugLog('EPG: $_error');
          try {
            if (await file.exists()) await file.delete();
          } catch (_) {}
          return;
        }
      } catch (e) {
        debugLog('EPG: Post-download content check failed: $e');
        try {
          if (await file.exists()) await file.delete();
        } catch (_) {}
        _error = 'EPG content validation failed';
        return;
      }
    } catch (e) {
      debugLog('EPG: Download failed: $e');
      _error = 'Download failed: $e';
      try {
        final f = await _getCacheFile();
        if (await f.exists()) await f.delete();
      } catch (_) {}
      return;
    } finally {
      client.close();
      _isDownloading = false;
      notifyListeners();
    }
  }

  Future<void> _loadChannelList({bool forceRefresh = false}) async {
    if (_epgUrl == null || _epgUrl!.isEmpty) return;
    // Prevent overlapping loads
    if (_isLoading || _isDownloading) {
      debugLog('EPG: Load already in progress, skipping concurrent request.');
      return;
    }

    _isLoading = true;
    _error = null;
    notifyListeners();

    int retryCount = 0;
    while (retryCount < _maxRetries) {
      try {
        await _downloadEpgIfNeeded(forceRefresh: forceRefresh);

        final file = await _getCacheFile();
        if (!await file.exists()) {
          debugLog(
              'EPG: No cache file available after download; aborting load.');
          // _error should already be set by downloader with a user-friendly message
          _isParsing = false;
          _isLoading = false;
          notifyListeners();
          return;
        }

        debugLog('EPG: Starting background parsing...');
        _isParsing = true;
        notifyListeners();

        // Pass file path to isolate instead of content string to save memory
        final parseResult = await compute(_parseEpgInIsolate, file.path);

        _programsByChannel.clear();
        final rawData =
            parseResult['programsByChannel'] as Map<String, List<Program>>;
        _programsByChannel.addAll(rawData);

        _availableChannels.clear();
        _availableChannels.addAll(parseResult['channelIds'] as Set<String>);

        _normalizedAvailableChannels =
            parseResult['normalizedChannels'] as Map<String, String>;
        _internalToEpgIdMapping.clear();

        _hasParsed = true;
        _isParsing = false;
        _error = null;

        // Persist cache timestamp (do NOT store full EPG or channel lists in prefs)
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString(
            _epgCacheTimeKey, DateTime.now().toIso8601String());
        // Persist normalized mapping to file for faster startup
        await _saveNormalizedMappingToPrefs(_normalizedAvailableChannels);

        debugLog(
            'EPG: Successfully parsed ${_programsByChannel.length} channels and ${_availableChannels.length} IDs');
        break;
      } catch (e, stack) {
        retryCount++;
        debugLog('EPG: Error loading (attempt $retryCount): $e');
        debugLog(stack.toString());

        if (retryCount >= _maxRetries) {
          _error = 'Failed to load EPG: $e';
          _isParsing = false;
          _isLoading = false;

          // Fallback: try to load normalized mapping file to repopulate channel list
          await _loadNormalizedMappingFromPrefs();
          if (_normalizedAvailableChannels != null &&
              _normalizedAvailableChannels!.isNotEmpty) {
            _availableChannels.addAll(_normalizedAvailableChannels!.values);
          }
          break;
        }
        await Future.delayed(Duration(seconds: retryCount * 2));
      }
    }

    _isLoading = false;
    notifyListeners();
  }

  // Optimized streaming parser running in an isolate
  static Future<Map<String, dynamic>> _parseEpgInIsolate(
      String filePath) async {
    final file = File(filePath);
    if (!await file.exists()) {
      throw Exception('EPG cache file not found in isolate');
    }

    final programsByChannel = <String, List<Program>>{};
    final channelIds = <String>{};
    final normalizedChannels = <String, String>{};

    // Try parsing using UTF-8 but allow malformed sequences (many EPGs
    // contain stray bytes). If that fails with a FormatException from the
    // XML parser, retry with Latin1 which is more permissive for single-byte
    // encodings commonly found in XMLTV feeds.
    Stream<List<int>> rawStreamProvider() => file.openRead();

    Future<void> runParseWithDecoder(
        StreamTransformer<List<int>, String> decoder) async {
      final charStream = rawStreamProvider().transform(decoder);
      final events = charStream.toXmlEvents().withParentEvents();
      final elements = events.selectSubtreeEvents(
          (event) => event.name == 'programme' || event.name == 'channel');

      await for (final subtreeEvents in elements) {
        if (subtreeEvents.isEmpty) continue;
        final startEvent = subtreeEvents.first;
        if (startEvent is! XmlStartElementEvent) continue;

        if (startEvent.name == 'programme') {
          _processProgramme(
              subtreeEvents, programsByChannel, channelIds, normalizedChannels);
        } else if (startEvent.name == 'channel') {
          _processChannel(subtreeEvents, channelIds, normalizedChannels);
        }
      }
    }

    try {
      // First attempt: UTF-8 but be lenient about malformed sequences
      await runParseWithDecoder(const Utf8Decoder(allowMalformed: true));
    } on FormatException catch (e) {
      debugLog('EPG: UTF-8 parse failed (will retry with Latin1): $e');
      // Clear any partial results and retry with latin1
      programsByChannel.clear();
      channelIds.clear();
      normalizedChannels.clear();

      try {
        await runParseWithDecoder(latin1.decoder);
      } catch (e2, s2) {
        debugLog('EPG: Latin1 retry also failed: $e2');
        debugLog(s2.toString());
        // Re-throw the original to preserve context for callers
        throw FormatException(
            'EPG parsing failed after UTF8 and Latin1 attempts: $e2');
      }
    } catch (e) {
      // Pass through any other failures
      rethrow;
    }

    // Sort programs
    for (final channelId in programsByChannel.keys) {
      programsByChannel[channelId]!
          .sort((a, b) => a.startTime.compareTo(b.startTime));
    }

    return {
      'programsByChannel': programsByChannel,
      'channelIds': channelIds,
      'normalizedChannels': normalizedChannels,
    };
  }

  static void _processChannel(List<XmlEvent> events, Set<String> channelIds,
      Map<String, String> normalizedChannels) {
    // Basic parsing of channel tag to get ID and display-name
    // <channel id="BBC1"> <display-name>BBC One</display-name> </channel>
    final startEvent = events.first as XmlStartElementEvent;
    final id = startEvent.attributes
        .firstWhere((a) => a.name == 'id',
            orElse: () =>
                XmlEventAttribute('id', '', XmlAttributeType.DOUBLE_QUOTE))
        .value;

    if (id.isNotEmpty) {
      channelIds.add(id);
      final normalized = id.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
      if (normalized.isNotEmpty) {
        normalizedChannels[normalized] = id;
      }

      // Parse <display-name> elements to improve name->id matching
      String? displayName;
      for (final event in events) {
        if (event is XmlStartElementEvent && event.name == 'display-name') {
          final idx = events.indexOf(event);
          if (idx + 1 < events.length) {
            final next = events[idx + 1];
            if (next is XmlTextEvent) {
              displayName = next.value.trim();
              if (displayName.isNotEmpty) break;
            }
          }
        }
      }

      if (displayName != null && displayName.isNotEmpty) {
        final stripped = _stripSuffixes(displayName);
        String normalizedDisplay =
            stripped.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
        normalizedDisplay = _convertNumberWords(normalizedDisplay);
        if (normalizedDisplay.isNotEmpty &&
            !normalizedChannels.containsKey(normalizedDisplay)) {
          normalizedChannels[normalizedDisplay] = id;
        }
      }
    }
  }

  static void _processProgramme(
      List<XmlEvent> events,
      Map<String, List<Program>> programsByChannel,
      Set<String> channelIds,
      Map<String, String> normalizedChannels) {
    // Parse programme subtree
    // <programme start="..." stop="..." channel="..."> ... </programme>
    final startEvent = events.first as XmlStartElementEvent;

    final channelId = startEvent.attributes
        .firstWhere((a) => a.name == 'channel',
            orElse: () =>
                XmlEventAttribute('channel', '', XmlAttributeType.DOUBLE_QUOTE))
        .value;
    final startStr = startEvent.attributes
        .firstWhere((a) => a.name == 'start',
            orElse: () =>
                XmlEventAttribute('start', '', XmlAttributeType.DOUBLE_QUOTE))
        .value;
    final stopStr = startEvent.attributes
        .firstWhere((a) => a.name == 'stop',
            orElse: () =>
                XmlEventAttribute('stop', '', XmlAttributeType.DOUBLE_QUOTE))
        .value;

    if (channelId.isEmpty || startStr.isEmpty || stopStr.isEmpty) return;

    // Ensure we track this channel ID even if No <channel> tag exists for it in the XMLTV
    // This allows the UI to still match programs to the M3U channels.
    channelIds.add(channelId);

    String title = 'Unknown';
    String? description;
    String? category;
    String? icon;

    // Iterate events to find child tags
    for (final event in events) {
      if (event is XmlStartElementEvent) {
        if (event.name == 'title') {
          // The next event should be text
          final idx = events.indexOf(event);
          if (idx + 1 < events.length) {
            final next = events[idx + 1];
            if (next is XmlTextEvent) {
              title = next.value;
            }
          }
        } else if (event.name == 'desc') {
          final idx = events.indexOf(event);
          if (idx + 1 < events.length) {
            final next = events[idx + 1];
            if (next is XmlTextEvent) {
              description = next.value;
            }
          }
        } else if (event.name == 'category') {
          final idx = events.indexOf(event);
          if (idx + 1 < events.length) {
            final next = events[idx + 1];
            if (next is XmlTextEvent) {
              category = next.value;
            }
          }
        } else if (event.name == 'icon') {
          icon = event.attributes
              .firstWhere((a) => a.name == 'src',
                  orElse: () => XmlEventAttribute(
                      'src', '', XmlAttributeType.DOUBLE_QUOTE))
              .value;
        }
      }
    }

    // Ensure we track this channel ID even if no <channel> tag exists for it in the XMLTV
    // This allows the UI to still match programs to the M3U channels.
    channelIds.add(channelId);

    // Also track in normalized map for loose matching
    final normalized =
        channelId.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
    if (normalized.isNotEmpty && !normalizedChannels.containsKey(normalized)) {
      normalizedChannels[normalized] = channelId;
    }

    final program = Program(
      id: '${channelId}_$startStr',
      channelId: channelId,
      title: title,
      description: description,
      startTime: _staticParseTime(startStr),
      endTime: _staticParseTime(stopStr),
      imageUrl: icon,
      category: category,
      isLive: false,
      canRecord: true,
    );

    programsByChannel.putIfAbsent(channelId, () => []).add(program);
  }

  static DateTime _staticParseTime(String timeStr) {
    try {
      final trimmed = timeStr.trim();
      // Match base datetime and optional offset like +0100 or -0500
      final re = RegExp(
          r'^(\d{4})(\d{2})(\d{2})(\d{2})(\d{2})(\d{2})(?:\s*([+-]\d{4}))?');
      final m = re.firstMatch(trimmed);
      if (m == null) return DateTime.now();

      final year = int.parse(m.group(1)!);
      final month = int.parse(m.group(2)!);
      final day = int.parse(m.group(3)!);
      final hour = int.parse(m.group(4)!);
      final minute = int.parse(m.group(5)!);
      final second = int.parse(m.group(6)!);

      DateTime dt = DateTime.utc(year, month, day, hour, minute, second);

      final offset = m.group(7);
      if (offset != null && offset.length == 5) {
        // offset like +HHMM or -HHMM
        final sign = offset.startsWith('+') ? 1 : -1;
        final offH = int.tryParse(offset.substring(1, 3)) ?? 0;
        final offM = int.tryParse(offset.substring(3, 5)) ?? 0;
        // XMLTV offset means local = UTC + offset, so to get UTC subtract offset
        final delta = Duration(hours: offH, minutes: offM);
        dt = dt.subtract(sign == 1 ? delta : -delta);
      }

      return dt.toLocal();
    } catch (e) {
      return DateTime.now();
    }
  }

  Future<void> loadChannelBatch(List<String> channelIds) async {
    // No-op in optimized version as all programs are loaded during init
    // but we can ensure they are available in _programsByChannel
    if (!_hasParsed) {
      await initialize();
    }
  }

  String _normalize(String text) {
    if (text.isEmpty) return '';
    // Strip common prefixes like "UK:", "US|", etc.
    String clean = text.replaceAll(RegExp(r'^[A-Z]{2,3}[:|]\s*'), '');
    // Strip common quality prefixes/suffixes
    clean = clean.replaceAll(
        RegExp(r'[|]\s*(HD|FHD|UHD|4K|SD|720p|1080p)', caseSensitive: false),
        '');

    String normalized =
        clean.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
    // Strip common country code suffixes
    normalized = normalized.replaceAll(
        RegExp(r'(uk|us|ca|au|ie|pt|hk|fr|de|it|es)$'), '');

    return _convertNumberWords(normalized);
  }

  static String _convertNumberWords(String text) {
    const conversions = {
      'one': '1',
      'two': '2',
      'three': '3',
      'four': '4',
      'five': '5',
      'six': '6',
      'seven': '7',
      'eight': '8',
      'nine': '9',
      'ten': '10',
      '1st': '1',
      '2nd': '2',
      '3rd': '3',
      '4th': '4',
      '5th': '5',
    };

    String result = text.toLowerCase();
    conversions.forEach((key, value) {
      if (result.contains(key)) {
        result = result.replaceAll(key, value);
      }
    });
    return result;
  }

  static String _stripSuffixes(String text) {
    return text
        .replaceAll(
            RegExp(r'(uhd|fhd|hd|sd|4k|1080p|720p)$', caseSensitive: false), '')
        .replaceAll(
            RegExp(r'(london|scotland|wales|ireland|ni|channelislands)$',
                caseSensitive: false),
            '')
        .trim();
  }

  // Conservative trigram-based similarity to use as a last-resort fallback.
  double _trigramSimilarity(String a, String b) {
    final sa = _normalize(a);
    final sb = _normalize(b);
    if (sa.isEmpty || sb.isEmpty) return 0.0;

    final aTr = <String>{};
    for (var i = 0; i + 3 <= sa.length; i++) {
      aTr.add(sa.substring(i, i + 3));
    }
    final bTr = <String>{};
    for (var i = 0; i + 3 <= sb.length; i++) {
      bTr.add(sb.substring(i, i + 3));
    }
    if (aTr.isEmpty || bTr.isEmpty) return 0.0;
    final inter = aTr.intersection(bTr).length;
    final union = aTr.length + bTr.length - inter;
    if (union == 0) return 0.0;
    return inter / union;
  }

  String? _findBestEpgId(
    String channelId,
    String? channelName, {
    bool logIfMissing = true,
  }) {
    if (_internalToEpgIdMapping.containsKey(channelId)) {
      return _internalToEpgIdMapping[channelId];
    }
    // 1. Exact match
    if (_availableChannels.contains(channelId)) {
      _internalToEpgIdMapping[channelId] = channelId;
      return channelId;
    }

    // 2. Normalized ID match
    final normalizedId = _normalize(channelId);
    if (normalizedId.isNotEmpty &&
        _normalizedAvailableChannels != null &&
        _normalizedAvailableChannels!.containsKey(normalizedId)) {
      final foundId = _normalizedAvailableChannels![normalizedId]!;
      _internalToEpgIdMapping[channelId] = foundId;
      return foundId;
    }

    // Match without domain suffix (e.g., "BBC1.uk" -> "BBC1")
    if (channelId.contains('.')) {
      final withoutDomain = _normalize(channelId.split('.').first);
      if (withoutDomain.isNotEmpty &&
          _normalizedAvailableChannels != null &&
          _normalizedAvailableChannels!.containsKey(withoutDomain)) {
        final foundId = _normalizedAvailableChannels![withoutDomain]!;
        _internalToEpgIdMapping[channelId] = foundId;
        return foundId;
      }
    }

    // 3. Name match (if provided)
    if (channelName != null && channelName.isNotEmpty) {
      final normalizedName = _normalize(channelName);
      if (normalizedName.isNotEmpty &&
          _normalizedAvailableChannels != null &&
          _normalizedAvailableChannels!.containsKey(normalizedName)) {
        final foundId = _normalizedAvailableChannels![normalizedName]!;
        _internalToEpgIdMapping[channelId] = foundId;
        return foundId;
      }

      final strippedName = _normalize(_stripSuffixes(channelName));
      if (strippedName.isNotEmpty &&
          strippedName != normalizedName &&
          _normalizedAvailableChannels != null &&
          _normalizedAvailableChannels!.containsKey(strippedName)) {
        final foundId = _normalizedAvailableChannels![strippedName]!;
        _internalToEpgIdMapping[channelId] = foundId;
        return foundId;
      }

      // Try matching the name against exact EPG IDs if they look like names
      for (final epgId in _availableChannels) {
        if (_normalize(epgId) == normalizedName) {
          _internalToEpgIdMapping[channelId] = epgId;
          return epgId;
        }
      }

      // 4. Loose matching (starts with / contains)
      if (normalizedName.length >= 4 && _normalizedAvailableChannels != null) {
        for (final entry in _normalizedAvailableChannels!.entries) {
          if (entry.key.startsWith(normalizedName) ||
              normalizedName.startsWith(entry.key)) {
            _internalToEpgIdMapping[channelId] = entry.value;
            return entry.value;
          }
        }
      }

      // 5. Conservative fuzzy-match fallback using trigram similarity
      if (channelName.isNotEmpty && _normalizedAvailableChannels != null) {
        final normalizedName = _normalize(channelName);
        if (normalizedName.length >= 4) {
          double bestScore = 0.0;
          String? bestId;
          for (final entry in _normalizedAvailableChannels!.entries) {
            final score = _trigramSimilarity(normalizedName, entry.key);
            if (score > bestScore) {
              bestScore = score;
              bestId = entry.value;
            }
          }
          const double threshold = 0.60; // tuned conservative threshold
          if (bestScore >= threshold && bestId != null) {
            _internalToEpgIdMapping[channelId] = bestId;
            return bestId;
          }
        }
      }
    }

    if (logIfMissing) {
      // Don't spam logs for every single missing channel
      // debugLog(
      //   'EPG: Could not find matching EPG ID for channelId="$channelId" (normalized: "$normalizedId"), name="$channelName"',
      // );
    }
    return null;
  }

  List<Program> getProgramsForChannel(String channelId, {String? channelName}) {
    final epgId = _internalToEpgIdMapping[channelId] ??
        _findBestEpgId(channelId, channelName);
    if (epgId != null) {
      return _programsByChannel[epgId] ?? [];
    }

    // Try direct lookup with channel ID
    if (_programsByChannel.containsKey(channelId)) {
      _internalToEpgIdMapping[channelId] = channelId;
      return _programsByChannel[channelId] ?? [];
    }

    // Try with normalized channel ID
    final normalizedId = _normalize(channelId);
    for (final key in _programsByChannel.keys) {
      final normalizedKey = _normalize(key);
      if (normalizedKey == normalizedId) {
        _internalToEpgIdMapping[channelId] = key;
        return _programsByChannel[key] ?? [];
      }
    }

    debugLog(
        'EPG: No programs found for channel "$channelId" (name: "${channelName ?? 'none'}")');
    return [];
  }

  bool hasEpgData(String channelId) {
    return _availableChannels.contains(channelId);
  }

  bool hasEpgMatch(String channelId, {String? channelName}) {
    return _findBestEpgId(
          channelId,
          channelName,
          logIfMissing: false,
        ) !=
        null;
  }

  Program? getCurrentProgram(String channelId, {String? channelName}) {
    final epgId = _internalToEpgIdMapping[channelId] ??
        _findBestEpgId(channelId, channelName);
    if (epgId == null) {
      debugLog(
          'EPG: No EPG ID found for channel "$channelId" (name: "${channelName ?? 'none'}")');
      return null;
    }

    // Cache the mapping
    _internalToEpgIdMapping[channelId] = epgId;

    final programs = getProgramsForChannel(epgId);
    final now = DateTime.now();

    debugLog(
        'EPG: Looking for current program on channel "$channelId" (EPG: "$epgId") - ${programs.length} programs available');

    for (final program in programs) {
      if (now.isAfter(program.startTime) && now.isBefore(program.endTime)) {
        debugLog(
            'EPG: Found current program: "${program.title}" on "$channelId"');
        return program;
      }
    }

    // If no current program, return the next upcoming program
    for (final program in programs) {
      if (program.startTime.isAfter(now)) {
        debugLog(
            'EPG: No current program, returning next: "${program.title}" on "$channelId"');
        return program;
      }
    }

    debugLog('EPG: No program data available for channel "$channelId"');
    return null;
  }

  /// Convenience method: resolve a playlist channel to an EPG id and return its current program.
  Program? getProgramForChannel(String channelId, {String? channelName}) {
    // Try to resolve mapping first
    final epgId = _internalToEpgIdMapping[channelId] ??
        _findBestEpgId(channelId, channelName);
    if (epgId != null) {
      // Use programs for resolved EPG id
      final programs = getProgramsForChannel(epgId, channelName: channelName);
      final now = DateTime.now();
      for (final program in programs) {
        if (now.isAfter(program.startTime) && now.isBefore(program.endTime))
          return program;
      }
      for (final program in programs) {
        if (program.startTime.isAfter(now)) return program;
      }
      return null;
    }

    // Fall back to existing behaviour
    return getCurrentProgram(channelId, channelName: channelName);
  }

  final List<String> _pendingBatch = [];
  Timer? _batchTimer;

  Future<void> ensureChannelLoaded(String channelId,
      {String? channelName}) async {
    final epgId = _internalToEpgIdMapping[channelId] ??
        _findBestEpgId(channelId, channelName);
    if (epgId == null) return;

    // Cache the mapping
    _internalToEpgIdMapping[channelId] = epgId;

    if (_programsByChannel.containsKey(epgId) || _pendingBatch.contains(epgId))
      return;

    _pendingBatch.add(epgId);

    _batchTimer?.cancel();
    _batchTimer = Timer(const Duration(milliseconds: 300), () {
      final batch = List<String>.from(_pendingBatch);
      _pendingBatch.clear();
      loadChannelBatch(batch);
    });
  }

  Future<void> loadChannelsForBatch(List<String> channelIds) async {
    final batches = <List<String>>[];
    for (int i = 0; i < channelIds.length; i += _channelsPerBatch) {
      batches.add(channelIds.sublist(
          i, (i + _channelsPerBatch).clamp(0, channelIds.length)));
    }

    for (final batch in batches) {
      await loadChannelBatch(batch);
    }
  }

  // Stub methods for EPG screen compatibility
  bool hasManualMapping(String channelId) => false;
  String? getManualMapping(String channelId) => null;
  List<String> getEpgChannelIds() => _availableChannels.toList();
  List<MapEntry<String, double>> getSuggestedMatches(
          String channelId, String? channelName,
          {int limit = 10}) =>
      [];
  String? getChannelPreview(String epgChannelId) => null;
  Future<void> setManualMapping(String channelId, String epgChannelId) async {}
  Future<void> removeManualMapping(String channelId) async {}

  @override
  void dispose() {
    _batchTimer?.cancel();
    super.dispose();
  }
}
