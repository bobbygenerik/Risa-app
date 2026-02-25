import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/widgets/channel_logo_widget.dart';
import 'package:iptv_player/services/image_validation_service.dart';

class MockHttpOverrides extends HttpOverrides {
  int headRequestCount = 0;
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
    if (method == 'HEAD') {
      overrides.headRequestCount++;
      return MockHttpClientRequest();
    } else if (method == 'GET') {
      overrides.getRequestCount++;
      return MockHttpClientRequest();
    }
    return MockHttpClientRequest();
  }

  @override
  Future<HttpClientRequest> headUrl(Uri url) async {
      overrides.headRequestCount++;
      return MockHttpClientRequest();
  }

  @override
  Future<HttpClientRequest> getUrl(Uri url) async {
      overrides.getRequestCount++;
      return MockHttpClientRequest();
  }
}

class MockHttpClientRequest extends Fake implements HttpClientRequest {
  @override
  Future<HttpClientResponse> close() async {
    return MockHttpClientResponse();
  }

  @override
  HttpHeaders get headers => MockHttpHeaders();
}

class MockHttpHeaders extends Fake implements HttpHeaders {
  @override
  void add(String name, Object value, {bool preserveHeaderCase = false}) {}

  @override
  void set(String name, Object value, {bool preserveHeaderCase = false}) {}
}

class MockHttpClientResponse extends Fake implements HttpClientResponse {
  @override
  int get statusCode => 200;

  @override
  int get contentLength => 0;

  @override
  HttpClientResponseCompressionState get compressionState => HttpClientResponseCompressionState.notCompressed;

  @override
  StreamSubscription<List<int>> listen(void Function(List<int> event)? onData,
      {Function? onError, void Function()? onDone, bool? cancelOnError}) {
    return Stream<List<int>>.value([]).listen(onData,
        onError: onError, onDone: onDone, cancelOnError: cancelOnError);
  }

  @override
  HttpHeaders get headers => MockHttpHeaders();
}

void main() {
  testWidgets('ChannelLogoWidget N+1 HEAD request benchmark', (WidgetTester tester) async {
    final overrides = MockHttpOverrides();

    await HttpOverrides.runZoned(() async {
      final urls = List.generate(10, (i) => 'http://example.com/logo_$i.png');

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ListView.builder(
              itemCount: urls.length,
              itemBuilder: (context, index) {
                return ChannelLogoWidget(
                  channelName: 'Channel $index',
                  logoUrl: urls[index],
                  width: 50,
                  height: 50,
                );
              },
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();

      print('HEAD requests: ${overrides.headRequestCount}');
      print('GET requests: ${overrides.getRequestCount}');

      // We expect 0 HEAD requests now, as validation is removed
      expect(overrides.headRequestCount, 0, reason: 'Should NOT perform HEAD request for each logo');

    }, createHttpClient: (context) => overrides.createHttpClient(context));
  });
}
