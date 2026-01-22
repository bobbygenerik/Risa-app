import 'dart:convert';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:iptv_player/services/http_client_service.dart';
import 'package:iptv_player/utils/image_url_helper.dart';
import 'package:iptv_player/utils/debug_helper.dart';

class _ValidationEntry {
  final bool valid;
  final DateTime checkedAt;
  const _ValidationEntry(this.valid, this.checkedAt);
}

class ImageValidationService {
  static const Duration _validTtl = Duration(hours: 6);
  static const Duration _invalidTtl = Duration(minutes: 30);
  static final Map<String, _ValidationEntry> _cache = {};

  static bool isKnownInvalid(String? url) {
    if (url == null || url.isEmpty) return true;
    final normalized = normalizeImageUrl(url);
    final entry = _cache[normalized];
    if (entry == null) return false;
    final ttl = entry.valid ? _validTtl : _invalidTtl;
    if (DateTime.now().difference(entry.checkedAt) > ttl) {
      _cache.remove(normalized);
      return false;
    }
    return !entry.valid;
  }

  static bool isKnownValid(String? url) {
    if (url == null || url.isEmpty) return false;
    final normalized = normalizeImageUrl(url);
    final entry = _cache[normalized];
    if (entry == null) return false;
    final ttl = entry.valid ? _validTtl : _invalidTtl;
    if (DateTime.now().difference(entry.checkedAt) > ttl) {
      _cache.remove(normalized);
      return false;
    }
    return entry.valid;
  }

  static Future<bool> isValid(String? url) async {
    if (url == null || url.isEmpty) return false;
    final normalized = normalizeImageUrl(url);
    if (_isUnsupportedFormat(normalized)) {
      _cache[normalized] = _ValidationEntry(false, DateTime.now());
      return false;
    }
    final cached = _cache[normalized];
    if (cached != null) {
      final ttl = cached.valid ? _validTtl : _invalidTtl;
      if (DateTime.now().difference(cached.checkedAt) <= ttl) {
        return cached.valid;
      }
    }

    final dio = HttpClientService().dio;
    try {
      final head = await dio.head(
        normalized,
        options: Options(
          headers: HttpClientService().imageHeaders,
          receiveTimeout: const Duration(seconds: 4),
          sendTimeout: const Duration(seconds: 4),
          validateStatus: (code) => code != null && code < 500,
        ),
      );
      _logRateLimitIfPresent(head, normalized, phase: 'head');
      if (_isImageResponse(head)) {
        _cache[normalized] = _ValidationEntry(true, DateTime.now());
        return true;
      }
      if (_isClearlyInvalid(head)) {
        _cache[normalized] = _ValidationEntry(false, DateTime.now());
        return false;
      }
    } catch (_) {
      // Fall back to range GET.
    }

    try {
      final get = await dio.get<List<int>>(
        normalized,
        options: Options(
          headers: {
            ...HttpClientService().imageHeaders,
            'Range': 'bytes=0-2048',
          },
          responseType: ResponseType.bytes,
          receiveTimeout: const Duration(seconds: 5),
          sendTimeout: const Duration(seconds: 5),
          validateStatus: (code) => code != null && code < 500,
        ),
      );
      _logRateLimitIfPresent(get, normalized, phase: 'get');
      if (_isImageResponse(get) && _looksLikeImage(get.data)) {
        _cache[normalized] = _ValidationEntry(true, DateTime.now());
        return true;
      }
      _cache[normalized] = _ValidationEntry(false, DateTime.now());
      return false;
    } catch (_) {
      _cache[normalized] = _ValidationEntry(false, DateTime.now());
      return false;
    }
  }

  static void _logRateLimitIfPresent(
    Response response,
    String url, {
    required String phase,
  }) {
    final status = response.statusCode ?? 0;
    if (status != 429 && status != 403 && status != 503) return;
    final retryAfter = response.headers.value('retry-after') ?? '';
    final limit = response.headers.value('x-ratelimit-limit') ?? '';
    final remaining = response.headers.value('x-ratelimit-remaining') ?? '';
    final reset = response.headers.value('x-ratelimit-reset') ?? '';
    final message =
        'ImageValidationService: rate_limit phase=$phase status=$status '
        'retryAfter=$retryAfter limit=$limit remaining=$remaining reset=$reset url=$url';
    debugLog(message);
    logToSystem(message, name: 'RisaImage');
    // ignore: avoid_print
    print(message);
  }

  static bool _isUnsupportedFormat(String url) {
    final lower = url.toLowerCase();
    return lower.endsWith('.svg') ||
        lower.contains('.svg?') ||
        lower.endsWith('.avif') ||
        lower.contains('.avif?') ||
        lower.endsWith('.heic') ||
        lower.contains('.heic?') ||
        lower.endsWith('.heif') ||
        lower.contains('.heif?');
  }

  static bool _isImageResponse(Response response) {
    final type = _contentType(response);
    if (type.startsWith('image/')) return true;
    return false;
  }

  static bool _isClearlyInvalid(Response response) {
    final type = _contentType(response);
    if (type.startsWith('text/')) return true;
    if (type.contains('html') || type.contains('json')) return true;
    final len = response.headers.value('content-length');
    final size = int.tryParse(len ?? '') ?? 0;
    if (size > 0 && size < 512) return true;
    return false;
  }

  static String _contentType(Response response) {
    final raw = response.headers.value('content-type') ?? '';
    final lower = raw.toLowerCase();
    final semi = lower.indexOf(';');
    return semi == -1 ? lower : lower.substring(0, semi).trim();
  }

  static bool _looksLikeImage(List<int>? bytes) {
    if (bytes == null || bytes.isEmpty) return false;
    final data = Uint8List.fromList(bytes);
    // Check for HTML/JSON to avoid decode errors.
    final head = utf8.decode(data.take(16).toList(), allowMalformed: true);
    final trimmed = head.trimLeft().toLowerCase();
    if (trimmed.startsWith('<!doctype') ||
        trimmed.startsWith('<html') ||
        trimmed.startsWith('{') ||
        trimmed.startsWith('[')) {
      return false;
    }
    return true;
  }
}
