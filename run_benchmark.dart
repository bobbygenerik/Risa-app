import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/services/channel_logo_service.dart';
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'dart:io';
import 'dart:async';

class MockPathProviderPlatform extends Fake
    with MockPlatformInterfaceMixin
    implements PathProviderPlatform {
  @override
  Future<String?> getApplicationSupportPath() async {
    return '.';
  }
}

class MockHttpOverrides extends HttpOverrides {
  int getRequestCount = 0;

  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return MockHttpClient(this);
  }
}

class MockHttpClient extends Fake implements HttpClient {
  final MockHttpOverrides overrides;
  MockHttpClient(this.overrides);

  @override
  bool autoUncompress = true;

  @override
  Future<HttpClientRequest> openUrl(String method, Uri url) async {
    overrides.getRequestCount++;
    await Future.delayed(Duration(milliseconds: 100));
    return MockHttpClientRequest();
  }

  @override
  Future<HttpClientRequest> headUrl(Uri url) async {
    overrides.getRequestCount++;
    await Future.delayed(Duration(milliseconds: 100));
    return MockHttpClientRequest();
  }
}

class MockHttpClientRequest extends Fake implements HttpClientRequest {
  @override
  set followRedirects(bool value) {}
  @override
  set maxRedirects(int value) {}
  @override
  set contentLength(int value) {}
  @override
  set persistentConnection(bool value) {}

  @override
  Future<HttpClientResponse> close() async {
    return MockHttpClientResponse();
  }

  @override
  Future<void> addStream(Stream<List<int>> stream) async {
    await stream.drain();
  }

  @override
  HttpHeaders get headers => MockHttpHeaders();
}

class MockHttpHeaders extends Fake implements HttpHeaders {
  @override
  String? value(String name) => name == 'content-type' ? 'image/png' : null;
  @override
  List<String>? operator [](String name) =>
      value(name) != null ? [value(name)!] : null;
  @override
  void add(String name, Object value, {bool preserveHeaderCase = false}) {}
  @override
  void set(String name, Object value, {bool preserveHeaderCase = false}) {}
  @override
  void remove(String name, Object value) {}
  @override
  void removeAll(String name) {}
  @override
  void clear() {}
  @override
  void forEach(void Function(String name, List<String> values) action) {}
}

class MockHttpClientResponse extends Fake implements HttpClientResponse {
  @override
  int get statusCode => 404; // Fail all to force loop to test all matches
  @override
  HttpHeaders get headers => MockHttpHeaders();

  @override
  int get contentLength => 0; // Fixed the missing implementation

  @override
  bool get isRedirect => false; // Fixed the missing implementation

  @override
  bool get persistentConnection => false;

  @override
  String get reasonPhrase => 'Not Found';

  @override
  List<RedirectInfo> get redirects => [];

  @override
  HttpClientResponseCompressionState get compressionState =>
      HttpClientResponseCompressionState.notCompressed;

  @override
  StreamSubscription<List<int>> listen(void Function(List<int> event)? onData,
      {Function? onError, void Function()? onDone, bool? cancelOnError}) {
    return Stream<List<int>>.value([]).listen(onData,
        onError: onError, onDone: onDone, cancelOnError: cancelOnError);
  }
}

void main() {
  test('Benchmark fuzzy matching sequential vs parallel verification',
      () async {
    final file = File('./channel_logos_cache.json');
    if (await file.exists()) {
      await file.delete();
    }

    PathProviderPlatform.instance = MockPathProviderPlatform();

    final overrides = MockHttpOverrides();

    await HttpOverrides.runZoned(() async {
      await ChannelLogoService.getLogoUrl('warmup');

      final stopwatch = Stopwatch()..start();

      await ChannelLogoService.getLogoUrl('fox disney discovery tnt amc hd 1');

      stopwatch.stop();

      print('Time elapsed: ${stopwatch.elapsedMilliseconds} ms');
      print('Network calls: ${overrides.getRequestCount}');
    }, createHttpClient: (context) => overrides.createHttpClient(context));
  });
}
