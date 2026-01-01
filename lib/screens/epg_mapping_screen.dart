import 'package:flutter/material.dart';
import '../models/channel.dart';
import '../services/epg_service.dart';
import '../services/incremental_epg_service.dart';
import '../utils/app_colors.dart';
import '../utils/app_theme.dart';
import '../utils/debug_helper.dart';
import '../widgets/epg_mapping_dialogs.dart';

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
  final EpgService _epgService = EpgService();
  final IncrementalEpgService _incrementalEpgService = IncrementalEpgService();

  final List<ChannelMappingEntry> _mappingEntries = [];
  List<ChannelMappingEntry> _filteredEntries = [];
  final Set<String> _selectedChannelIds = {};
  String _searchQuery = '';
  MatchFilter _currentFilter = MatchFilter.all;
  bool _isLoading = true;
  final Map<String, double> _matchConfidence = {};

  @override
  void initState() {
    super.initState();
    _initializeMapping();
  }

  Future<void> _initializeMapping() async {
    setState(() => _isLoading = true);

    try {
      await _epgService.initialize();
      await _incrementalEpgService.initialize();

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

    for (final channel in widget.channels) {
      final tvgId = channel.tvgId ?? channel.id;
      final existingMapping = _epgService.getManualMapping(tvgId);
      final hasEpgData =
          _epgService.hasEpgData(tvgId, channelName: channel.name);
      final suggestedMatches =
          _epgService.getSuggestedMatches(tvgId, channel.name, limit: 5);

      final confidence =
          _calculateChannelMatchConfidence(channel, suggestedMatches);
      _matchConfidence[tvgId] = confidence;

      _mappingEntries.add(ChannelMappingEntry(
        channel: channel,
        currentMapping: existingMapping,
        hasEpgData: hasEpgData,
        confidence: confidence,
        suggestedMatches: suggestedMatches,
      ));
    }

    // Sort by confidence (lowest first) to prioritize unmapped channels
    _mappingEntries.sort((a, b) => a.confidence.compareTo(b.confidence));
  }

  double _calculateChannelMatchConfidence(
      Channel channel, List<MapEntry<String, double>> suggestions) {
    if (suggestions.isEmpty) return 0.0;

    final tvgId = channel.tvgId ?? channel.id;
    final hasExactMatch =
        _epgService.hasEpgData(tvgId, channelName: channel.name);
    if (hasExactMatch) return 1.0;

    return suggestions.first.value;
  }

  void _calculateMatchConfidence() {
    for (final entry in _mappingEntries) {
      final suggestions = _epgService.getSuggestedMatches(
        entry.channel.tvgId ?? entry.channel.id,
        entry.channel.name,
        limit: 5,
      );
      _matchConfidence[entry.channel.tvgId ?? entry.channel.id] =
          suggestions.isEmpty ? 0.0 : suggestions.first.value;
    }
  }

  void _applyFilters() {
    _filteredEntries = _mappingEntries.where((entry) {
      // Apply search filter
      if (_searchQuery.isNotEmpty) {
        final query = _searchQuery.toLowerCase();
        if (!entry.channel.name.toLowerCase().contains(query) &&
            !(entry.channel.tvgId ?? '').toLowerCase().contains(query)) {
          return false;
        }
      }

      // Apply match status filter
      switch (_currentFilter) {
        case MatchFilter.matched:
          return entry.hasEpgData || entry.currentMapping != null;
        case MatchFilter.unmatched:
          return !entry.hasEpgData && entry.currentMapping == null;
        case MatchFilter.lowConfidence:
          return entry.confidence < 0.7;
        case MatchFilter.all:
          return true;
      }
    }).toList();
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
    final matchedCount = _mappingEntries
        .where((e) => e.hasEpgData || e.currentMapping != null)
        .length;
    final totalCount = _mappingEntries.length;

    return AppBar(
      backgroundColor: AppTheme.darkBackground,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'EPG Mapping',
            style: AppTheme.darkTheme.textTheme.headlineMedium
                ?.copyWith(color: Colors.white),
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

  Widget _buildControls() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          // Search bar
          TextField(
            decoration: InputDecoration(
              hintText: 'Search channels...',
              prefixIcon: Icon(Icons.search, color: AppColors.textSecondary),
              filled: true,
              fillColor: AppColors.cardDark,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
            style: AppTheme.darkTheme.textTheme.bodyLarge,
            onChanged: (value) {
              setState(() {
                _searchQuery = value;
                _applyFilters();
              });
            },
          ),
          SizedBox(height: 12),

          // Filter chips
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildFilterChip('All', MatchFilter.all),
                _buildFilterChip('Matched', MatchFilter.matched),
                _buildFilterChip('Unmatched', MatchFilter.unmatched),
                _buildFilterChip('Low Confidence', MatchFilter.lowConfidence),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterChip(String label, MatchFilter filter) {
    final isSelected = _currentFilter == filter;
    return Padding(
      padding: EdgeInsets.only(right: 8),
      child: FilterChip(
        label: Text(label),
        selected: isSelected,
        onSelected: (selected) {
          setState(() {
            _currentFilter = filter;
            _applyFilters();
          });
        },
        backgroundColor: AppColors.cardDark,
        selectedColor: AppColors.primary.withAlpha((0.3 * 255).round()),
        checkmarkColor: AppColors.primary,
      ),
    );
  }

  Widget _buildLoadingState() {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              color: AppColors.progressForeground,
            ),
            SizedBox(height: 16),
            Text(
              'Loading EPG data...',
              style: AppTheme.darkTheme.textTheme.bodyLarge?.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMappingGrid() {
    return Expanded(
      child: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: _getCrossAxisCount(),
          childAspectRatio: 1.5,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: _filteredEntries.length,
        itemBuilder: (context, index) {
          final entry = _filteredEntries[index];
          return _buildChannelMappingCard(entry);
        },
      ),
    );
  }

  int _getCrossAxisCount() {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth > 1200) return 4;
    if (screenWidth > 800) return 3;
    return 2;
  }

  Widget _buildChannelMappingCard(ChannelMappingEntry entry) {
    final isSelected = _selectedChannelIds.contains(
      entry.channel.tvgId ?? entry.channel.id,
    );

    return Card(
      color: AppTheme.sidebarBackground,
      elevation: isSelected ? 4 : 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: isSelected
            ? BorderSide(color: AppTheme.primaryBlue, width: 2)
            : BorderSide.none,
      ),
      child: InkWell(
        onTap: () => _showChannelMappingDialog(entry),
        onLongPress: () => _toggleChannelSelection(entry),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      entry.channel.name,
                      style: AppTheme.darkTheme.textTheme.titleMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  _buildMatchStatusIcon(entry),
                  Checkbox(
                    value: isSelected,
                    onChanged: (value) => _toggleChannelSelection(entry),
                    activeColor: AppColors.primary,
                  ),
                ],
              ),
              SizedBox(height: 8),
              if (entry.channel.tvgId != null) ...[
                Text(
                  'ID: ${entry.channel.tvgId}',
                  style: AppTheme.darkTheme.textTheme.bodySmall?.copyWith(
                    color: AppColors.textSecondary,
                    fontFamily: 'monospace',
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4),
              ],
              Text(
                'Group: ${entry.channel.groupTitle ?? 'Unknown'}',
                style: AppTheme.darkTheme.textTheme.bodySmall?.copyWith(
                  color: AppColors.textSecondary,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 8),
              _buildMatchStatus(entry),
              SizedBox(height: 4),
              _buildConfidenceBar(entry.confidence),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMatchStatusIcon(ChannelMappingEntry entry) {
    if (entry.hasEpgData || entry.currentMapping != null) {
      return Icon(Icons.check_circle, color: Colors.green, size: 20);
    } else if (entry.confidence > 0.5) {
      return Icon(Icons.help, color: Colors.orange, size: 20);
    } else {
      return Icon(Icons.error, color: Colors.red, size: 20);
    }
  }

  Widget _buildMatchStatus(ChannelMappingEntry entry) {
    if (entry.hasEpgData || entry.currentMapping != null) {
      return Row(
        children: [
          Icon(Icons.check, color: Colors.green, size: 16),
          SizedBox(width: 4),
          Text(
            'Matched',
            style: AppTheme.darkTheme.textTheme.bodySmall
                ?.copyWith(color: Colors.green),
          ),
        ],
      );
    } else if (entry.confidence > 0.5) {
      return Row(
        children: [
          Icon(Icons.help_outline, color: Colors.orange, size: 16),
          SizedBox(width: 4),
          Text(
            'Needs Review',
            style: AppTheme.darkTheme.textTheme.bodySmall
                ?.copyWith(color: Colors.orange),
          ),
        ],
      );
    } else {
      return Row(
        children: [
          Icon(Icons.error_outline, color: Colors.red, size: 16),
          SizedBox(width: 4),
          Text(
            'Unmatched',
            style: AppTheme.darkTheme.textTheme.bodySmall
                ?.copyWith(color: Colors.red),
          ),
        ],
      );
    }
  }

  Widget _buildConfidenceBar(double confidence) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Confidence',
              style: AppTheme.darkTheme.textTheme.bodySmall?.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
            Text(
              '${(confidence * 100).toInt()}%',
              style: AppTheme.darkTheme.textTheme.bodySmall?.copyWith(
                color: _getConfidenceColor(confidence),
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        SizedBox(height: 4),
        LinearProgressIndicator(
          value: confidence,
          backgroundColor: AppTheme.highlight,
          valueColor:
              AlwaysStoppedAnimation<Color>(_getConfidenceColor(confidence)),
        ),
      ],
    );
  }

  Color _getConfidenceColor(double confidence) {
    if (confidence >= 0.8) return Colors.green;
    if (confidence >= 0.6) return Colors.orange;
    return Colors.red;
  }

  Widget _buildBottomBar() {
    final selectedCount = _selectedChannelIds.length;

    if (selectedCount == 0) {
      return SizedBox.shrink();
    }

    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.sidebarBackground,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              '$selectedCount channel${selectedCount > 1 ? 's' : ''} selected',
              style: AppTheme.darkTheme.textTheme.bodyLarge?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ElevatedButton.icon(
            onPressed: _bulkAutoMap,
            icon: Icon(Icons.auto_fix_high),
            label: Text('Auto Map'),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: Colors.white,
            ),
          ),
          SizedBox(width: 12),
          ElevatedButton.icon(
            onPressed: _bulkClearMapping,
            icon: Icon(Icons.clear),
            label: Text('Clear'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  void _toggleChannelSelection(ChannelMappingEntry entry) {
    final channelId = entry.channel.tvgId ?? entry.channel.id;
    setState(() {
      if (_selectedChannelIds.contains(channelId)) {
        _selectedChannelIds.remove(channelId);
      } else {
        _selectedChannelIds.add(channelId);
      }
    });
  }

  void _bulkAutoMap() async {
    final entries = _mappingEntries
        .where((e) =>
            _selectedChannelIds.contains(e.channel.tvgId ?? e.channel.id))
        .where((e) => e.confidence > 0.7)
        .toList();

    if (entries.isEmpty) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content:
                Text('No channels with sufficient confidence for auto-mapping'),
            backgroundColor: Colors.orange,
          ),
        );
      }
      return;
    }

    for (final entry in entries) {
      final suggestions = _epgService.getSuggestedMatches(
        entry.channel.tvgId ?? entry.channel.id,
        entry.channel.name,
        limit: 1,
      );

      if (suggestions.isNotEmpty) {
        await _epgService.setManualMapping(
          entry.channel.tvgId ?? entry.channel.id,
          suggestions.first.key,
        );
      }
    }

    _selectedChannelIds.clear();
    await _initializeMapping();

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Auto-mapped ${entries.length} channels'),
          backgroundColor: Colors.green,
        ),
      );
    }
  }

  void _bulkClearMapping() async {
    for (final channelId in _selectedChannelIds) {
      await _epgService.removeManualMapping(channelId);
    }

    _selectedChannelIds.clear();
    await _initializeMapping();

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Cleared mappings for selected channels'),
          backgroundColor: Colors.blue,
        ),
      );
    }
  }

  void _showChannelMappingDialog(ChannelMappingEntry entry) {
    showDialog(
      context: context,
      builder: (context) => ChannelMappingDialog(
        entry: entry,
        epgService: _epgService,
      ),
    ).then((_) => _initializeMapping());
  }

  void _showAnalyticsDialog() {
    showDialog(
      context: context,
      builder: (context) => EpgAnalyticsDialog(
        mappingEntries: _mappingEntries,
        epgService: _epgService,
      ),
    );
  }
}

class ChannelMappingEntry {
  final Channel channel;
  final String? currentMapping;
  final bool hasEpgData;
  final double confidence;
  final List<MapEntry<String, double>> suggestedMatches;

  ChannelMappingEntry({
    required this.channel,
    required this.currentMapping,
    required this.hasEpgData,
    required this.confidence,
    required this.suggestedMatches,
  });
}

enum MatchFilter {
  all,
  matched,
  unmatched,
  lowConfidence,
}
