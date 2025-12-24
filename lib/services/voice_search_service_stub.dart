import 'package:flutter/foundation.dart';

class VoiceSearchService extends ChangeNotifier {
  final bool _isListening = false;
  bool _isAvailable = false;
  final String _lastWords = '';

  bool get isListening => _isListening;
  bool get isAvailable => _isAvailable;
  String get lastWords => _lastWords;

  Future<void> initialize() async {
    _isAvailable = false;
    notifyListeners();
  }

  Future<void> startListening() async {
    // Stub implementation
  }

  Future<void> stopListening() async {
    // Stub implementation
  }
}
