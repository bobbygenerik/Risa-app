import 'package:flutter/foundation.dart';

class MLKitTranslationService extends ChangeNotifier {
  bool get isInitialized => false;
  bool get isEnabled => false;
  bool get isDownloading => false;
  double get downloadProgress => 0.0;

  Future<bool> initialize() async => false;
  Future<String> translate(String text) async => text;
  void setEnabled(bool enabled) {}
  Future<bool> downloadLanguageModels() async => false;
  Future<void> setLanguagePairByCode({
    required String sourceCode,
    required String targetCode,
  }) async {}
  List<LanguageOption> getAvailableLanguages() => [];
}

class LanguageOption {
  final String code;
  final String name;
  LanguageOption({required this.code, required this.name});
}
