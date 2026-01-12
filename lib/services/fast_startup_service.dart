import 'dart:async';
import '../utils/debug_helper.dart';
import '../models/channel.dart';
import '../models/program.dart';
import 'smart_cache_service.dart';
import 'parallel_processing_service.dart';
import 'memory_mapped_file_service.dart';
import 'background_sync_service.dart';

/// Fast startup service that orchestrates all optimization techniques
class FastStartupService {
  static FastStartupService? _instance;
  static FastStartupService get instance => _instance ??= FastStartupService._();
  
  FastStartupService._();
  
  bool _initialized = false;
  final List<String> _startupSteps = [];
  final Map<String, DateTime> _stepTimings = {};
  
  /// Initialize fast startup service
  Future<void> initialize() async {
    if (_initialized) return;
    
    _logStep('FastStartup initialization started');
    
    // Initialize all optimization services in parallel
    await Future.wait([
      SmartCacheService.instance.initialize(),
      MemoryMappedFileService.instance.initialize(),
      BackgroundSyncService.instance.initialize(),
    ]);
    
    _initialized = true;
    _logStep('FastStartup initialization completed');
  }
  
  /// Fast load channels with all optimizations
  Future<List<Channel>> fastLoadChannels(String m3uUrl) async {
    _logStep('Fast channel loading started');

    final cached = await SmartCacheService.instance.loadCachedChannelData();
    final channels = cached ?? const <Channel>[];

    _logStep('Fast channel loading completed (${channels.length} channels)');
    return channels;
  }
  
  /// Fast load EPG with streaming and caching
  Future<Map<String, List<Program>>> fastLoadEPG(String epgUrl) async {
    _logStep('Fast EPG loading started');

    final cached = await SmartCacheService.instance.loadCachedEpgData();
    final epgData = cached ?? <String, List<Program>>{};

    _logStep('Fast EPG loading completed (${epgData.length} channels)');
    return epgData;
  }
  
  /// Preload critical data for immediate UI display
  Future<Map<String, dynamic>> preloadCriticalData(
    String m3uUrl, 
    String? epgUrl,
    {int maxChannels = 20}
  ) async {
    _logStep('Critical data preload started');
    
    final results = <String, dynamic>{};
    
    // Load first batch of channels immediately
    final channels = await fastLoadChannels(m3uUrl);
    final criticalChannels = channels.take(maxChannels).toList();
    results['channels'] = criticalChannels;
    
    // Load EPG for critical channels only
    if (epgUrl != null) {
      final epgData = await fastLoadEPG(epgUrl);
      results['epg'] = epgData;
    }
    
    _logStep('Critical data preload completed');
    return results;
  }
  
  /// Log startup step with timing
  void _logStep(String step) {
    final now = DateTime.now();
    _startupSteps.add(step);
    _stepTimings[step] = now;
    
    if (_startupSteps.length > 1) {
      final previousStep = _startupSteps[_startupSteps.length - 2];
      final previousTime = _stepTimings[previousStep]!;
      final duration = now.difference(previousTime).inMilliseconds;
      debugLog('FastStartup: $step (+${duration}ms)');
    } else {
      debugLog('FastStartup: $step');
    }
  }
  
  /// Get startup performance report
  Map<String, dynamic> getPerformanceReport() {
    final report = <String, dynamic>{};
    
    if (_startupSteps.isEmpty) return report;
    
    final totalTime = _stepTimings[_startupSteps.last]!
        .difference(_stepTimings[_startupSteps.first]!)
        .inMilliseconds;
    
    report['total_time_ms'] = totalTime;
    report['steps'] = _startupSteps.length;
    
    return report;
  }
  
  /// Clear performance data
  void clearPerformanceData() {
    _startupSteps.clear();
    _stepTimings.clear();
  }
  
  /// Dispose all services
  Future<void> dispose() async {
    await Future.wait([
      MemoryMappedFileService.instance.dispose(),
    ]);
    
    ParallelProcessingService.instance.dispose();
    BackgroundSyncService.instance.dispose();
    
    _initialized = false;
  }
}
