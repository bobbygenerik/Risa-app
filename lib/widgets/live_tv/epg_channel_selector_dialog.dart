import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/no_text_selection_controls.dart';
import 'package:iptv_player/widgets/brand_button.dart';

/// Callback for when an EPG mapping is set or removed.
typedef OnEpgMappingChanged = void Function(Channel channel, String? epgChannelId);

/// Shows the EPG channel selector dialog.
/// 
/// Returns the selected EPG channel ID, or null if cancelled.
/// If the user removes a mapping, returns an empty string.
Future<String?> showEpgChannelSelector({
  required BuildContext context,
  required Channel channel,
  VoidCallback? onMappingChanged,
}) async {
  final epgService = Provider.of<IncrementalEpgService>(context, listen: false);
  final epgChannelIds = epgService.getEpgChannelIds();

  if (epgChannelIds.isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('No EPG data loaded. Please configure EPG URL in Settings.'),
        backgroundColor: AppTheme.accentRed,
      ),
    );
    return null;
  }

  return showDialog<String>(
    context: context,
    builder: (dialogContext) => EpgChannelSelectorDialog(
      channel: channel,
      epgService: epgService,
      epgChannelIds: epgChannelIds,
    ),
  );
}

/// Dialog for selecting an EPG channel to map to a playlist channel.
class EpgChannelSelectorDialog extends StatefulWidget {
  const EpgChannelSelectorDialog({
    super.key,
    required this.channel,
    required this.epgService,
    required this.epgChannelIds,
  });

  final Channel channel;
  final IncrementalEpgService epgService;
  final List<String> epgChannelIds;

  @override
  State<EpgChannelSelectorDialog> createState() => _EpgChannelSelectorDialogState();
}

class _EpgChannelSelectorDialogState extends State<EpgChannelSelectorDialog> {
  String _searchQuery = '';
  late final TextEditingController _searchController;
  late final List<MapEntry<String, double>> _suggestions;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _suggestions = widget.epgService.getSuggestedMatches(
      widget.channel.epgLookupId,
      widget.channel.epgLookupName,
      limit: 15,
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  String get _channelId => widget.channel.epgLookupId;

  List<String> get _filteredIds {
    final showingSuggestions = _searchQuery.isEmpty;
    
    if (showingSuggestions) {
      final suggestedIds = _suggestions.map((e) => e.key).toSet();
      final otherIds = widget.epgChannelIds
          .where((id) => !suggestedIds.contains(id))
          .toList();
      return [..._suggestions.map((e) => e.key), ...otherIds];
    }
    
    return widget.epgChannelIds.where((id) {
      final displayName = _getDisplayNameForEpgId(id).toLowerCase();
      final idLower = id.toLowerCase();
      final queryLower = _searchQuery.toLowerCase();
      return displayName.contains(queryLower) || idLower.contains(queryLower);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final showingSuggestions = _searchQuery.isEmpty;
    final filteredIds = _filteredIds;

    return AlertDialog(
      backgroundColor: AppTheme.darkBackground,
      title: _buildTitle(),
      content: SizedBox(
        width: double.maxFinite,
        height: 400,
        child: filteredIds.isEmpty
            ? _buildEmptyState()
            : _buildChannelList(filteredIds, showingSuggestions),
      ),
      actions: _buildActions(),
    );
  }

  Widget _buildTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Match EPG for ${widget.channel.name}',
          style: const TextStyle(fontSize: 18, color: AppTheme.textPrimary),
        ),
        Text(
          'ID: $_channelId',
          style: const TextStyle(fontSize: 12, color: AppTheme.textSecondary),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: _searchController,
          enableInteractiveSelection: false,
          selectionControls: NoTextSelectionControls(),
          showCursor: false,
          cursorColor: Colors.transparent,
          autofocus: true,
          style: const TextStyle(color: Colors.white),
          onTap: () {
            final text = _searchController.text;
            _searchController.selection = TextSelection.collapsed(offset: text.length);
          },
          decoration: InputDecoration(
            hintText: 'Search EPG channels...',
            hintStyle: TextStyle(color: Colors.white.withValues(alpha: 0.5)),
            prefixIcon: const Icon(Icons.search, color: Colors.white54),
            isDense: true,
            filled: true,
            fillColor: Colors.white.withValues(alpha: 0.05),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.2)),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppTheme.primaryBlue, width: 2),
            ),
          ),
          onChanged: (value) {
            setState(() {
              _searchQuery = value;
            });
          },
        ),
      ],
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Text(
        _searchQuery.isEmpty
            ? 'No EPG channels found'
            : 'No matches for "$_searchQuery"',
        style: const TextStyle(color: AppTheme.textSecondary),
      ),
    );
  }

  Widget _buildChannelList(List<String> filteredIds, bool showingSuggestions) {
    final hasHeader = showingSuggestions && _suggestions.isNotEmpty;
    
    return ListView.builder(
      itemCount: filteredIds.length + (hasHeader ? 1 : 0),
      itemBuilder: (context, index) {
        if (hasHeader && index == 0) {
          return _buildSuggestionsHeader();
        }

        final adjustedIndex = hasHeader ? index - 1 : index;
        if (adjustedIndex < 0 || adjustedIndex >= filteredIds.length) {
          return const SizedBox.shrink();
        }

        final epgId = filteredIds[adjustedIndex];
        final isSuggested = showingSuggestions && adjustedIndex < _suggestions.length;
        final showDivider = showingSuggestions &&
            _suggestions.isNotEmpty &&
            adjustedIndex == _suggestions.length - 1;

        return Column(
          children: [
            _buildChannelTile(epgId, isSuggested, adjustedIndex),
            if (showDivider) _buildDivider(),
          ],
        );
      },
    );
  }

  Widget _buildSuggestionsHeader() {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
      child: Row(
        children: [
          const Icon(Icons.auto_awesome, size: 16, color: AppTheme.primaryBlue),
          const SizedBox(width: 8),
          Text(
            'Suggested Matches (${_suggestions.length})',
            style: const TextStyle(
              color: AppTheme.primaryBlue,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChannelTile(String epgId, bool isSuggested, int suggestionIndex) {
    final preview = widget.epgService.getChannelPreview(epgId);
    final currentMapping = widget.epgService.getManualMapping(_channelId);
    final isCurrentlyMapped = currentMapping == epgId;
    final suggestionScore = isSuggested ? _suggestions[suggestionIndex].value : 0.0;

    return FocusableActionDetector(
      actions: <Type, Action<Intent>>{
        ActivateIntent: CallbackAction<ActivateIntent>(
          onInvoke: (intent) {
            Navigator.pop(context, epgId);
            return null;
          },
        ),
      },
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          return ListTile(
            dense: true,
            selected: isFocused,
            selectedTileColor: AppTheme.primaryBlue.withValues(alpha: 0.16),
            leading: _buildLeadingIcon(isCurrentlyMapped, isSuggested, suggestionScore),
            title: Text(
              _getDisplayNameForEpgId(epgId),
              style: TextStyle(
                fontWeight: isCurrentlyMapped || isSuggested
                    ? FontWeight.bold
                    : FontWeight.normal,
                color: isCurrentlyMapped
                    ? AppTheme.accentGreen
                    : AppTheme.textPrimary,
              ),
            ),
            subtitle: _buildSubtitle(preview, isSuggested, suggestionScore),
            onTap: () => Navigator.pop(context, epgId),
          );
        },
      ),
    );
  }

  Widget _buildLeadingIcon(bool isCurrentlyMapped, bool isSuggested, double score) {
    if (isCurrentlyMapped) {
      return const Icon(Icons.check_circle, color: AppTheme.accentGreen);
    }
    if (isSuggested) {
      return Icon(
        Icons.stars,
        color: score > 0.7
            ? AppTheme.accentGreen
            : score > 0.4
                ? AppTheme.primaryBlue
                : AppTheme.textSecondary,
      );
    }
    return const Icon(Icons.tv_outlined, color: AppTheme.textSecondary);
  }

  Widget? _buildSubtitle(String? preview, bool isSuggested, double score) {
    if (preview == null && !isSuggested) return null;
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (preview != null)
          Text(
            'Now: $preview',
            style: const TextStyle(fontSize: 12, color: AppTheme.textSecondary),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        if (isSuggested)
          Text(
            'Match: ${(score * 100).toInt()}%',
            style: TextStyle(
              fontSize: 12,
              color: score > 0.7 ? AppTheme.accentGreen : AppTheme.textSecondary,
            ),
          ),
      ],
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(child: Divider(color: Colors.white.withValues(alpha: 0.1))),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              'All EPG Channels',
              style: TextStyle(fontSize: 12, color: AppTheme.textSecondary),
            ),
          ),
          Expanded(child: Divider(color: Colors.white.withValues(alpha: 0.1))),
        ],
      ),
    );
  }

  List<Widget> _buildActions() {
    final hasMapping = widget.epgService.hasManualMapping(_channelId);
    
    return [
      if (hasMapping)
        BrandSecondaryButton(
          onPressed: () => Navigator.pop(context, ''), // Empty string = remove
          label: 'Remove Mapping',
        ),
      BrandSecondaryButton(
        onPressed: () => Navigator.pop(context, null),
        label: 'Cancel',
      ),
    ];
  }

  /// Converts an EPG channel ID to a human-readable display name.
  String _getDisplayNameForEpgId(String epgId) {
    String name = epgId.split('.').first;
    
    final patterns = {
      RegExp(r'^bbc(\d+)$', caseSensitive: false): (Match m) => 'BBC ${m.group(1)}',
      RegExp(r'^itv(\d+)?$', caseSensitive: false): (Match m) => 'ITV${m.group(1) ?? ''}',
      RegExp(r'^channel(\d+)$', caseSensitive: false): (Match m) => 'Channel ${m.group(1)}',
      RegExp(r'^sky(\w+)$', caseSensitive: false): (Match m) => 'Sky ${m.group(1)!.toUpperCase()}',
      RegExp(r'^fox(\w+)?$', caseSensitive: false): (Match m) =>
          'FOX${m.group(1) != null ? ' ${m.group(1)!.toUpperCase()}' : ''}',
      RegExp(r'^cnn(\w+)?$', caseSensitive: false): (Match m) =>
          'CNN${m.group(1) != null ? ' ${m.group(1)!.toUpperCase()}' : ''}',
      RegExp(r'^abc(\w+)?$', caseSensitive: false): (Match m) =>
          'ABC${m.group(1) != null ? ' ${m.group(1)!.toUpperCase()}' : ''}',
      RegExp(r'^nbc(\w+)?$', caseSensitive: false): (Match m) =>
          'NBC${m.group(1) != null ? ' ${m.group(1)!.toUpperCase()}' : ''}',
      RegExp(r'^cbs(\w+)?$', caseSensitive: false): (Match m) =>
          'CBS${m.group(1) != null ? ' ${m.group(1)!.toUpperCase()}' : ''}',
    };

    for (final pattern in patterns.entries) {
      final match = pattern.key.firstMatch(name);
      if (match != null) {
        return pattern.value(match);
      }
    }

    name = name.replaceAll(RegExp(r'[_-]'), ' ');
    if (name.isNotEmpty) {
      name = name[0].toUpperCase() + name.substring(1).toLowerCase();
    }

    return name.isEmpty ? epgId : name;
  }
}
