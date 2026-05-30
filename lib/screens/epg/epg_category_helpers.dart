import 'package:flutter/material.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/state/epg_screen_state.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:provider/provider.dart';

/// Category priming and initial selection for the EPG guide.
class EpgCategoryHelpers {
  EpgCategoryHelpers._();

  static Future<void> primeCategories({
    required BuildContext context,
    required bool Function() isMounted,
    required bool categoryPrimeRequested,
    required DateTime? lastCategoryPrimeAttempt,
    required void Function(bool requested, DateTime attempt) onAttempt,
    required void Function(List<String> names) onNamesLoaded,
    bool force = false,
  }) async {
    if (!force && categoryPrimeRequested) return;
    final now = DateTime.now();
    if (force &&
        lastCategoryPrimeAttempt != null &&
        now.difference(lastCategoryPrimeAttempt) <
            const Duration(seconds: 5)) {
      return;
    }
    onAttempt(true, now);
    try {
      final channelProvider =
          Provider.of<ChannelProvider>(context, listen: false);
      final categories = await channelProvider.getAllCategoryNamesAsync();
      if (!isMounted()) return;
      if (categories.isNotEmpty) {
        onNamesLoaded(List<String>.from(categories));
      }
    } catch (e) {
      debugLog('EPG Screen: Failed to prime categories: $e');
    }
  }

  static void ensureInitialCategorySelection({
    required bool Function() isMounted,
    required EPGScreenState epgState,
    required List<String> categoryNames,
  }) {
    if (!isMounted() || categoryNames.isEmpty) return;
    final selectedCategory = epgState.selectedCategory;
    final hasFavorites = epgState.epgFavoriteChannelIds.isNotEmpty &&
        categoryNames.contains('⭐ Favorites');
    final hasSelectedCategory =
        selectedCategory != null && categoryNames.contains(selectedCategory);
    if (hasSelectedCategory) return;
    if (selectedCategory == '⭐ Favorites' && !hasFavorites) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!isMounted()) return;
        epgState.setSelectedCategory(categoryNames.first);
      });
      return;
    }
    if (selectedCategory == null && categoryNames.first == '⭐ Favorites') {
      final fallback = categoryNames.length > 1 ? categoryNames[1] : null;
      if (fallback == null) return;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!isMounted() || epgState.selectedCategory != null) return;
        epgState.setSelectedCategory(fallback);
      });
      return;
    }
    if (selectedCategory == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!isMounted() || epgState.selectedCategory != null) return;
        epgState.setSelectedCategory(categoryNames.first);
      });
    }
  }

  static EpgCategoryResolution resolveCategoryNames({
    required ChannelProvider channelProvider,
    required List<String> lastCategoryNames,
  }) {
    final rawCategories = channelProvider.getAllCategoryNames();
    final effectiveCategories =
        rawCategories.isNotEmpty ? rawCategories : lastCategoryNames;
    final isCategoryLoading = effectiveCategories.isEmpty &&
        channelProvider.hasChannels &&
        channelProvider.isGroupingChannels;

    final seen = <String>{};
    final categoryList = <String>[];
    for (final name in effectiveCategories) {
      final trimmed = name.trim();
      if (trimmed.isEmpty || trimmed == '⭐ Favorites') continue;
      if (seen.add(trimmed)) categoryList.add(trimmed);
    }
    if (categoryList.isEmpty && channelProvider.hasChannels) {
      final preview = channelProvider.getFilteredChannels(limit: 200);
      for (final channel in preview) {
        final trimmed = (channel.groupTitle ?? '').trim();
        final name = trimmed.isEmpty ? 'Uncategorized' : trimmed;
        if (seen.add(name)) categoryList.add(name);
      }
      categoryList.remove('⭐ Favorites');
      if (seen.contains('Uncategorized') &&
          !categoryList.contains('Uncategorized')) {
        categoryList.add('Uncategorized');
      }
    }
    final categoryNames = ['⭐ Favorites', ...categoryList];
    final showCenteredUpdating = isCategoryLoading && categoryList.isEmpty;

    return EpgCategoryResolution(
      rawCategories: rawCategories,
      categoryNames: categoryNames,
      isCategoryLoading: isCategoryLoading,
      showCenteredUpdating: showCenteredUpdating,
    );
  }
}

class EpgCategoryResolution {
  const EpgCategoryResolution({
    required this.rawCategories,
    required this.categoryNames,
    required this.isCategoryLoading,
    required this.showCenteredUpdating,
  });

  final List<String> rawCategories;
  final List<String> categoryNames;
  final bool isCategoryLoading;
  final bool showCenteredUpdating;
}
