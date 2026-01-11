import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';

/// Service for fetching live data from Xtream Codes API
class XtreamCodesService {
  final String serverUrl;
  final String username;
  final String password;
  final http.Client _client;

  XtreamCodesService({
    required this.serverUrl,
    required this.username,
    required this.password,
    http.Client? client,
  }) : _client = client ?? _createDefaultClient();

  /// Create HTTP client that bypasses SSL certificate verification
  static http.Client _createDefaultClient() {
    final ioClient =
        HttpClient(context: SecurityContext(withTrustedRoots: true))
          ..badCertificateCallback = (cert, host, port) {
            debugLog('XtreamCodes: Accepting cert from $host:$port');
            return true;
          }
          ..connectionTimeout = const Duration(seconds: 15)
          ..idleTimeout = const Duration(seconds: 15);

    // Force using all available security contexts
    try {
      ioClient.findProxy = (uri) => 'DIRECT';
    } catch (e) {
      debugLog('XtreamCodes: Could not set proxy: $e');
    }

    return IOClient(ioClient);
  }

  /// Make HTTP request with error handling
  Future<http.Response> _makeRequest(String url) async {
    try {
      debugLog('XtreamCodes: Requesting $url');
      final response = await _client.get(Uri.parse(url)).timeout(
        const Duration(seconds: 20),
        onTimeout: () {
          throw TimeoutException('Request timeout after 20 seconds');
        },
      );
      debugLog('XtreamCodes: Response status ${response.statusCode}');
      return response;
    } catch (e) {
      // Auto-downgrade HTTPS to HTTP on handshake errors
      // This fixes 'WRONG_VERSION_NUMBER' when server is actually HTTP
      if (url.startsWith('https://') &&
          (e.toString().contains('HandshakeException') ||
              e.toString().contains('WRONG_VERSION_NUMBER') ||
              e.toString().contains('OS Error') ||
              e.toString().contains('badd certificate'))) {
        final httpUrl = url.replaceFirst('https://', 'http://');
        debugLog(
            'XtreamCodes: SSL/Handshake failed. Retrying with HTTP: $httpUrl');
        try {
          final response = await _client.get(Uri.parse(httpUrl)).timeout(
            const Duration(seconds: 20),
            onTimeout: () {
              throw TimeoutException('Request timeout after 20 seconds');
            },
          );
          debugLog('XtreamCodes: Retry Response status ${response.statusCode}');
          return response;
        } catch (e2) {
          debugLog('XtreamCodes: HTTP retry failed: $e2');
          // Fall through to rethrow original
        }
      }
      debugLog('XtreamCodes: Request failed: $e');
      rethrow;
    }
  }

  void dispose() {
    _client.close();
  }

  int? _parseCount(dynamic value) {
    if (value == null) return null;
    if (value is int) return value;
    if (value is double) return value.toInt();
    if (value is String) return int.tryParse(value);
    return null;
  }

  /// Fetch lightweight account info counts (channels only) if provided.
  Future<Map<String, int>?> getPanelCounts() async {
    try {
      final url = '$_apiBase?username=$username&password=$password';
      final response = await _makeRequest(url);
      if (response.statusCode != 200) return null;
      debugLog(
          'XtreamCodes: Panel Info Body: ${response.body.length > 500 ? response.body.substring(0, 500) : response.body}');
      final data = json.decode(response.body) as Map<String, dynamic>;

      final userInfo = data['user_info'] as Map<String, dynamic>? ?? {};
      final serverInfo = data['server_info'] as Map<String, dynamic>? ?? {};

      final channels = _parseCount(userInfo['available_channels']) ??
          _parseCount(serverInfo['total_channels']) ??
          _parseCount(data['available_channels']);
      if (channels == null) {
        return null;
      }
      return {
        'channels': channels,
      };
    } catch (e) {
      debugLog('XtreamCodes: Error fetching panel counts: $e');
      return null;
    }
  }

  /// Base API endpoint for Xtream Codes (ensures the path is correct)
  String get _apiBase {
    final trimmed = serverUrl.endsWith('/')
        ? serverUrl.substring(0, serverUrl.length - 1)
        : serverUrl;
    return '$trimmed/player_api.php';
  }

  /// Fetch live (TV) categories if the provider supports it
  Future<List<Map<String, dynamic>>> getLiveCategories() async {
    try {
      final url =
          '$_apiBase?username=$username&password=$password&action=get_live_categories';
      final response = await _makeRequest(url);
      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.map((e) => e as Map<String, dynamic>).toList();
      }
      return [];
    } catch (e) {
      debugLog('XtreamCodes: Error fetching live categories: $e');
      return [];
    }
  }

  /// Fetch live streams for a specific category
  Future<List<Map<String, dynamic>>> getLiveStreams(String categoryId) async {
    try {
      final url =
          '$_apiBase?username=$username&password=$password&action=get_live_streams&category_id=$categoryId';
      final response = await _makeRequest(url);
      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.map((e) => e as Map<String, dynamic>).toList();
      }
      return [];
    } catch (e) {
      debugLog('XtreamCodes: Error fetching live streams for $categoryId: $e');
      return [];
    }
  }

  /// Fetch all live streams across categories (best-effort)
  Future<List<Map<String, dynamic>>> getAllLiveStreams() async {
    try {
      // Fast path: try a single call for all live streams (some providers support it).
      try {
        final url =
            '$_apiBase?username=$username&password=$password&action=get_live_streams';
        final response = await _makeRequest(url);
        if (response.statusCode == 200) {
          final List<dynamic> data = json.decode(response.body);
          if (data.isNotEmpty) {
            debugLog(
                'XtreamCodes: Loaded ${data.length} live streams from single-call endpoint');
            return data.map((e) => e as Map<String, dynamic>).toList();
          }
        }
      } catch (_) {
        // Fall back to per-category fetch below.
      }

      final categories = await getLiveCategories();
      final List<Map<String, dynamic>> all = [];
      if (categories.isEmpty) {
        return [];
      }

      // Parallelize category fetching to speed up metadata priming.
      // Use batches of 10 to be respectful to the server while still being much faster than sequential.
      const int batchSize = 10;
      for (int i = 0; i < categories.length; i += batchSize) {
        final end = (i + batchSize < categories.length) ? i + batchSize : categories.length;
        final batch = categories.sublist(i, end);
        
        final results = await Future.wait(batch.map((c) {
          final id = (c['category_id'] ?? c['id'] ?? c['category_id']).toString();
          return getLiveStreams(id);
        }));
        
        for (final list in results) {
          all.addAll(list);
        }
      }
      return all;
    } catch (e) {
      debugLog('XtreamCodes: Error fetching all live streams: $e');
      return [];
    }
  }


}
