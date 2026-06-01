part of '../epg_mapping_dialogs.dart';

class EpgAnalyticsDialog extends StatefulWidget {
  final List<dynamic> mappingEntries; // List of ChannelMappingEntry
  final IncrementalEpgService epgService;

  const EpgAnalyticsDialog({
    super.key,
    required this.mappingEntries,
    required this.epgService,
  });

  @override
  State<EpgAnalyticsDialog> createState() => _EpgAnalyticsDialogState();
}

class _EpgAnalyticsDialogState extends State<EpgAnalyticsDialog> {
  List<MapEntry<String, dynamic>>? _cachedSortedGroups;

  List<MapEntry<String, dynamic>> _getSortedGroups(
    Map<String, dynamic> groupStats,
  ) {
    if (_cachedSortedGroups != null) return _cachedSortedGroups!;
    _cachedSortedGroups = groupStats.entries.toList()
      ..sort((a, b) => b.value['matchRate'].compareTo(a.value['matchRate']));
    return _cachedSortedGroups!;
  }

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
            Expanded(child: _buildDetailedBreakdown(analytics)),
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
    String label,
    String value,
    IconData icon,
    Color color,
  ) {
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
        _buildConfidenceGroup(
          'High Confidence (80%+)',
          analytics['highConfidence'],
          Colors.green,
        ),
        SizedBox(height: 8),

        // Medium confidence
        _buildConfidenceGroup(
          'Medium Confidence (60-79%)',
          analytics['mediumConfidence'],
          Colors.orange,
        ),
        SizedBox(height: 8),

        // Low confidence
        _buildConfidenceGroup(
          'Low Confidence (<60%)',
          analytics['lowConfidence'],
          Colors.red,
        ),
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
        Expanded(child: _buildGroupsList(analytics['groupStats'])),
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
    final sortedGroups = _getSortedGroups(groupStats);

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
    // ⚡ Bolt: Performance Optimization
    // Fused 5 separate O(n) `.where()` and `.reduce()` passes over `mappingEntries` into a single loop.
    // This reduces O(5n) time complexity to O(n), eliminates intermediate iterables, and
    // prevents closure allocation inside frequent UI updates.
    final total = widget.mappingEntries.length;

    int matched = 0;
    double totalConfidence = 0.0;
    int highConfidence = 0;
    int mediumConfidence = 0;
    int lowConfidence = 0;

    for (final entry in widget.mappingEntries) {
      if (entry.hasEpgData || entry.currentMapping != null) {
        matched++;
      }

      totalConfidence += entry.confidence;

      if (entry.confidence >= 0.8) {
        highConfidence++;
      } else if (entry.confidence >= 0.6) {
        mediumConfidence++;
      } else {
        lowConfidence++;
      }
    }

    final unmatched = total - matched;
    final matchRate = total > 0 ? (matched / total) * 100 : 0.0;

    final avgConfidence = widget.mappingEntries.isNotEmpty
        ? totalConfidence / widget.mappingEntries.length
        : 0.0;

    // Group statistics
    final groupStats = <String, dynamic>{};
    for (final entry in widget.mappingEntries) {
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
