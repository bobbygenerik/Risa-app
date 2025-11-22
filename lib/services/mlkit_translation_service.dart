import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:google_mlkit_translation/google_mlkit_translation.dart';

/// True On-Device Translation using Google ML Kit
///
/// This service provides REAL on-device translation without internet.
/// Language models are downloaded once and cached on device (50MB each).
///
/// Features:
/// - 59 languages supported
/// - Truly offline (no API calls)
/// - Free (no recurring costs)
/// - Auto-downloads language packs
class MLKitTranslationService extends ChangeNotifier {
  OnDeviceTranslator? _translator;
  bool _isInitialized = false;
  bool _isEnabled = false;
  bool _isDownloading = false;
  double _downloadProgress = 0.0;

  TranslateLanguage _sourceLanguage = TranslateLanguage.english;
  TranslateLanguage _targetLanguage = TranslateLanguage.spanish;

  final OnDeviceTranslatorModelManager _modelManager =
      OnDeviceTranslatorModelManager();

  bool get _isSupportedPlatform {
    if (kIsWeb) {
      return false;
    }
    return defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS;
  }

  // Getters
  bool get isInitialized => _isInitialized;
  bool get isEnabled => _isEnabled;
  bool get isDownloading => _isDownloading;
  double get downloadProgress => _downloadProgress;
  TranslateLanguage get sourceLanguage => _sourceLanguage;
  TranslateLanguage get targetLanguage => _targetLanguage;

  /// Initialize the translation service
  Future<bool> initialize() async {
    if (!_isSupportedPlatform) {
      debugPrint('ML Kit translation is not supported on this platform.');
      _isInitialized = false;
      _isEnabled = false;
      notifyListeners();
      return false;
    }
    if (_isInitialized) return true;

    try {
      // Create translator with default languages
      _translator = OnDeviceTranslator(
        sourceLanguage: _sourceLanguage,
        targetLanguage: _targetLanguage,
      );

      // Check if models are downloaded
      final sourceDownloaded = await _modelManager.isModelDownloaded(
        _sourceLanguage.bcpCode,
      );
      final targetDownloaded = await _modelManager.isModelDownloaded(
        _targetLanguage.bcpCode,
      );

      if (!sourceDownloaded || !targetDownloaded) {
        debugPrint('Translation models not downloaded yet');
        debugPrint('Source (${_sourceLanguage.bcpCode}): $sourceDownloaded');
        debugPrint('Target (${_targetLanguage.bcpCode}): $targetDownloaded');
      }

      _isInitialized = true;
      notifyListeners();
      debugPrint('ML Kit Translation service initialized');
      return true;
    } catch (e) {
      debugPrint('Translation initialization error: $e');
      _isInitialized = false;
      notifyListeners();
      return false;
    }
  }

  /// Translate text
  Future<String> translate(String text) async {
    if (!_isInitialized || !_isEnabled || text.trim().isEmpty) {
      return text;
    }

    if (!_isSupportedPlatform) {
      return text;
    }

    if (_sourceLanguage == _targetLanguage) {
      return text;
    }

    try {
      // Check if models are downloaded
      final modelsReady = await _ensureModelsDownloaded();
      if (!modelsReady) {
        debugPrint('Models not ready, returning original text');
        return text;
      }

      // Translate
      final translation = await _translator!.translateText(text);
      return translation;
    } catch (e) {
      debugPrint('Translation error: $e');
      return text;
    }
  }

  /// Ensure both language models are downloaded
  Future<bool> _ensureModelsDownloaded() async {
    if (!_isSupportedPlatform) {
      return false;
    }
    try {
      final sourceDownloaded = await _modelManager.isModelDownloaded(
        _sourceLanguage.bcpCode,
      );
      final targetDownloaded = await _modelManager.isModelDownloaded(
        _targetLanguage.bcpCode,
      );

      return sourceDownloaded && targetDownloaded;
    } catch (e) {
      debugPrint('Error checking model status: $e');
      return false;
    }
  }

  /// Download language models
  Future<bool> downloadLanguageModels() async {
    if (!_isSupportedPlatform) {
      debugPrint('Model download skipped: unsupported platform.');
      return false;
    }
    if (_isDownloading) return false;

    _isDownloading = true;
    _downloadProgress = 0.0;
    notifyListeners();

    try {
      debugPrint('Downloading translation models...');

      // Download source language model
      final sourceDownloaded = await _modelManager.isModelDownloaded(
        _sourceLanguage.bcpCode,
      );
      if (!sourceDownloaded) {
        debugPrint('Downloading ${_sourceLanguage.bcpCode} model...');
        await _modelManager.downloadModel(_sourceLanguage.bcpCode);
        _downloadProgress = 0.5;
        notifyListeners();
      }

      // Download target language model
      final targetDownloaded = await _modelManager.isModelDownloaded(
        _targetLanguage.bcpCode,
      );
      if (!targetDownloaded) {
        debugPrint('Downloading ${_targetLanguage.bcpCode} model...');
        await _modelManager.downloadModel(_targetLanguage.bcpCode);
        _downloadProgress = 1.0;
        notifyListeners();
      }

      debugPrint('✅ Translation models downloaded successfully');
      _isDownloading = false;
      _downloadProgress = 1.0;
      notifyListeners();
      return true;
    } catch (e) {
      debugPrint('Model download error: $e');
      _isDownloading = false;
      _downloadProgress = 0.0;
      notifyListeners();
      return false;
    }
  }

  /// Delete language model to free space
  Future<void> deleteLanguageModel(String languageCode) async {
    if (!_isSupportedPlatform) {
      return;
    }
    try {
      await _modelManager.deleteModel(languageCode);
      debugPrint('Deleted model: $languageCode');
      notifyListeners();
    } catch (e) {
      debugPrint('Error deleting model: $e');
    }
  }

  /// Get list of downloaded models
  Future<List<String>> getDownloadedModels() async {
    if (!_isSupportedPlatform) {
      return [];
    }
    try {
      // ML Kit doesn't provide a direct API to list downloaded models
      // We'd need to track this manually or check each language individually
      final List<String> downloaded = [];

      // Check common languages
      final commonLanguages = [
        TranslateLanguage.english.bcpCode,
        TranslateLanguage.spanish.bcpCode,
        TranslateLanguage.french.bcpCode,
        TranslateLanguage.german.bcpCode,
        TranslateLanguage.italian.bcpCode,
        TranslateLanguage.portuguese.bcpCode,
      ];

      for (final lang in commonLanguages) {
        final isDownloaded = await _modelManager.isModelDownloaded(lang);
        if (isDownloaded) {
          downloaded.add(lang);
        }
      }

      return downloaded;
    } catch (e) {
      debugPrint('Error getting downloaded models: $e');
      return [];
    }
  }

  /// Check if specific language model is downloaded
  Future<bool> isLanguageModelDownloaded(String languageCode) async {
    if (!_isSupportedPlatform) {
      return false;
    }
    try {
      return await _modelManager.isModelDownloaded(languageCode);
    } catch (e) {
      debugPrint('Error checking model status: $e');
      return false;
    }
  }

  /// Enable/disable translation
  void setEnabled(bool enabled) {
    _isEnabled = enabled && _isInitialized && _isSupportedPlatform;
    notifyListeners();
  }

  /// Set source language
  Future<void> setSourceLanguage(TranslateLanguage language) async {
    if (_sourceLanguage == language) return;

    _sourceLanguage = language;
    await _updateTranslator();
    notifyListeners();
  }

  /// Set target language
  Future<void> setTargetLanguage(TranslateLanguage language) async {
    if (_targetLanguage == language) return;

    _targetLanguage = language;
    await _updateTranslator();
    notifyListeners();
  }

  /// Update translator with new language pair
  Future<void> _updateTranslator() async {
    if (!_isSupportedPlatform) {
      return;
    }
    try {
      await _translator?.close();
      _translator = OnDeviceTranslator(
        sourceLanguage: _sourceLanguage,
        targetLanguage: _targetLanguage,
      );
    } catch (e) {
      debugPrint('Error updating translator: $e');
    }
  }

  Future<void> setLanguagePairByCode({
    required String sourceCode,
    required String targetCode,
  }) async {
    final source = _languageFromCode(sourceCode);
    final target = _languageFromCode(targetCode);

    if (source != null) {
      await setSourceLanguage(source);
    } else {
      debugPrint('Unknown source language code: $sourceCode');
    }

    if (target != null) {
      await setTargetLanguage(target);
    } else {
      debugPrint('Unknown target language code: $targetCode');
    }
  }

  /// Get available languages
  List<LanguageOption> getAvailableLanguages() {
    return TranslateLanguage.values.map((lang) {
      return LanguageOption(
        code: lang.bcpCode,
        name: _getLanguageName(lang),
        language: lang,
      );
    }).toList()..sort((a, b) => a.name.compareTo(b.name));
  }

  /// Get human-readable language name
  String _getLanguageName(TranslateLanguage lang) {
    final names = {
      TranslateLanguage.afrikaans: 'Afrikaans',
      TranslateLanguage.arabic: 'Arabic',
      TranslateLanguage.belarusian: 'Belarusian',
      TranslateLanguage.bulgarian: 'Bulgarian',
      TranslateLanguage.bengali: 'Bengali',
      TranslateLanguage.catalan: 'Catalan',
      TranslateLanguage.czech: 'Czech',
      TranslateLanguage.welsh: 'Welsh',
      TranslateLanguage.danish: 'Danish',
      TranslateLanguage.german: 'German',
      TranslateLanguage.greek: 'Greek',
      TranslateLanguage.english: 'English',
      TranslateLanguage.esperanto: 'Esperanto',
      TranslateLanguage.spanish: 'Spanish',
      TranslateLanguage.estonian: 'Estonian',
      TranslateLanguage.persian: 'Persian',
      TranslateLanguage.finnish: 'Finnish',
      TranslateLanguage.french: 'French',
      TranslateLanguage.irish: 'Irish',
      TranslateLanguage.galician: 'Galician',
      TranslateLanguage.gujarati: 'Gujarati',
      TranslateLanguage.hebrew: 'Hebrew',
      TranslateLanguage.hindi: 'Hindi',
      TranslateLanguage.croatian: 'Croatian',
      TranslateLanguage.hungarian: 'Hungarian',
      TranslateLanguage.indonesian: 'Indonesian',
      TranslateLanguage.icelandic: 'Icelandic',
      TranslateLanguage.italian: 'Italian',
      TranslateLanguage.japanese: 'Japanese',
      TranslateLanguage.georgian: 'Georgian',
      TranslateLanguage.kannada: 'Kannada',
      TranslateLanguage.korean: 'Korean',
      TranslateLanguage.lithuanian: 'Lithuanian',
      TranslateLanguage.latvian: 'Latvian',
      TranslateLanguage.macedonian: 'Macedonian',
      TranslateLanguage.marathi: 'Marathi',
      TranslateLanguage.malay: 'Malay',
      TranslateLanguage.maltese: 'Maltese',
      TranslateLanguage.dutch: 'Dutch',
      TranslateLanguage.norwegian: 'Norwegian',
      TranslateLanguage.polish: 'Polish',
      TranslateLanguage.portuguese: 'Portuguese',
      TranslateLanguage.romanian: 'Romanian',
      TranslateLanguage.russian: 'Russian',
      TranslateLanguage.slovak: 'Slovak',
      TranslateLanguage.slovenian: 'Slovenian',
      TranslateLanguage.albanian: 'Albanian',
      TranslateLanguage.swedish: 'Swedish',
      TranslateLanguage.swahili: 'Swahili',
      TranslateLanguage.tamil: 'Tamil',
      TranslateLanguage.telugu: 'Telugu',
      TranslateLanguage.thai: 'Thai',
      TranslateLanguage.tagalog: 'Tagalog',
      TranslateLanguage.turkish: 'Turkish',
      TranslateLanguage.ukrainian: 'Ukrainian',
      TranslateLanguage.urdu: 'Urdu',
      TranslateLanguage.vietnamese: 'Vietnamese',
      TranslateLanguage.chinese: 'Chinese',
    };

    return names[lang] ?? lang.bcpCode;
  }

  /// Get model size estimate
  String getModelSize() {
    return '~50 MB per language';
  }

  TranslateLanguage? _languageFromCode(String code) {
    final normalized = code.replaceAll('_', '-').toLowerCase();

    for (final lang in TranslateLanguage.values) {
      if (lang.bcpCode.toLowerCase() == normalized) {
        return lang;
      }
    }

    final shortCode = normalized.split('-').first;
    if (shortCode != normalized) {
      for (final lang in TranslateLanguage.values) {
        if (lang.bcpCode.toLowerCase() == shortCode) {
          return lang;
        }
      }
    }
    return null;
  }

  @override
  void dispose() {
    _translator?.close();
    _translator = null;
    super.dispose();
  }
}

/// Language option for UI
class LanguageOption {
  final String code;
  final String name;
  final TranslateLanguage language;

  LanguageOption({
    required this.code,
    required this.name,
    required this.language,
  });
}
