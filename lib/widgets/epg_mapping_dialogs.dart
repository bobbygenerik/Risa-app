import 'package:flutter/material.dart';
import '../models/channel.dart';
import '../services/incremental_epg_service.dart';
import '../utils/app_colors.dart';
import '../utils/app_theme.dart';
import '../utils/debug_helper.dart';
import '../utils/snackbar_utils.dart';

class ChannelMappingDialog extends StatefulWidget {
  final dynamic entry; // ChannelMappingEntry
  final IncrementalEpgService epgService;

  const ChannelMappingDialog({
    super.key,
    required this.entry,
    required this.epgService,
  });

  @override
  State<ChannelMappingDialog> createState() => _ChannelMappingDialogState();
}

class _ChannelMappingDialogState extends State<ChannelMappingDialog> {
  String? _selectedEpgId;
  List<MapEntry<String, double>> _suggestions = [];
  String _searchQuery = '';
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadSuggestions();
  }

  void _loadSuggestions() async {
    setState(() => _isLoading = true);

    try {
      final entry = widget.entry;
      final channel = entry.channel as Channel;
      final suggestions = widget.epgService.getSuggestedMatches(
        channel.epgLookupId,
        channel.epgLookupName,
        limit: 10,
      );

      if (mounted) {
        setState(() {
          _suggestions = suggestions;
          _isLoading = false;
        });
      }
    } catch (e) {
      debugLog('Failed to load suggestions: $e');
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final entry = widget.entry;

    return Dialog(
      backgroundColor: AppTheme.dialogBackground,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.8,
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Map Channel',
                        style: AppTheme.darkTheme.textTheme.headlineMedium
                            ?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        entry.channel.name,
                        style: AppTheme.darkTheme.textTheme.bodyLarge?.copyWith(
                          color: AppColors.textSecondary,
                        ),
                      ),
                      if (entry.channel.tvgId != null) ...[
                        SizedBox(height: 4),
                        Text(
                          'ID: ${entry.channel.tvgId}',
                          style:
                              AppTheme.darkTheme.textTheme.bodySmall?.copyWith(
                            color: AppColors.textSecondary,
                            fontFamily: 'monospace',
                          ),
                        ),
                      ],
                      SizedBox(height: 4),
                      Text(
                        'Group: ${entry.channel.groupTitle ?? 'Unknown'}',
                        style: AppTheme.darkTheme.textTheme.bodySmall?.copyWith(
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: Icon(Icons.close, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 24),

            // Search bar
            TextField(
              decoration: InputDecoration(
                hintText: 'Search EPG channels...',
                prefixIcon: Icon(Icons.search, color: AppColors.textSecondary),
                filled: true,
                fillColor: AppColors.cardDark,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
              style: AppTheme.darkTheme.textTheme.bodyLarge,
              onChanged: (value) {
                setState(() => _searchQuery = value);
              },
            ),
            SizedBox(height: 16),

            // Current mapping status
            if (entry.currentMapping != null || entry.hasEpgData) ...[
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.green.withAlpha((0.1 * 255).round()),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                      color: Colors.green.withAlpha((0.3 * 255).round())),
                ),
                child: Row(
                  children: [
                    Icon(Icons.check_circle, color: Colors.green),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        entry.currentMapping != null
                            ? 'Currently mapped to: ${entry.currentMapping}'
                            : 'Automatically matched via fuzzy logic',
                        style:
                            AppTheme.darkTheme.textTheme.bodyMedium?.copyWith(
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
            ],

            // Suggestions list
            Expanded(
              child: _isLoading
                  ? Center(
                      child:
                          CircularProgressIndicator(color: AppColors.primary))
                  : _buildSuggestionsList(),
            ),

            // Actions
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Cancel'),
                ),
                SizedBox(width: 12),
                if (_selectedEpgId != null) ...[
                  OutlinedButton(
                    onPressed: () => _clearMapping(),
                    child: Text('Clear Mapping'),
                  ),
                  SizedBox(width: 12),
                  ElevatedButton(
                    onPressed: () => _applyMapping(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: Colors.white,
                    ),
                    child: Text('Apply Mapping'),
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSuggestionsList() {
    final filteredSuggestions = _searchQuery.isEmpty
        ? _suggestions
        : _suggestions.where((suggestion) {
            return suggestion.key
                .toLowerCase()
                .contains(_searchQuery.toLowerCase());
          }).toList();

    if (filteredSuggestions.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.search_off, size: 64, color: AppColors.textSecondary),
            SizedBox(height: 16),
            Text(
              _searchQuery.isEmpty
                  ? 'No suggestions available'
                  : 'No matches found',
              style: AppTheme.darkTheme.textTheme.bodyLarge?.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
      );
    }

    return ListView.separated(
      itemCount: filteredSuggestions.length,
      separatorBuilder: (context, index) => SizedBox(height: 8),
      itemBuilder: (context, index) {
        final suggestion = filteredSuggestions[index];
        final isSelected = _selectedEpgId == suggestion.key;

        return InkWell(
          onTap: () {
            setState(() {
              _selectedEpgId = suggestion.key;
            });
          },
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: isSelected
                  ? AppColors.primary.withAlpha((0.2 * 255).round())
                  : AppTheme.highlight,
              borderRadius: BorderRadius.circular(8),
              border: isSelected
                  ? Border.all(color: AppColors.primary, width: 2)
                  : Border.all(color: Colors.transparent),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Icon(
                        isSelected
                            ? Icons.radio_button_checked
                            : Icons.radio_button_unchecked,
                        color: isSelected ? AppColors.primary : Colors.grey,
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          suggestion.key,
                          style:
                              AppTheme.darkTheme.textTheme.bodyLarge?.copyWith(
                            color: Colors.white,
                            fontWeight: isSelected
                                ? FontWeight.w600
                                : FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _applyMapping() async {
    if (_selectedEpgId == null) return;

    try {
      final entry = widget.entry;
      final channel = entry.channel as Channel;
      await widget.epgService.setManualMapping(
        channel.epgLookupId,
        _selectedEpgId!,
      );

      if (!mounted) return;
      Navigator.of(context).pop(true);
      SnackbarUtils.showSuccess(context, 'Mapping applied successfully');
    } catch (e) {
      if (mounted) {
        SnackbarUtils.showError(context, 'Failed to apply mapping: $e');
      }
    }
  }

  void _clearMapping() async {
    try {
      final entry = widget.entry;
      final channel = entry.channel as Channel;
      await widget.epgService.removeManualMapping(
        channel.epgLookupId,
      );

      if (!mounted) return;
      Navigator.of(context).pop(true);
      SnackbarUtils.showInfo(context, 'Mapping cleared successfully');
    } catch (e) {
      if (mounted) {
        SnackbarUtils.showError(context, 'Failed to clear mapping: $e');
      }
    }
  }
}

class EpgAnalyticsDialog extends StatelessWidget {
  final List<dynamic> mappingEntries; // List of ChannelMappingEntry
  final IncrementalEpgService epgService;

  const EpgAnalyticsDialog({
    super.key,
    required this.mappingEntries,
    required this.epgService,
  });

  @override
  Widget build(BuildContext context) {
    final analytics = _calculateAnalytics();

    return Dialog(
      backgroundColor: AppTheme.dialogBackground,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.8,
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                Expanded(
                  child: Text(
                    'EPG Analytics',
                    style:
                        AppTheme.darkTheme.textTheme.headlineMedium?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: Icon(Icons.close, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 24),

            // Overview stats
            _buildOverviewStats(analytics),
            SizedBox(height: 24),

            // Detailed breakdown
            Expanded(
              child: _buildDetailedBreakdown(analytics),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOverviewStats(Map<String, dynamic> analytics) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.highlight,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Overview',
            style: AppTheme.darkTheme.textTheme.titleLarge?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: _buildStatCard(
                  'Total Channels',
                  '${analytics['total']}',
                  Icons.list,
                  Colors.blue,
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: _buildStatCard(
                  'Matched',
                  '${analytics['matched']}',
                  Icons.check_circle,
                  Colors.green,
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: _buildStatCard(
                  'Unmatched',
                  '${analytics['unmatched']}',
                  Icons.error,
                  Colors.red,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: _buildStatCard(
                  'Match Rate',
                  '${analytics['matchRate'].toInt()}%',
                  Icons.trending_up,
                  AppColors.primary,
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: _buildStatCard(
                  'Avg Confidence',
                  '${analytics['avgConfidence'].toInt()}%',
                  Icons.analytics,
                  Colors.orange,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard(
      String label, String value, IconData icon, Color color) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withAlpha((0.1 * 255).round()),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withAlpha((0.3 * 255).round())),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: color, size: 20),
              SizedBox(width: 8),
              Text(
                value,
                style: AppTheme.darkTheme.textTheme.titleLarge?.copyWith(
                  color: color,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(height: 4),
          Text(
            label,
            style: AppTheme.darkTheme.textTheme.bodySmall?.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailedBreakdown(Map<String, dynamic> analytics) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Confidence Distribution',
          style: AppTheme.darkTheme.textTheme.titleLarge?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 16),

        // High confidence
        _buildConfidenceGroup('High Confidence (80%+)',
            analytics['highConfidence'], Colors.green),
        SizedBox(height: 8),

        // Medium confidence
        _buildConfidenceGroup('Medium Confidence (60-79%)',
            analytics['mediumConfidence'], Colors.orange),
        SizedBox(height: 8),

        // Low confidence
        _buildConfidenceGroup(
            'Low Confidence (<60%)', analytics['lowConfidence'], Colors.red),
        SizedBox(height: 16),

        // Groups analysis
        Text(
          'Groups Analysis',
          style: AppTheme.darkTheme.textTheme.titleLarge?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 16),
        Expanded(
          child: _buildGroupsList(analytics['groupStats']),
        ),
      ],
    );
  }

  Widget _buildConfidenceGroup(String label, int count, Color color) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        SizedBox(width: 12),
        Text(
          label,
          style: AppTheme.darkTheme.textTheme.bodyLarge?.copyWith(
            color: Colors.white,
          ),
        ),
        Spacer(),
        Text(
          '$count channels',
          style: AppTheme.darkTheme.textTheme.bodyLarge?.copyWith(
            color: color,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _buildGroupsList(Map<String, dynamic> groupStats) {
    final sortedGroups = groupStats.entries.toList()
      ..sort((a, b) => b.value['matchRate'].compareTo(a.value['matchRate']));

    return ListView.separated(
      itemCount: sortedGroups.length,
      separatorBuilder: (context, index) => SizedBox(height: 8),
      itemBuilder: (context, index) {
        final group = sortedGroups[index];
        final stats = group.value;

        return Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: AppTheme.highlight,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      group.key,
                      style: AppTheme.darkTheme.textTheme.bodyLarge?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '${stats['matched']}/${stats['total']} matched (${stats['matchRate'].toInt()}%)',
                      style: AppTheme.darkTheme.textTheme.bodySmall?.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 60,
                height: 6,
                decoration: BoxDecoration(
                  color: AppTheme.divider,
                  borderRadius: BorderRadius.circular(3),
                ),
                child: LinearProgressIndicator(
                  value: stats['matchRate'] / 100,
                  backgroundColor: Colors.transparent,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    _getGroupColor(stats['matchRate']),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Color _getGroupColor(double matchRate) {
    if (matchRate >= 80) return Colors.green;
    if (matchRate >= 60) return Colors.orange;
    return Colors.red;
  }

  Map<String, dynamic> _calculateAnalytics() {
    final total = mappingEntries.length;
    final matched = mappingEntries
        .where((e) => e.hasEpgData || e.currentMapping != null)
        .length;
    final unmatched = total - matched;
    final matchRate = total > 0 ? (matched / total) * 100 : 0.0;

    final avgConfidence = mappingEntries.isNotEmpty
        ? mappingEntries.map((e) => e.confidence).reduce((a, b) => a + b) /
            mappingEntries.length
        : 0.0;

    final highConfidence =
        mappingEntries.where((e) => e.confidence >= 0.8).length;
    final mediumConfidence = mappingEntries
        .where((e) => e.confidence >= 0.6 && e.confidence < 0.8)
        .length;
    final lowConfidence =
        mappingEntries.where((e) => e.confidence < 0.6).length;

    // Group statistics
    final groupStats = <String, dynamic>{};
    for (final entry in mappingEntries) {
      final group = entry.channel.groupTitle ?? 'Unknown';
      if (!groupStats.containsKey(group)) {
        groupStats[group] = {'matched': 0, 'total': 0};
      }
      groupStats[group]['total']++;
      if (entry.hasEpgData || entry.currentMapping != null) {
        groupStats[group]['matched']++;
      }
    }

    // Calculate match rates for groups
    groupStats.forEach((group, stats) {
      stats['matchRate'] =
          stats['total'] > 0 ? (stats['matched'] / stats['total']) * 100 : 0.0;
    });

    return {
      'total': total,
      'matched': matched,
      'unmatched': unmatched,
      'matchRate': matchRate,
      'avgConfidence': avgConfidence * 100,
      'highConfidence': highConfidence,
      'mediumConfidence': mediumConfidence,
      'lowConfidence': lowConfidence,
      'groupStats': groupStats,
    };
  }
}
