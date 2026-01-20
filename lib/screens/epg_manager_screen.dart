import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/widgets/brand_button.dart';

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
      final epgService =
          Provider.of<IncrementalEpgService>(context, listen: false);
      await epgService.initialize();
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
      final epgService =
          Provider.of<IncrementalEpgService>(context, listen: false);
      // Rebuild mappings by clearing cache and reloading
      await epgService.initialize();
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
    final cancelFocus = FocusNode(debugLabel: 'EpgClearCancel');
    final confirmFocus = FocusNode(debugLabel: 'EpgClearConfirm');
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (cancelFocus.canRequestFocus) {
            cancelFocus.requestFocus();
          }
        });
        return AlertDialog(
          backgroundColor: AppTheme.darkBackground,
          title: const Text('Clear All EPG Data',
              style: TextStyle(color: AppTheme.textPrimary)),
          content: const Text(
            'This will clear cached EPG programs and channel mappings. Your EPG URLs will be kept.',
            style: TextStyle(color: AppTheme.textSecondary),
          ),
          actions: [
            BrandSecondaryButton(
              focusNode: cancelFocus,
              onPressed: () => Navigator.of(context).pop(false),
              label: 'Cancel',
            ),
            BrandPrimaryButton(
              focusNode: confirmFocus,
              onPressed: () => Navigator.of(context).pop(true),
              label: 'Clear All',
            ),
          ],
        );
      },
    );
    cancelFocus.dispose();
    confirmFocus.dispose();

    if (confirmed == true && mounted) {
      setState(() {
        _isLoading = true;
        _statusMessage = 'Clearing all EPG data...';
      });

      try {
        final epgService =
            Provider.of<IncrementalEpgService>(context, listen: false);
        await epgService.clearAllData(
          clearUrls: false,
          clearSavedPlaylists: false,
        );
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
      backgroundColor: AppTheme.darkBackground,
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
                  icon:
                      const Icon(Icons.arrow_back, color: AppTheme.textPrimary),
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
                  Consumer<IncrementalEpgService>(
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

  Widget _buildStatusCard(IncrementalEpgService epgService) {
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
                epgService.availableChannels.isNotEmpty
                    ? Icons.check_circle
                    : Icons.warning_amber,
                color: epgService.availableChannels.isNotEmpty
                    ? AppTheme.accentGreen
                    : AppTheme.accentOrange,
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
          _buildStatusRow(
              'Available Channels', '${epgService.availableChannels.length}'),
          _buildStatusRow(
              'Loaded Channels', '${epgService.loadedChannelCount}'),
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
            style: const TextStyle(
                color: AppTheme.textPrimary,
                fontSize: 14,
                fontWeight: FontWeight.w500),
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
                child: _isLoading
                    ? Container(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        child: const Center(
                          child: SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  AppTheme.primaryBlue),
                            ),
                          ),
                        ),
                      )
                    : BrandPrimaryButton(
                        onPressed: _forceRefreshAll,
                        icon: Icons.refresh,
                        label: 'Force Refresh All',
                        expand: true,
                      ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: BrandSecondaryButton(
                  onPressed: () => context.push('/epg-diagnostic'),
                  icon: Icons.analytics,
                  label: 'Diagnostics',
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
                child: _isLoading
                    ? Container(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        child: const Center(
                          child: SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  AppTheme.primaryBlue),
                            ),
                          ),
                        ),
                      )
                    : BrandSecondaryButton(
                        onPressed: _rebuildChannelMappings,
                        icon: Icons.build,
                        label: 'Rebuild Mappings',
                        expand: true,
                      ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: BrandSecondaryButton(
                  onPressed: () => context.push('/channel-mapping'),
                  icon: Icons.link,
                  label: 'Manual Mapping',
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
          _isLoading
              ? Container(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  child: const Center(
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor:
                            AlwaysStoppedAnimation<Color>(AppTheme.primaryBlue),
                      ),
                    ),
                  ),
                )
              : BrandSecondaryButton(
                  onPressed: _clearAllEpgData,
                  icon: Icons.delete_forever,
                  label: 'Clear All EPG Data',
                  expand: true,
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
        border: Border.all(color: AppTheme.focusBorder.withValues(alpha: 0.3)),
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
