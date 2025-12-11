import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:iptv_player/services/epg_service.dart';

class EpgManagerScreen extends StatefulWidget {
  const EpgManagerScreen({super.key});

  @override
  State<EpgManagerScreen> createState() => _EpgManagerScreenState();
}

class _EpgManagerScreenState extends State<EpgManagerScreen> {
  bool _isLoading = false;
  String? _statusMessage;

  Future<void> _forceRefreshAll() async {
    setState(() {
      _isLoading = true;
      _statusMessage = 'Force refreshing all EPG sources...';
    });

    try {
      final epgService = Provider.of<EpgService>(context, listen: false);
      await epgService.loadEpg();
      _showMessage('All EPG sources refreshed successfully!');
    } catch (e) {
      _showMessage('Failed to refresh EPG: $e');
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
          _statusMessage = null;
        });
      }
    }
  }

  Future<void> _rebuildChannelMappings() async {
    setState(() {
      _isLoading = true;
      _statusMessage = 'Rebuilding channel mappings...';
    });

    try {
      final epgService = Provider.of<EpgService>(context, listen: false);
      // Rebuild mappings by clearing cache and reloading
      await epgService.clearCache();
      await epgService.loadEpg();
      _showMessage('Channel mappings rebuilt successfully!');
    } catch (e) {
      _showMessage('Failed to rebuild mappings: $e');
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
          _statusMessage = null;
        });
      }
    }
  }

  Future<void> _clearAllEpgData() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0xFF050710),
        title: const Text('Clear All EPG Data', style: TextStyle(color: AppTheme.textPrimary)),
        content: const Text(
          'This will remove all EPG data and channel mappings. You will need to reload EPG from settings.',
          style: TextStyle(color: AppTheme.textSecondary),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel', style: TextStyle(color: AppTheme.textSecondary)),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Clear All', style: TextStyle(color: AppTheme.accentRed)),
          ),
        ],
      ),
    );

    if (confirmed == true && mounted) {
      final epgService = Provider.of<EpgService>(context, listen: false);
      setState(() {
        _isLoading = true;
        _statusMessage = 'Clearing all EPG data...';
      });

      try {
        await epgService.clearCache();
        if (mounted) {
          _showMessage('All EPG data cleared successfully!');
        }
      } catch (e) {
        if (mounted) {
          _showMessage('Failed to clear EPG data: $e');
        }
      } finally {
        if (mounted) {
          setState(() {
            _isLoading = false;
            _statusMessage = null;
          });
        }
      }
    }
  }

  void _showMessage(String message) {
    if (mounted) {
      showAppSnackBar(
        context,
        SnackBar(content: Text(message)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF050710),
      body: Column(
        children: [
          // Header
          Container(
            height: 80,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                IconButton(
                  onPressed: () => context.pop(),
                  icon: const Icon(Icons.arrow_back, color: AppTheme.textPrimary),
                ),
                const SizedBox(width: 16),
                Text(
                  'EPG Manager',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: AppTheme.textPrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          
          // Content
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Status Card
                  Consumer<EpgService>(
                    builder: (context, epgService, _) {
                      return _buildStatusCard(epgService);
                    },
                  ),
                  
                  const SizedBox(height: 24),
                  
                  // Advanced Management Section
                  _buildAdvancedActionsSection(),
                  
                  const SizedBox(height: 24),
                  
                  // Channel Mapping Section
                  _buildChannelMappingSection(),
                  
                  const SizedBox(height: 24),
                  
                  // Maintenance Section
                  _buildMaintenanceSection(),
                  
                  if (_isLoading && _statusMessage != null) ...[
                    const SizedBox(height: 24),
                    _buildLoadingCard(),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusCard(EpgService epgService) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                epgService.hasData ? Icons.check_circle : Icons.warning_amber,
                color: epgService.hasData ? AppTheme.accentGreen : AppTheme.accentOrange,
                size: 20,
              ),
              const SizedBox(width: 12),
              Text(
                'EPG Status',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.textPrimary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          _buildStatusRow('Primary Channels', '${epgService.epgData.length}'),
          _buildStatusRow('Secondary Channels', '${epgService.secondaryEpgData.length}'),
          _buildStatusRow('Total Channels', '${epgService.totalChannelCount}'),
          if (epgService.cacheAgeMinutes != null)
            _buildStatusRow('Cache Age', '${epgService.cacheAgeMinutes} minutes'),
          if (epgService.error != null)
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                'Error: ${epgService.error}',
                style: const TextStyle(color: AppTheme.accentRed, fontSize: 12),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildStatusRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(color: AppTheme.textSecondary, fontSize: 14),
          ),
          Text(
            value,
            style: const TextStyle(color: AppTheme.textPrimary, fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  Widget _buildAdvancedActionsSection() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Advanced EPG Management',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppTheme.textPrimary,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: _isLoading ? null : _forceRefreshAll,
                  icon: const Icon(Icons.refresh, size: 18),
                  label: const Text('Force Refresh All'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.primaryBlue,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () => context.push('/epg-diagnostic'),
                  icon: const Icon(Icons.analytics, size: 18),
                  label: const Text('Diagnostics'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1A1A1A),
                    foregroundColor: AppTheme.textPrimary,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildChannelMappingSection() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Channel Mapping',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppTheme.textPrimary,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: _isLoading ? null : _rebuildChannelMappings,
                  icon: const Icon(Icons.build, size: 18),
                  label: const Text('Rebuild Mappings'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1A1A1A),
                    foregroundColor: AppTheme.textPrimary,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () => context.push('/channel-mapping'),
                  icon: const Icon(Icons.link, size: 18),
                  label: const Text('Manual Mapping'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1A1A1A),
                    foregroundColor: AppTheme.textPrimary,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMaintenanceSection() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Maintenance',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppTheme.textPrimary,
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: _isLoading ? null : _clearAllEpgData,
            icon: const Icon(Icons.delete_forever, size: 18),
            label: const Text('Clear All EPG Data'),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppTheme.accentRed.withValues(alpha: 0.2),
              foregroundColor: AppTheme.accentRed,
              padding: const EdgeInsets.symmetric(vertical: 12),
              minimumSize: const Size(double.infinity, 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoadingCard() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppTheme.primaryBlue.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppTheme.primaryBlue.withValues(alpha: 0.3)),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              valueColor: AlwaysStoppedAnimation<Color>(AppTheme.primaryBlue),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              _statusMessage!,
              style: const TextStyle(
                color: AppTheme.textPrimary,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}