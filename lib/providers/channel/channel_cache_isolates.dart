// Isolate entrypoints for channel/category cache work off the main thread.

/// Extract unique category names only (fast).
/// Preserves the order categories first appear in the playlist.
List<String> extractCategoriesInIsolate(List<String?> groupTitles) {
  final List<String> categories = [];
  final Set<String> seen = {};
  for (final title in groupTitles) {
    final trimmed = title?.trim() ?? '';
    final category = trimmed.isEmpty ? 'Uncategorized' : trimmed;
    if (!seen.contains(category)) {
      seen.add(category);
      if (category != 'Uncategorized') {
        categories.add(category);
      }
    }
  }
  if (seen.contains('Uncategorized')) {
    categories.add('Uncategorized');
  }
  return categories;
}

/// Rebuild channel caches (expensive work off main thread).
/// Returns indexById, indicesByGroup, lowerNames, lowerGroups.
Map<String, dynamic> rebuildChannelCachesInIsolate(
    List<Map<String, dynamic>> channelMaps) {
  final Map<String, int> indexById = {};
  final Map<String, List<int>> indicesByGroup = {};
  final List<String> lowerNames = List<String>.filled(channelMaps.length, '');
  final List<String> lowerGroups = List<String>.filled(channelMaps.length, '');

  for (int i = 0; i < channelMaps.length; i++) {
    final map = channelMaps[i];
    final id = (map['id'] ?? '').toString();
    if (id.isNotEmpty) {
      indexById[id] = i;
    }
    final name = (map['name'] as String?) ?? '';
    final normalizedName = name.toLowerCase();
    lowerNames[i] = normalizedName;
    final rawGroup = (map['groupTitle'] ?? '').toString();
    final group = rawGroup.trim().toLowerCase();
    lowerGroups[i] = group;
    final groupKey = group.isNotEmpty ? group : 'uncategorized';
    (indicesByGroup[groupKey] ??= []).add(i);
  }

  return {
    'indexById': indexById,
    'indicesByGroup': indicesByGroup,
    'lowerNames': lowerNames,
    'lowerGroups': lowerGroups,
  };
}

List<int> filterCategoryIndicesInIsolate(Map<String, dynamic> args) {
  final titles = args['titles'] as List<String?>? ?? const [];
  final category = args['category'] as String? ?? 'Uncategorized';
  final offset = args['offset'] as int? ?? 0;
  final limit = args['limit'] as int? ?? 0;
  final indices = <int>[];
  if (limit <= 0) return indices;
  int matched = 0;
  for (int i = 0; i < titles.length; i++) {
    final title = titles[i] ?? 'Uncategorized';
    if (title != category) continue;
    if (matched < offset) {
      matched++;
      continue;
    }
    indices.add(i);
    if (indices.length >= limit) break;
  }
  return indices;
}

List<int> filterChannelIndicesInIsolate(Map<String, dynamic> args) {
  final titles = args['titles'] as List<String?>? ?? const [];
  final ids = args['ids'] as List<String?>? ?? const [];
  final hidden = args['hidden'] as List<bool>? ?? const [];
  final category = args['category'] as String?;
  final favoriteIds = (args['favoriteIds'] as List<dynamic>?)
          ?.map((e) => e.toString())
          .toSet() ??
      const <String>{};
  final excludeHidden = args['excludeHidden'] as bool? ?? true;
  final offset = args['offset'] as int? ?? 0;
  final limit = args['limit'] as int? ?? 0;
  final indices = <int>[];
  if (limit <= 0) return indices;
  int matched = 0;
  for (int i = 0; i < titles.length; i++) {
    if (excludeHidden && i < hidden.length && hidden[i]) {
      continue;
    }
    if (category != null) {
      final title = titles[i] ?? 'Uncategorized';
      if (title != category) continue;
    }
    if (favoriteIds.isNotEmpty) {
      final id = i < ids.length ? ids[i] : null;
      if (id == null || !favoriteIds.contains(id)) {
        continue;
      }
    }
    if (matched < offset) {
      matched++;
      continue;
    }
    indices.add(i);
    if (indices.length >= limit) break;
  }
  return indices;
}
