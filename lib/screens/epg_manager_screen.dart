import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:iptv_player/services/epg_service.dart';

class EpgManagerScreen extends StatefulWidget {
  const EpgManagerScreen({super.key});

  @override
  State<EpgManagerScreen> createState() => _EpgManagerScreenState();
}

class _EpgManagerScreenState extends State<EpgManagerScreen> {
  final TextEditingController _primaryUrlController = TextEditingController();
  final TextEditingController _secondaryUrlController = TextEditingController();
  
  bool _isLoading = false;
  String? _statusMessage;

  @override
  void initState() {
    super.initState();
    _loadUrls();
  }

  @override
  void dispose() {
    _primaryUrlController.dispose();
    _secondaryUrlController.dispose();
    super.dispose();
  }

  Future<void> _loadUrls() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _primaryUrlController.text = prefs.getString('custom_epg_url') ?? '';
      _secondaryUrlController.text = prefs.getString('secondary_epg_url') ?? '';
    });
  }

  Future<void> _saveUrls() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('custom_epg_url', _primaryUrlController.text);
    await prefs.setString('secondary_epg_url', _secondaryUrlController.text);
  }

  Future<void> _updatePrimaryEpg() async {
    if (_primaryUrlController.text.trim().isEmpty) {
      _showMessage('Please enter a primary EPG URL');
      return;
    }

    setState(() {
      _isLoading = true;
      _statusMessage = 'Updating primary EPG...';
    });

    try {
      await _saveUrls();
      if (!mounted) return;
      final epgService = Provider.of<EpgService>(context, listen: false);
      await epgService.loadEpgFromUrl(_primaryUrlController.text.trim(), forceRefresh: true);
      _showMessage('Primary EPG updated successfully!');
    } catch (e) {
      _showMessage('Failed to update primary EPG: $e');
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
          _statusMessage = null;
        });
      }
    }
  }

  Future<void> _updateSecondaryEpg() async {
    if (_secondaryUrlController.text.trim().isEmpty) {
      _showMessage('Please enter a secondary EPG URL');
      return;
    }

    setState(() {
      _isLoading = true;
      _statusMessage = 'Updating secondary EPG...';
    });

    try {
      await _saveUrls();
      if (!mounted) return;
      final epgService = Provider.of<EpgService>(context, listen: false);
      await epgService.loadSecondaryEpgFromUrl(_secondaryUrlController.text.trim(), forceRefresh: true);
      _showMessage('Secondary EPG updated successfully!');
    } catch (e) {
      _showMessage('Failed to update secondary EPG: $e');
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
          _statusMessage = null;
        });
      }
    }
  }

  Future<void> _clearEpgCache() async {
    setState(() {
      _isLoading = true;
      _statusMessage = 'Clearing EPG cache...';
    });

    try {
      final epgService = Provider.of<EpgService>(context, listen: false);
      await epgService.clearCache();
      _showMessage('EPG cache cleared successfully!');
    } catch (e) {
      _showMessage('Failed to clear EPG cache: $e');
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
          _statusMessage = null;
        });
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
                  
                  // Primary EPG Section
                  _buildEpgSection(
                    title: 'Primary EPG Source',
                    controller: _primaryUrlController,
                    onUpdate: _updatePrimaryEpg,
                    icon: Icons.tv,
                  ),
                  
                  const SizedBox(height: 24),
                  
                  // Secondary EPG Section
                  _buildEpgSection(
                    title: 'Secondary EPG Source',
                    controller: _secondaryUrlController,
                    onUpdate: _updateSecondaryEpg,
                    icon: Icons.tv_outlined,
                  ),
                  
                  const SizedBox(height: 24),
                  
                  // Actions Section
                  _buildActionsSection(),
                  
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
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white.withValues(alpha: 0.1)),
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

  Widget _buildEpgSection({
    required String title,
    required TextEditingController controller,
    required VoidCallback onUpdate,
    required IconData icon,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white.withValues(alpha: 0.1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: AppTheme.primaryBlue, size: 20),
              const SizedBox(width: 12),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.textPrimary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          TextField(
            controller: controller,
            style: const TextStyle(color: AppTheme.textPrimary),
            decoration: InputDecoration(
              hintText: 'Enter EPG URL (e.g., http://example.com/epg.xml)',
              hintStyle: const TextStyle(color: AppTheme.textSecondary),
              prefixIcon: const Icon(Icons.link, size: 18, color: AppTheme.textSecondary),
              filled: true,
              fillColor: Colors.white.withValues(alpha: 0.05),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.1)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.1)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.1)),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: _isLoading ? null : onUpdate,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.primaryBlue,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text('Update EPG'),
                ),
              ),
              const SizedBox(width: 12),
              ElevatedButton(
                onPressed: () => controller.clear(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white.withValues(alpha: 0.1),
                  foregroundColor: AppTheme.textPrimary,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text('Clear'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionsSection() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white.withValues(alpha: 0.1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Actions',
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
                  onPressed: _isLoading ? null : _clearEpgCache,
                  icon: const Icon(Icons.clear_all, size: 18),
                  label: const Text('Clear Cache'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white.withValues(alpha: 0.1),
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
                  onPressed: () => context.push('/epg-diagnostic'),
                  icon: const Icon(Icons.analytics, size: 18),
                  label: const Text('Diagnostics'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white.withValues(alpha: 0.1),
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