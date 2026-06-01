part of '../epg_mapping_screen.dart';

extension EpgMappingUi on _EpgMappingScreenState {
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
            _updateEpgMappingState(() {
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
        _updateEpgMappingState(() {
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
          CircularProgressIndicator(color: AppColors.progressForeground),
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
  final isSelected = _selectedChannelIds.contains(entry.channel.epgLookupId);

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
          style: AppTheme.darkTheme.textTheme.bodySmall?.copyWith(
            color: Colors.green,
          ),
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
          style: AppTheme.darkTheme.textTheme.bodySmall?.copyWith(
            color: Colors.orange,
          ),
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
          style: AppTheme.darkTheme.textTheme.bodySmall?.copyWith(
            color: Colors.red,
          ),
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
        valueColor: AlwaysStoppedAnimation<Color>(
          _getConfidenceColor(confidence),
        ),
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
  final channelId = entry.channel.epgLookupId;
  _updateEpgMappingState(() {
    if (_selectedChannelIds.contains(channelId)) {
      _selectedChannelIds.remove(channelId);
    } else {
      _selectedChannelIds.add(channelId);
    }
  });
}

void _bulkAutoMap() async {
  // ⚡ Bolt: Performance Optimization
  // Fused chained `.where(...).where(...).toList()` into a single loop
  // to avoid intermediate iterable allocations during bulk operations.
  final result = <ChannelMappingEntry>[];
  final sortedEntries = _getSortedMappingEntries;
  for (int i = 0; i < sortedEntries.length; i++) {
    final entry = sortedEntries[i];
    if (_selectedChannelIds.contains(entry.channel.epgLookupId) &&
        entry.confidence > 0.7) {
      result.add(entry);
    }
  }

  if (result.isEmpty) {
    if (mounted) {
      SnackbarUtils.showWarning(
        context,
        'No channels with sufficient confidence for auto-mapping',
      );
    }
    return;
  }

  for (final entry in result) {
    final suggestions = _epgService.getSuggestedMatches(
      entry.channel.epgLookupId,
      entry.channel.epgLookupName,
      limit: 1,
    );

    if (suggestions.isNotEmpty) {
      await _epgService.setManualMapping(
        entry.channel.epgLookupId,
        suggestions.first.key,
      );
    }
  }

  _selectedChannelIds.clear();
  await _initializeMapping();

  if (mounted) {
    SnackbarUtils.showSuccess(
      context,
      'Auto-mapped ${result.length} channels',
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
    SnackbarUtils.showInfo(context, 'Cleared mappings for selected channels');
  }
}

void _showChannelMappingDialog(ChannelMappingEntry entry) {
  showDialog(
    context: context,
    builder: (context) =>
        ChannelMappingDialog(entry: entry, epgService: _epgService),
  ).then((_) => _initializeMapping());
}

void _showAnalyticsDialog() {
  showDialog(
    context: context,
    builder: (context) => EpgAnalyticsDialog(
      mappingEntries: _getSortedMappingEntries,
      epgService: _epgService,
    ),
  );
}
}
