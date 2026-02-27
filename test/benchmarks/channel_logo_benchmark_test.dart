import 'dart:io';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/services/channel_logo_service.dart';
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPathProviderPlatform extends Fake with MockPlatformInterfaceMixin implements PathProviderPlatform {
  @override
  Future<String?> getApplicationSupportPath() async {
    return '.';
  }
}

class MockHttpClient extends Fake implements HttpClient {
  @override
  Future<HttpClientRequest> openUrl(String method, Uri url) async {
    return MockHttpClientRequest();
  }

  @override
  Future<HttpClientRequest> headUrl(Uri url) async {
    return MockHttpClientRequest();
  }
}

class MockHttpClientRequest extends Fake implements HttpClientRequest {
  @override
  Future<HttpClientResponse> close() async {
    return MockHttpClientResponse();
  }

  @override
  void add(List<int> data) {}

  @override
  void write(Object? obj) {}

  @override
  HttpHeaders get headers => MockHttpHeaders();

  @override
  void abort([Object? exception, StackTrace? stackTrace]) {}
}

class MockHttpClientResponse extends Fake implements HttpClientResponse {
  @override
  int get statusCode => 200;

  @override
  HttpHeaders get headers => MockHttpHeaders();
}

class MockHttpHeaders extends Fake implements HttpHeaders {
  @override
  String? value(String name) => null;

  @override
  List<String>? operator [](String name) => null;
}

class MockFile extends Fake implements File {
  final String path;
  final VoidCallback onWrite;

  MockFile(this.path, {required this.onWrite});

  @override
  Future<bool> exists() async => false;

  @override
  Future<File> writeAsString(String contents, {FileMode mode = FileMode.write, Encoding encoding = utf8, bool flush = false}) async {
    if (path.contains('channel_logos_cache.json')) {
      onWrite();
    }
    return this;
  }

  @override
  Future<String> readAsString({Encoding encoding = utf8}) async {
    return '';
  }

  @override
  Future<FileSystemEntity> delete({bool recursive = false}) async {
    return this;
  }
}

void main() {
  setUp(() {
    PathProviderPlatform.instance = MockPathProviderPlatform();
  });

  test('Benchmark ChannelLogoService writes', () async {
    int writeCount = 0;

    await IOOverrides.runZoned(() async {
      await HttpOverrides.runZoned(() async {
        // List of channels that exist in _knownLogos
        final channels = ['tsn', 'cnn', 'espn', 'hbo', 'showtime'];

        await ChannelLogoService.enrichBatch(channels);

        // Wait for potential debounce timer (e.g. 2 seconds) to fire
        await Future.delayed(const Duration(seconds: 3));
      }, createHttpClient: (_) => MockHttpClient());
    }, createFile: (path) => MockFile(path, onWrite: () => writeCount++));

    print('Write count: $writeCount');
    // We expect exactly 1 write after optimization (debouncing)
    // Currently this will fail as it writes ~4 times
    expect(writeCount, equals(1));
  });
}
