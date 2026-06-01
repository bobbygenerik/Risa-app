import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'dart:math' as math;
import 'package:shared_preferences/shared_preferences.dart';
import '../utils/debug_helper.dart';

/// Smart Learning Engine that improves EPG matching accuracy over time
part 'smart_learning/smart_learning_models.dart';
part 'smart_learning/smart_learning_public.dart';
part 'smart_learning/smart_learning_helpers.dart';

class SmartLearningEngine extends ChangeNotifier {
  static const String _learningDataKey = 'epg_smart_learning_data';
  static const String _providerPatternsKey = 'epg_provider_patterns';
  static const String _userCorrectionsKey = 'epg_user_corrections';

  // Learning data storage
  final Map<String, dynamic> _learningData = {};
  final Map<String, ProviderPattern> _providerPatterns = {};
  final Map<String, UserCorrection> _userCorrections = {};

  // Configuration
  int get _maxLearningEntries => 10000;

  // Getters
  Map<String, ProviderPattern> get providerPatterns =>
      Map.unmodifiable(_providerPatterns);
  Map<String, UserCorrection> get userCorrections =>
      Map.unmodifiable(_userCorrections);
  int get totalLearningEntries => _learningData.length;
  int get totalCorrections => _userCorrections.length;

  /// Initialize the learning engine
  void _notifyLearningChange() => notifyListeners();
}

