import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/channel.dart';
import '../services/incremental_epg_service.dart';
import '../utils/app_colors.dart';
import '../utils/app_theme.dart';
import '../utils/debug_helper.dart';
import '../utils/snackbar_utils.dart';
import '../widgets/epg_mapping_dialogs.dart';

part 'epg_mapping/epg_mapping_models.dart';
part 'epg_mapping/epg_mapping_ui.dart';

class EpgMappingScreen extends StatefulWidget {
  final List<Channel> channels;
  final String? playlistName;

  const EpgMappingScreen({
    super.key,
    required this.channels,
    this.playlistName,
  });

  @override
  State<EpgMappingScreen> createState() => _EpgMappingScreenState();
}

class _EpgMappingScreenState extends State<EpgMappingScreen> {
  late final IncrementalEpgService _epgService;

  final List<ChannelMappingEntry> _mappingEntries = [];
  List<ChannelMappingEntry>? _sortedMappingEntries;
  List<ChannelMappingEntry> _filteredEntries = [];
  final Set<String> _selectedChannelIds = {};
  String _searchQuery = '';
  MatchFilter _currentFilter = MatchFilter.all;
  bool _isLoading = true;
  final Map<String, double> _matchConfidence = {};

  @override
  void initState() {
    super.initState();
    _epgService = context.read<IncrementalEpgService>();
    _initializeMapping();
  }

  Future<void> _initializeMapping() async {
    setState(() => _isLoading = true);

    try {
      await _epgService.initialize();

      _buildMappingEntries();
      _calculateMatchConfidence();
      _applyFilters();
    } catch (e) {
      debugLog('EPG Mapping initialization failed: $e');
    } finally {
      setState(() => _isLoading = false);
    }
  }

  void _buildMappingEntries() {
    _mappingEntries.clear();
    _sortedMappingEntries = null;

    for (final channel in widget.channels) {
      final tvgId = channel.epgLookupId;
      final existingMapping = _epgService.getManualMapping(tvgId);
      final hasEpgData = _epgService.hasEpgMatch(
        tvgId,
        channelName: channel.epgLookupName,
      );
      final suggestedMatches = _epgService.getSuggestedMatches(
        tvgId,
        channel.epgLookupName,
        limit: 5,
      );

      final confidence = _calculateChannelMatchConfidence(
        channel,
        suggestedMatches,
      );
      _matchConfidence[tvgId] = confidence;

      _mappingEntries.add(
        ChannelMappingEntry(
          channel: channel,
          currentMapping: existingMapping,
          hasEpgData: hasEpgData,
          confidence: confidence,
          suggestedMatches: suggestedMatches,
        ),
      );
    }
  }

  List<ChannelMappingEntry> get _getSortedMappingEntries {
    return _sortedMappingEntries ??= List.from(_mappingEntries)
      ..sort((a, b) => a.confidence.compareTo(b.confidence));
  }

  double _calculateChannelMatchConfidence(
    Channel channel,
    List<MapEntry<String, double>> suggestions,
  ) {
    if (suggestions.isEmpty) return 0.0;

    final tvgId = channel.epgLookupId;
    final hasExactMatch = _epgService.hasEpgMatch(
      tvgId,
      channelName: channel.epgLookupName,
    );
    if (hasExactMatch) return 1.0;

    return suggestions.first.value;
  }

  void _calculateMatchConfidence() {
    for (final entry in _mappingEntries) {
      final suggestions = _epgService.getSuggestedMatches(
        entry.channel.epgLookupId,
        entry.channel.epgLookupName,
        limit: 5,
      );
      _matchConfidence[entry.channel.epgLookupId] =
          suggestions.isEmpty ? 0.0 : suggestions.first.value;
    }
  }

  void _applyFilters() {
    // ⚡ Bolt: Performance Optimization
    // Fused `.where(...).toList()` into a single O(n) loop to reduce allocations.
    // Pre-calculate lowercased search query to avoid repeated allocations per entry.
    final hasSearch = _searchQuery.isNotEmpty;
    final query = hasSearch ? _searchQuery.toLowerCase() : '';
    final result = <ChannelMappingEntry>[];

    final entries = _getSortedMappingEntries;
    for (int i = 0; i < entries.length; i++) {
      final entry = entries[i];

      // Apply search filter
      if (hasSearch) {
        if (!entry.channel.name.toLowerCase().contains(query) &&
            !entry.channel.epgLookupId.toLowerCase().contains(query)) {
          continue;
        }
      }

      // Apply match status filter
      bool matchesFilter = false;
      switch (_currentFilter) {
        case MatchFilter.matched:
          matchesFilter = entry.hasEpgData || entry.currentMapping != null;
          break;
        case MatchFilter.unmatched:
          matchesFilter = !entry.hasEpgData && entry.currentMapping == null;
          break;
        case MatchFilter.lowConfidence:
          matchesFilter = entry.confidence < 0.7;
          break;
        case MatchFilter.all:
          matchesFilter = true;
          break;
      }

      if (matchesFilter) {
        result.add(entry);
      }
    }
    _filteredEntries = result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkBackground,
      appBar: _buildAppBar(),
      body: Column(
        children: [
          _buildControls(),
          if (_isLoading) _buildLoadingState(),
          if (!_isLoading) _buildMappingGrid(),
        ],
      ),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    // ⚡ Bolt: Performance Optimization
    // Replaced .where(...).length with a direct for loop to prevent allocating
    // an intermediate Iterable that is immediately discarded during UI builds.
    int matchedCount = 0;
    for (final e in _getSortedMappingEntries) {
      if (e.hasEpgData || e.currentMapping != null) {
        matchedCount++;
      }
    }

    final totalCount = _getSortedMappingEntries.length;

    return AppBar(
      backgroundColor: AppTheme.darkBackground,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'EPG Mapping',
            style: AppTheme.darkTheme.textTheme.headlineMedium?.copyWith(
              color: Colors.white,
            ),
          ),
          Text(
            '$matchedCount/$totalCount channels matched',
            style: AppTheme.darkTheme.textTheme.bodyMedium?.copyWith(
              color: AppColors.textSecondary,
              fontSize: 12,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.analytics, color: Colors.white),
          onPressed: _showAnalyticsDialog,
        ),
        IconButton(
          icon: Icon(Icons.refresh, color: Colors.white),
          onPressed: _initializeMapping,
        ),
      ],
    );
  }

  void _updateEpgMappingState(VoidCallback fn){if(!mounted)return;setState(fn);}
}

