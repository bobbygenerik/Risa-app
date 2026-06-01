import 'dart:async';

import 'package:flutter/material.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/no_text_selection_controls.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:iptv_player/widgets/brand_button.dart';

/// Convert EPG ID to readable display name.
String epgDisplayNameForId(String epgId) {
  String name = epgId.split('.').first;

  final patterns = {
    RegExp(r'^bbc(\d+)$', caseSensitive: false): (Match m) =>
        'BBC ${m.group(1)}',
    RegExp(r'^itv(\d+)?$', caseSensitive: false): (Match m) =>
        'ITV${m.group(1) ?? ''}',
    RegExp(r'^channel(\d+)$', caseSensitive: false): (Match m) =>
        'Channel ${m.group(1)}',
    RegExp(r'^sky(\w+)$', caseSensitive: false): (Match m) =>
        'Sky ${m.group(1)!.toUpperCase()}',
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

/// Shows EPG channel selection dialog for manual channel mapping.
Future<void> showEpgChannelSelectorDialog({
  required BuildContext context,
  required Channel channel,
  required IncrementalEpgService epgService,
  required void Function(String epgChannelId) onMappingSelected,
}) {
  final epgChannelIds = epgService.getEpgChannelIds();

  if (epgChannelIds.isEmpty) {
    showAppSnackBar(
      context,
      const SnackBar(
        content: Text(
            'No EPG data loaded. Please configure EPG URL in Settings.'),
        backgroundColor: AppTheme.accentRed,
      ),
    );
    return Future.value();
  }

  String searchQuery = '';
  final searchController = TextEditingController();

  final suggestions = epgService.getSuggestedMatches(
    channel.epgLookupId,
    channel.name,
    limit: 15,
  );

  return showDialog<void>(
    context: context,
    builder: (dialogContext) => StatefulBuilder(
      builder: (context, setDialogState) {
        List<String> filteredIds;
        final showingSuggestions = searchQuery.isEmpty;

        if (searchQuery.isEmpty) {
          final suggestedIds = <String>{};
          filteredIds = <String>[];
          for (final s in suggestions) {
            suggestedIds.add(s.key);
            filteredIds.add(s.key);
          }
          for (final id in epgChannelIds) {
            if (!suggestedIds.contains(id)) {
              filteredIds.add(id);
            }
          }
        } else {
          final queryLower = searchQuery.toLowerCase();
          filteredIds = <String>[];
          for (final id in epgChannelIds) {
            final displayName = epgDisplayNameForId(id).toLowerCase();
            final idLower = id.toLowerCase();
            if (displayName.contains(queryLower) ||
                idLower.contains(queryLower)) {
              filteredIds.add(id);
            }
          }
        }

        return AlertDialog(
          backgroundColor: AppTheme.darkBackground,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Match EPG for ${channel.name}',
                  style: const TextStyle(
                      fontSize: 18, color: AppTheme.textPrimary)),
              Text(
                'ID: ${channel.epgLookupId}',
                style: const TextStyle(
                    fontSize: 12, color: AppTheme.textSecondary),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: searchController,
                enableInteractiveSelection: false,
                selectionControls: NoTextSelectionControls(),
                showCursor: false,
                cursorColor: Colors.transparent,
                autofocus: true,
                style: const TextStyle(color: Colors.white),
                onTap: () {
                  final text = searchController.text;
                  searchController.selection =
                      TextSelection.collapsed(offset: text.length);
                },
                decoration: InputDecoration(
                  hintText: 'Search EPG channels...',
                  hintStyle:
                      TextStyle(color: Colors.white.withValues(alpha: 0.5)),
                  prefixIcon:
                      const Icon(Icons.search, color: Colors.white54),
                  isDense: true,
                  filled: true,
                  fillColor: Colors.white.withValues(alpha: 0.05),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.white.withValues(alpha: 0.2)),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: AppTheme.primaryBlue, width: 2),
                  ),
                ),
                onChanged: (value) {
                  setDialogState(() {
                    searchQuery = value;
                  });
                },
              ),
            ],
          ),
          content: SizedBox(
            width: double.maxFinite,
            height: 400,
            child: filteredIds.isEmpty
                ? Center(
                    child: Text(
                      searchQuery.isEmpty
                          ? 'No EPG channels found'
                          : 'No matches for "$searchQuery"',
                      style: const TextStyle(color: AppTheme.textSecondary),
                    ),
                  )
                : ListView.builder(
                    itemCount: filteredIds.length +
                        (showingSuggestions && suggestions.isNotEmpty ? 1 : 0),
                    itemBuilder: (context, index) {
                      if (showingSuggestions &&
                          suggestions.isNotEmpty &&
                          index == 0) {
                        return Container(
                          padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
                          child: Row(
                            children: [
                              const Icon(Icons.auto_awesome,
                                  size: 16, color: AppTheme.primaryBlue),
                              const SizedBox(width: 8),
                              Text(
                                'Suggested Matches (${suggestions.length})',
                                style: TextStyle(
                                  color: AppTheme.primaryBlue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        );
                      }

                      final adjustedIndex =
                          showingSuggestions && suggestions.isNotEmpty
                              ? index - 1
                              : index;
                      if (adjustedIndex < 0 ||
                          adjustedIndex >= filteredIds.length) {
                        return const SizedBox.shrink();
                      }

                      final epgId = filteredIds[adjustedIndex];
                      final preview = epgService.getChannelPreview(epgId);
                      final currentMapping =
                          epgService.getManualMapping(channel.epgLookupId);
                      final isCurrentlyMapped = currentMapping == epgId;
                      final isSuggested = showingSuggestions &&
                          adjustedIndex < suggestions.length;
                      final suggestionScore = isSuggested
                          ? suggestions[adjustedIndex].value
                          : 0.0;

                      final showDivider = showingSuggestions &&
                          suggestions.isNotEmpty &&
                          adjustedIndex == suggestions.length - 1;

                      return Column(
                        children: [
                          FocusableActionDetector(
                            actions: <Type, Action<Intent>>{
                              ActivateIntent: CallbackAction<ActivateIntent>(
                                onInvoke: (intent) {
                                  Navigator.pop(dialogContext);
                                  onMappingSelected(epgId);
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
                                  selectedTileColor:
                                      AppTheme.primaryBlue.withValues(
                                    alpha: 0.16,
                                  ),
                                  leading: isCurrentlyMapped
                                      ? const Icon(Icons.check_circle,
                                          color: AppTheme.accentGreen)
                                      : isSuggested
                                          ? Icon(
                                              Icons.stars,
                                              color: suggestionScore > 0.7
                                                  ? AppTheme.accentGreen
                                                  : suggestionScore > 0.4
                                                      ? AppTheme.primaryBlue
                                                      : AppTheme.textSecondary,
                                            )
                                          : const Icon(Icons.tv_outlined,
                                              color: AppTheme.textSecondary),
                                  title: Text(
                                    epgDisplayNameForId(epgId),
                                    style: TextStyle(
                                      fontWeight:
                                          isCurrentlyMapped || isSuggested
                                              ? FontWeight.bold
                                              : FontWeight.normal,
                                      color: isCurrentlyMapped
                                          ? AppTheme.accentGreen
                                          : AppTheme.textPrimary,
                                    ),
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      if (preview != null)
                                        Text(
                                          'Now: $preview',
                                          style: const TextStyle(
                                              fontSize: 12,
                                              color: AppTheme.textSecondary),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      if (isSuggested)
                                        Text(
                                          'Match: ${(suggestionScore * 100).toInt()}%',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: suggestionScore > 0.7
                                                ? AppTheme.accentGreen
                                                : AppTheme.textSecondary,
                                          ),
                                        ),
                                    ],
                                  ),
                                  onTap: () {
                                    Navigator.pop(dialogContext);
                                    onMappingSelected(epgId);
                                  },
                                );
                              },
                            ),
                          ),
                          if (showDivider)
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Divider(
                                          color: Colors.white
                                              .withValues(alpha: 0.1))),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    child: Text(
                                      'All EPG Channels',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: AppTheme.textSecondary),
                                    ),
                                  ),
                                  Expanded(
                                      child: Divider(
                                          color: Colors.white
                                              .withValues(alpha: 0.1))),
                                ],
                              ),
                            ),
                        ],
                      );
                    },
                  ),
          ),
          actions: [
            BrandSecondaryButton(
              onPressed: () => Navigator.pop(dialogContext),
              label: 'Cancel',
            ),
          ],
        );
      },
    ),
  );
}
