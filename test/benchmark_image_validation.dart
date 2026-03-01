// ignore_for_file: avoid_print

import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/services/image_validation_service.dart';

void main() {
  test('ImageValidationService benchmark', () async {
    // Start a simple HTTP server
    final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
    print('Server running on port ${server.port}');

    server.listen((HttpRequest request) {
      if (request.method == 'HEAD') {
        request.response.statusCode = HttpStatus.ok;
        request.response.headers.contentType = ContentType('image', 'jpeg');
      } else {
        request.response.statusCode = HttpStatus.notFound;
      }
      request.response.close();
    });

    final baseUrl = 'http://127.0.0.1:${server.port}';
    final stopwatch = Stopwatch()..start();
    final count = 50;

    print('Starting benchmark with $count requests...');

    for (var i = 0; i < count; i++) {
      final url = '$baseUrl/image_$i.jpg';
      await ImageValidationService.isValid(url);
    }

    stopwatch.stop();
    print('Benchmark completed in ${stopwatch.elapsedMilliseconds} ms');
    print(
        'Average time per request: ${stopwatch.elapsedMilliseconds / count} ms');

    await server.close();
  });
}
