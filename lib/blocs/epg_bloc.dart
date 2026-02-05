import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';

// ==================== EVENTS ====================

abstract class EpgEvent extends Equatable {
  const EpgEvent();

  @override
  List<Object?> get props => [];
}

/// Initialize EPG service
class EpgInitialize extends EpgEvent {
  final bool forceRefresh;
  
  const EpgInitialize({this.forceRefresh = false});
  
  @override
  List<Object?> get props => [forceRefresh];
}

/// Load programs for specific channels
class EpgLoadChannels extends EpgEvent {
  final List<String> channelIds;
  final List<String?>? channelNames;
  
  const EpgLoadChannels({required this.channelIds, this.channelNames});
  
  @override
  List<Object?> get props => [channelIds, channelNames];
}

/// Set allowed channel IDs for filtering
class EpgSetAllowedChannels extends EpgEvent {
  final Set<String> channelIds;
  final bool triggerRefresh;
  
  const EpgSetAllowedChannels(this.channelIds, {this.triggerRefresh = false});
  
  @override
  List<Object?> get props => [channelIds, triggerRefresh];
}

/// Get current program for a channel
class EpgGetCurrentProgram extends EpgEvent {
  final String channelId;
  final String? channelName;
  final String? groupTitle;
  
  const EpgGetCurrentProgram({
    required this.channelId,
    this.channelName,
    this.groupTitle,
  });
  
  @override
  List<Object?> get props => [channelId, channelName, groupTitle];
}

/// Set playback mode (suspend notifications during video)
class EpgSetPlaybackMode extends EpgEvent {
  final bool active;
  
  const EpgSetPlaybackMode(this.active);
  
  @override
  List<Object?> get props => [active];
}

/// Force refresh EPG data
class EpgForceRefresh extends EpgEvent {
  const EpgForceRefresh();
}

/// Clear all EPG data
class EpgClearData extends EpgEvent {
  const EpgClearData();
}

/// Set manual EPG mapping
class EpgSetManualMapping extends EpgEvent {
  final String channelId;
  final String epgChannelId;
  
  const EpgSetManualMapping(this.channelId, this.epgChannelId);
  
  @override
  List<Object?> get props => [channelId, epgChannelId];
}

/// Remove manual EPG mapping
class EpgRemoveManualMapping extends EpgEvent {
  final String channelId;
  
  const EpgRemoveManualMapping(this.channelId);
  
  @override
  List<Object?> get props => [channelId];
}

/// Internal event for service updates
class _EpgServiceUpdate extends EpgEvent {
  const _EpgServiceUpdate();
}

// ==================== STATES ====================

abstract class EpgState extends Equatable {
  const EpgState();
  
  @override
  List<Object?> get props => [];
}

/// Initial state
class EpgInitial extends EpgState {
  const EpgInitial();
}

/// EPG is loading/downloading
class EpgLoading extends EpgState {
  final double progress;
  final String? label;
  final bool isDownloading;
  final bool isParsing;
  
  const EpgLoading({
    this.progress = 0.0,
    this.label,
    this.isDownloading = false,
    this.isParsing = false,
  });
  
  @override
  List<Object?> get props => [progress, label, isDownloading, isParsing];
}

/// EPG is ready with data
class EpgReady extends EpgState {
  final bool hasData;
  final int channelCount;
  final int programCount;
  final String? error;
  final Map<String, List<Program>> programsByChannel;
  final Set<String> availableChannels;
  final bool isPlaybackActive;
  
  const EpgReady({
    this.hasData = false,
    this.channelCount = 0,
    this.programCount = 0,
    this.error,
    this.programsByChannel = const {},
    this.availableChannels = const {},
    this.isPlaybackActive = false,
  });
  
  EpgReady copyWith({
    bool? hasData,
    int? channelCount,
    int? programCount,
    String? error,
    Map<String, List<Program>>? programsByChannel,
    Set<String>? availableChannels,
    bool? isPlaybackActive,
  }) {
    return EpgReady(
      hasData: hasData ?? this.hasData,
      channelCount: channelCount ?? this.channelCount,
      programCount: programCount ?? this.programCount,
      error: error ?? this.error,
      programsByChannel: programsByChannel ?? this.programsByChannel,
      availableChannels: availableChannels ?? this.availableChannels,
      isPlaybackActive: isPlaybackActive ?? this.isPlaybackActive,
    );
  }
  
  @override
  List<Object?> get props => [
    hasData,
    channelCount,
    programCount,
    error,
    programsByChannel.length,
    availableChannels.length,
    isPlaybackActive,
  ];
}

/// EPG has error
class EpgError extends EpgState {
  final String message;
  
  const EpgError(this.message);
  
  @override
  List<Object?> get props => [message];
}

// ==================== BLOC ====================

/// BLoC for managing EPG (Electronic Program Guide) state.
/// 
/// This BLoC provides a clean, reactive interface to the EPG service
/// with proper state management and event handling.
class EpgBloc extends Bloc<EpgEvent, EpgState> {
  final IncrementalEpgService _epgService;
  VoidCallback? _epgListener;
  
  EpgBloc({required IncrementalEpgService epgService})
      : _epgService = epgService,
        super(const EpgInitial()) {
    on<EpgInitialize>(_onInitialize);
    on<EpgLoadChannels>(_onLoadChannels);
    on<EpgSetAllowedChannels>(_onSetAllowedChannels);
    on<EpgGetCurrentProgram>(_onGetCurrentProgram);
    on<EpgSetPlaybackMode>(_onSetPlaybackMode);
    on<EpgForceRefresh>(_onForceRefresh);
    on<EpgClearData>(_onClearData);
    on<EpgSetManualMapping>(_onSetManualMapping);
    on<EpgRemoveManualMapping>(_onRemoveManualMapping);
    on<_EpgServiceUpdate>(_onEpgServiceUpdate);
    
    // Listen to EPG service changes
    _epgListener = _onEpgServiceChanged;
    _epgService.addListener(_epgListener!);
  }
  
  void _onEpgServiceChanged() {
    add(const _EpgServiceUpdate());
  }
  
  void _onEpgServiceUpdate(_EpgServiceUpdate event, Emitter<EpgState> emit) {
    // Only emit new state if not in playback mode
    if (_epgService.isLoading || _epgService.isDownloading) return;
    
    final currentState = state;
    if (currentState is EpgReady) {
      emit(currentState.copyWith(
        hasData: _epgService.hasLoadedPrograms,
        channelCount: _epgService.loadedChannelCount,
        availableChannels: _epgService.availableChannels,
      ));
    } else if (_epgService.isLoading || _epgService.isDownloading || _epgService.isParsing) {
      emit(EpgLoading(
        progress: _epgService.epgProgress,
        label: _epgService.epgProgressLabel,
        isDownloading: _epgService.isDownloading,
        isParsing: _epgService.isParsing,
      ));
    } else if (_epgService.hasLoadedPrograms) {
      emit(EpgReady(
        hasData: true,
        channelCount: _epgService.loadedChannelCount,
        availableChannels: _epgService.availableChannels,
      ));
    }
  }
  
  Future<void> _onInitialize(EpgInitialize event, Emitter<EpgState> emit) async {
    emit(const EpgLoading(progress: 0.0, label: 'Initializing EPG...'));
    
    try {
      if (event.forceRefresh) {
        await _epgService.forceRefresh();
      } else {
        await _epgService.quickStart();
      }
      
      emit(EpgReady(
        hasData: _epgService.hasLoadedPrograms,
        channelCount: _epgService.loadedChannelCount,
        availableChannels: _epgService.availableChannels,
        error: _epgService.error,
      ));
    } catch (e) {
      emit(EpgError('Failed to initialize EPG: $e'));
    }
  }
  
  Future<void> _onLoadChannels(EpgLoadChannels event, Emitter<EpgState> emit) async {
    final currentState = state;
    if (currentState is! EpgReady) {
      emit(const EpgLoading(label: 'Loading channels...'));
    }
    
    try {
      await _epgService.priorityLoadVisibleChannels(
        event.channelIds,
        channelNames: event.channelNames,
      );
      
      if (currentState is EpgReady) {
        emit(currentState.copyWith(
          hasData: _epgService.hasLoadedPrograms,
          channelCount: _epgService.loadedChannelCount,
        ));
      } else {
        emit(EpgReady(
          hasData: _epgService.hasLoadedPrograms,
          channelCount: _epgService.loadedChannelCount,
          availableChannels: _epgService.availableChannels,
        ));
      }
    } catch (e) {
      if (currentState is EpgReady) {
        emit(currentState.copyWith(error: 'Failed to load channels: $e'));
      } else {
        emit(EpgError('Failed to load channels: $e'));
      }
    }
  }
  
  Future<void> _onSetAllowedChannels(EpgSetAllowedChannels event, Emitter<EpgState> emit) async {
    _epgService.setAllowedChannelIds(
      event.channelIds,
      triggerRefresh: event.triggerRefresh,
    );
    
    final currentState = state;
    if (currentState is EpgReady) {
      emit(currentState.copyWith(
        channelCount: event.channelIds.length,
      ));
    }
  }
  
  Future<void> _onGetCurrentProgram(EpgGetCurrentProgram event, Emitter<EpgState> emit) async {
    // Get current program - result can be accessed via helper method if needed
    _epgService.getCurrentProgram(
      event.channelId,
      channelName: event.channelName,
      groupTitle: event.groupTitle,
    );
    
    // This event is typically used to get data, not change state
    // The program data would be used by the caller via helper methods
  }
  
  Future<void> _onSetPlaybackMode(EpgSetPlaybackMode event, Emitter<EpgState> emit) async {
    _epgService.setPlaybackActive(event.active);
    
    final currentState = state;
    if (currentState is EpgReady) {
      emit(currentState.copyWith(isPlaybackActive: event.active));
    }
  }
  
  Future<void> _onForceRefresh(EpgForceRefresh event, Emitter<EpgState> emit) async {
    emit(const EpgLoading(progress: 0.0, label: 'Refreshing EPG...'));
    
    try {
      await _epgService.forceRefresh();
      
      emit(EpgReady(
        hasData: _epgService.hasLoadedPrograms,
        channelCount: _epgService.loadedChannelCount,
        availableChannels: _epgService.availableChannels,
        error: _epgService.error,
      ));
    } catch (e) {
      emit(EpgError('Failed to refresh EPG: $e'));
    }
  }
  
  Future<void> _onClearData(EpgClearData event, Emitter<EpgState> emit) async {
    await _epgService.clearAllData();
    emit(const EpgInitial());
  }
  
  Future<void> _onSetManualMapping(EpgSetManualMapping event, Emitter<EpgState> emit) async {
    await _epgService.setManualMapping(event.channelId, event.epgChannelId);
    
    final currentState = state;
    if (currentState is EpgReady) {
      emit(currentState);
    }
  }
  
  Future<void> _onRemoveManualMapping(EpgRemoveManualMapping event, Emitter<EpgState> emit) async {
    await _epgService.removeManualMapping(event.channelId);
    
    final currentState = state;
    if (currentState is EpgReady) {
      emit(currentState);
    }
  }
  
  // Helper methods for UI
  
  /// Check if EPG has programs for a channel
  bool hasProgramsForChannel(String channelId, {String? channelName, String? groupTitle}) {
    return _epgService.hasProgramsForChannel(
      channelId,
      channelName: channelName,
      groupTitle: groupTitle,
    );
  }
  
  /// Get programs for a channel
  List<Program> getProgramsForChannel(String channelId, {String? channelName}) {
    return _epgService.getProgramsForChannel(channelId, channelName: channelName);
  }
  
  /// Get current program for a channel
  Program? getCurrentProgram(String channelId, {String? channelName, String? groupTitle}) {
    return _epgService.getCurrentProgram(
      channelId,
      channelName: channelName,
      groupTitle: groupTitle,
    );
  }
  
  /// Get suggested EPG matches for a channel
  List<MapEntry<String, double>> getSuggestedMatches(String channelId, String? channelName, {int limit = 10}) {
    return _epgService.getSuggestedMatches(channelId, channelName, limit: limit);
  }
  
  /// Get all available EPG channel IDs
  List<String> getEpgChannelIds() {
    return _epgService.getEpgChannelIds();
  }
  
  /// Check if a manual mapping exists
  bool hasManualMapping(String channelId) {
    return _epgService.hasManualMapping(channelId);
  }
  
  /// Get manual mapping for a channel
  String? getManualMapping(String channelId) {
    return _epgService.getManualMapping(channelId);
  }
  
  @override
  Future<void> close() {
    if (_epgListener != null) {
      _epgService.removeListener(_epgListener!);
    }
    return super.close();
  }
}
