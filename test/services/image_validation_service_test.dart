import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/services/image_validation_service.dart';

void main() {
  group('ImageValidationService', () {
    late HttpServer server;
    late String baseUrl;

    setUpAll(() async {
      server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
      baseUrl = 'http://127.0.0.1:${server.port}';

      server.listen((HttpRequest request) {
        if (request.uri.path.endsWith('.jpg')) {
          request.response.statusCode = HttpStatus.ok;
          request.response.headers.contentType = ContentType('image', 'jpeg');
        } else if (request.uri.path.endsWith('.txt')) {
          request.response.statusCode = HttpStatus.ok;
          request.response.headers.contentType = ContentType('text', 'plain');
        } else {
          request.response.statusCode = HttpStatus.notFound;
        }
        request.response.close();
      });
    });

    tearDownAll(() async {
      await server.close();
    });

    test('validates valid image URL', () async {
      final url = '$baseUrl/valid_test.jpg';
      final isValid = await ImageValidationService.isValid(url);
      expect(isValid, isTrue);
      expect(ImageValidationService.isKnownValid(url), isTrue);
    });

    test('invalidates 404 URL', () async {
      final url = '$baseUrl/missing.png'; // Not .jpg, so server returns 404
      final isValid = await ImageValidationService.isValid(url);
      expect(isValid, isFalse);
      expect(ImageValidationService.isKnownInvalid(url), isTrue);
    });

    test('invalidates non-image content type', () async {
      final url = '$baseUrl/document.txt';
      final isValid = await ImageValidationService.isValid(url);
      expect(isValid, isFalse);
      expect(ImageValidationService.isKnownInvalid(url), isTrue);
    });

    test('handles network errors gracefully (returns true to allow retry)', () async {
      // Use a port that is likely closed or reserved
      final url = 'http://127.0.0.1:1/unreachable.jpg';
      final isValid = await ImageValidationService.isValid(url);
      // Service logic: "Network errors ... Still allow it through"
      expect(isValid, isTrue);
      // Should not be marked as known bad or known good?
      // Implementation says: debugLog error, return true. Does not mark valid/invalid.
      expect(ImageValidationService.isKnownValid(url), isFalse);
      expect(ImageValidationService.isKnownInvalid(url), isFalse);
    });
  });
}
