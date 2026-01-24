import 'dart:io';
import 'package:dio/dio.dart';

class HttpClientService {
  static final HttpClientService _instance = HttpClientService._internal();
  factory HttpClientService() => _instance;
  HttpClientService._internal();

  late final Dio _dio;
  late final HttpClient _httpClient;
  bool _isInitialized = false;

  void initialize() {
    if (_isInitialized) return;

    // Configure HttpClient with connection pooling
    _httpClient = HttpClient()
      ..maxConnectionsPerHost = 6
      ..connectionTimeout = const Duration(seconds: 20)
      ..idleTimeout = const Duration(minutes: 10);

    // Configure Dio with connection pooling
    _dio = Dio(BaseOptions(
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 30),
      headers: {
        'User-Agent': 'VLC/3.0.0 LibVLC/3.0.0',
        'Connection': 'keep-alive',
        'Accept': '*/*',
      },
    ));

    // Add connection pooling interceptor
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        options.headers['Connection'] = 'keep-alive';
        options.headers['User-Agent'] = 'VLC/3.0.0 LibVLC/3.0.0';
        handler.next(options);
      },
    ));

    _isInitialized = true;
  }

  Dio get dio => _dio;
  HttpClient get httpClient => _httpClient;
  bool get isInitialized => _isInitialized;

  /// Simple helper to fetch plain text from a URL
  Future<String> getString(String url) async {
    initialize();
    final response =
        await _dio.get(url, options: Options(responseType: ResponseType.plain));
    return response.data?.toString() ?? '';
  }

  Map<String, String> get videoHeaders => {
        'User-Agent': 'VLC/3.0.0 LibVLC/3.0.0',
        'Connection': 'keep-alive',
        'Accept': '*/*',
        'Cache-Control': 'no-cache',
      };

  Map<String, String> get imageHeaders => {
        'User-Agent': 'VLC/3.0.0 LibVLC/3.0.0',
        'Connection': 'keep-alive',
        'Accept': 'image/*,*/*',
      };

  void dispose() {
    _httpClient.close();
    _dio.close();
  }
}
