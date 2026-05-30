part of '../local_db_service.dart';

extension LocalDbChannels on LocalDbService {
  Future<void> clearChannels() async {
    await _queueWrite((db) => db.delete('channels'));
  }

  Future<List<Map<String, dynamic>>> getChannelsPage(
      {int offset = 0, int limit = 50}) async {
    final safeLimit = limit.clamp(0, 500);
    final rows = await _withDbRead((db) {
      return db.query(
        'channels',
        orderBy: 'idx ASC',
        limit: safeLimit,
        offset: offset,
      );
    });
    return rows.map(_hydrateAttrs).toList();
  }

  Future<List<Map<String, dynamic>>> getChannelsForCategoryPage(String category,
      {int offset = 0, int limit = 50}) async {
    final safeLimit = limit.clamp(0, 500);
    final trimmedCategory = category.trim();
    final rows = await _withDbRead((db) {
      if (trimmedCategory.toLowerCase() == 'uncategorized') {
        return db.query(
          'channels',
          where:
              'groupTitle IS NULL OR TRIM(groupTitle) = ? OR groupTitle = ?',
          whereArgs: ['', 'Uncategorized'],
          orderBy: 'idx ASC',
          limit: safeLimit,
          offset: offset,
        );
      }
      // Use TRIM() on groupTitle to match normalized category names
      return db.rawQuery(
        'SELECT * FROM channels WHERE TRIM(groupTitle) = ? ORDER BY idx ASC LIMIT ? OFFSET ?',
        [trimmedCategory, safeLimit, offset],
      );
    });
    return rows.map(_hydrateAttrs).toList();
  }

  Future<Map<String, List<Map<String, dynamic>>>>
      getChannelsForCategoriesPage(
    List<String> categories, {
    int offset = 0,
    int limit = 50,
  }) async {
    if (categories.isEmpty) return {};
    final safeLimit = limit.clamp(0, 500);
    final safeOffset = offset.clamp(0, 1000000);

    final mapped = <String, List<Map<String, dynamic>>>{};
    for (final c in categories) {
      mapped[c] = [];
    }

    final hasUncategorized = categories.any((c) => c.trim().toLowerCase() == 'uncategorized');

    // OPTIMIZATION: Refactored `.where().map().toList()` chains into standard
    // looping bounds with cached `.trim()` strings to avoid multi-pass iterations
    // and object creation during large database batch writes.
    final specificCategories = <String>[];
    for (final c in categories) {
      final trimmed = c.trim();
      if (trimmed.toLowerCase() != 'uncategorized') {
        specificCategories.add(trimmed);
      }
    }

    // Split into chunks to respect SQLite's variable limits
    const int chunkSize = 500;

    await _withDbRead((db) async {
      // Handle named categories in chunks
      for (var i = 0; i < specificCategories.length; i += chunkSize) {
        final chunk = specificCategories.sublist(
            i, (i + chunkSize).clamp(0, specificCategories.length));
        if (chunk.isEmpty) continue;

        final placeholders = List.filled(chunk.length, '?').join(',');

        // SQLite 3.25.0+ supports window functions.
        // We partition by TRIM(groupTitle) and order by idx.
        final rows = await db.rawQuery(
          '''
          SELECT * FROM (
            SELECT *, ROW_NUMBER() OVER (
              PARTITION BY TRIM(groupTitle)
              ORDER BY idx ASC
            ) as row_num
            FROM channels
            WHERE TRIM(groupTitle) IN ($placeholders)
          ) WHERE row_num > ? AND row_num <= ?
          ''',
          [...chunk, safeOffset, safeOffset + safeLimit],
        );

        for (final row in rows) {
          final groupTitle = (row['groupTitle'] as String?)?.trim() ?? '';
          // We need to match the original category string requested (which might have different casing)
          final matchedCat = categories.firstWhere(
            (c) => c.trim().toLowerCase() == groupTitle.toLowerCase(),
            orElse: () => groupTitle,
          );
          if (mapped.containsKey(matchedCat)) {
            mapped[matchedCat]!.add(_hydrateAttrs(row));
          }
        }
      }

      // Handle Uncategorized
      if (hasUncategorized) {
        final uncategorizedCat = categories.firstWhere((c) => c.trim().toLowerCase() == 'uncategorized');
        final uncategorizedRows = await db.query(
          'channels',
          where: 'groupTitle IS NULL OR TRIM(groupTitle) = ? OR groupTitle = ?',
          whereArgs: ['', 'Uncategorized'],
          orderBy: 'idx ASC',
          limit: safeLimit,
          offset: safeOffset,
        );
        for (final row in uncategorizedRows) {
          mapped[uncategorizedCat]!.add(_hydrateAttrs(row));
        }
      }
    });

    return mapped;
  }

  Future<List<Map<String, dynamic>>> getChannelIdentifiersPage(
      {int offset = 0, int limit = 1000}) async {
    final safeLimit = limit.clamp(0, 2000);
    final rows = await _withDbRead((db) {
      return db.query(
        'channels',
        columns: const ['id', 'tvgId', 'name', 'attrs'],
        orderBy: 'idx ASC',
        limit: safeLimit,
        offset: offset,
      );
    });
    return rows.map(_hydrateAttrs).toList();
  }

  Future<List<String>> getCategories({int? limit}) async {
    final query = StringBuffer(
        'SELECT CASE WHEN groupTitle IS NULL OR TRIM(groupTitle) = \'\' THEN \'Uncategorized\' ELSE groupTitle END AS cat, MIN(idx) AS minIdx FROM channels GROUP BY cat ORDER BY CASE WHEN cat = \'Uncategorized\' THEN 1 ELSE 0 END, minIdx');
    final args = <Object>[];
    if (limit != null && limit > 0) {
      query.write(' LIMIT ?');
      args.add(limit);
    }
    final rows = await _withDbRead((db) {
      return db.rawQuery(query.toString(), args);
    });
    return rows
        .map((r) => (r['cat'] as String?) ?? 'Uncategorized')
        .toList();
  }

  Future<int> channelCount() async {
    final result = await _withDbRead(
        (db) => db.rawQuery('SELECT COUNT(*) as c FROM channels'));
    return Sqflite.firstIntValue(result) ?? 0;
  }

  Future<int> channelCountForCategory(String category) async {
    final trimmedCategory = category.trim();
    final result = await _withDbRead((db) {
      if (trimmedCategory.toLowerCase() == 'uncategorized') {
        return db.rawQuery(
            'SELECT COUNT(*) as c FROM channels WHERE groupTitle IS NULL OR TRIM(groupTitle) = \'\' OR groupTitle = \'Uncategorized\'');
      }
      return db.rawQuery(
          'SELECT COUNT(*) as c FROM channels WHERE TRIM(groupTitle) = ?',
          [trimmedCategory]);
    });
    return Sqflite.firstIntValue(result) ?? 0;
  }

  Future<List<Map<String, dynamic>>> searchChannels(String query,
      {int limit = 100}) async {
    final safeLimit = limit.clamp(0, 500);
    final rows = await _withDbRead((db) {
      return db.query(
        'channels',
        where: 'name LIKE ?',
        whereArgs: ['%$query%'],
        orderBy: 'idx ASC',
        limit: safeLimit,
      );
    });
    return rows.map(_hydrateAttrs).toList();
  }
}
