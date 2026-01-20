import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import '../utils/debug_helper.dart';

/// Lightweight SQLite wrapper for channels/EPG data.
/// Keeps UI responsive on huge playlists by paging from disk.
class LocalDbService {
  LocalDbService._();
  static final LocalDbService instance = LocalDbService._();

  Database? _db;
  bool _isInit = false;
  bool _resetting = false;
  Completer<void>? _resetCompleter;
  Completer<void>? _initCompleter;
  String? _dbPath;
  Future<void> _writeQueue = Future.value();

  bool get isReady => _isInit && _db != null;

  Future<String> _resolveDbPath() async {
    // Use documents directory - survives cache clears
    final docsDir = await getApplicationDocumentsDirectory();
    final docsPath = p.join(docsDir.path, 'iptv_local.db');
    final docsFile = File(docsPath);
    
    if (!await docsFile.exists()) {
      // Migrate from cache directory if it exists there (previous incorrect location)
      final cacheDir = await getApplicationCacheDirectory();
      final cachePath = p.join(cacheDir.path, 'iptv_local.db');
      final cacheFile = File(cachePath);
      if (await cacheFile.exists()) {
        try {
          await cacheFile.copy(docsPath);
          // Clean up old cache location after successful migration
          await cacheFile.delete();
        } catch (_) {}
      }
    }
    return docsPath;
  }

  Future<void> init() async {
    debugLog('LocalDbService: init() called, _isInit=$_isInit, _initCompleter=${_initCompleter != null}');
    if (_initCompleter != null) {
      debugLog('LocalDbService: Init already in progress, waiting...');
      return _initCompleter!.future;
    }

    if (_isInit) {
      final db = _db;
      if (db != null && db.isOpen) {
        debugLog('LocalDbService: DB already initialized and open');
        return;
      }
      debugLog('LocalDbService: DB was marked init but not open, reinitializing...');
      _isInit = false;
      _db = null;
    }

    final completer = Completer<void>();
    _initCompleter = completer;

    try {
      final dbPath = await _resolveDbPath();
      _dbPath = dbPath;
      debugLog('LocalDbService: Opening database at $dbPath');
      _db = await openDatabase(
        dbPath,
        version: 4,
        onConfigure: (db) async {
          try {
            // PRAGMA journal_mode returns rows; use rawQuery to avoid errors.
            await db.rawQuery('PRAGMA journal_mode=WAL');
            await db.rawQuery('PRAGMA synchronous=NORMAL');
            await db.rawQuery('PRAGMA busy_timeout=3000');
          } catch (_) {
            // Best-effort; continue without WAL if platform rejects PRAGMA.
          }
        },
        onCreate: (db, _) async {
          await db.execute('''
          CREATE TABLE channels(
            id TEXT PRIMARY KEY,
            name TEXT,
            url TEXT,
            logoUrl TEXT,
            groupTitle TEXT,
            tvgId TEXT,
            channelNumber INTEGER,
            attrs TEXT,
            isHD INTEGER,
            isFavorite INTEGER,
            language TEXT,
            country TEXT,
            isHidden INTEGER,
            sortOrder INTEGER,
            idx INTEGER
          )
        ''');
          // Composite index for efficient category paging (WHERE groupTitle = ? ORDER BY idx)
          await db.execute(
              'CREATE INDEX IF NOT EXISTS idx_channels_group_idx ON channels(groupTitle, idx)');
          await db.execute(
              'CREATE INDEX IF NOT EXISTS idx_channels_name ON channels(name)');
          await db.execute(
              'CREATE INDEX IF NOT EXISTS idx_channels_idx ON channels(idx)');

          await db.execute('''
          CREATE TABLE epg_programs(
            epgId TEXT,
            startTs INTEGER,
            endTs INTEGER,
            title TEXT,
            description TEXT,
            imageUrl TEXT,
            PRIMARY KEY (epgId, startTs)
          )
        ''');
          await db.execute(
              'CREATE INDEX IF NOT EXISTS idx_epg_times ON epg_programs(startTs, endTs)');
          await db.execute('''
          CREATE TABLE epg_channel_hash(
            epgId TEXT PRIMARY KEY,
            hash TEXT
          )
        ''');

          await db.execute('''
          CREATE TABLE epg_mapping(
            channelId TEXT PRIMARY KEY,
            epgId TEXT
          )
        ''');
        },
        onUpgrade: (db, oldVersion, newVersion) async {
          if (oldVersion < 2) {
            await db.execute('''
            CREATE TABLE IF NOT EXISTS epg_channel_hash(
              epgId TEXT PRIMARY KEY,
              hash TEXT
            )
          ''');
          }
          if (oldVersion < 3) {
            await db.execute('DROP TABLE IF EXISTS vod_movies');
            await db.execute('DROP TABLE IF EXISTS vod_series');
          }
          if (oldVersion < 4) {
            // Replace simple group index with composite index for faster paging
            await db.execute(
                'CREATE INDEX IF NOT EXISTS idx_channels_group_idx ON channels(groupTitle, idx)');
            await db.execute('DROP INDEX IF EXISTS idx_channels_group');
          }
        },
      );
      _isInit = true;
      completer.complete();
    } catch (e) {
      // Fail softly; fall back to in-memory providers if DB unavailable.
      debugLog('LocalDbService: init failed, continuing without DB: $e');
      _isInit = false;
      completer.completeError(e);
      rethrow;
    } finally {
      _initCompleter = null;
    }
  }

  Database _requireDb() {
    final db = _db;
    if (db == null || !db.isOpen) {
      _db = null;
      _isInit = false;
      throw StateError('LocalDbService not initialized');
    }
    return db;
  }

  Future<void> _waitForReset() async {
    final completer = _resetCompleter;
    if (completer != null) {
      await completer.future;
    }
  }

  Future<T> _withDb<T>(Future<T> Function(Database db) action) async {
    await _waitForReset();
    final db = _requireDb();
    try {
      return await action(db);
    } catch (e) {
      if (_isClosedError(e)) {
        debugLog('LocalDbService: Detected closed DB, attempting to reopen...');
        try {
          // CRITICAL: Mark DB as not initialized so init() will actually reopen it
          _isInit = false;
          _db = null;
          await init();
          debugLog('LocalDbService: DB reopened successfully');
        } catch (initError) {
          debugLog('LocalDbService: Failed to reopen DB: $initError');
          rethrow;
        }
        return await action(_requireDb());
      }
      if (_isReadOnlyError(e) && !_resetting) {
        debugLog('LocalDbService: Detected read-only DB, attempting reset...');
        await _resetDatabase();
        final retryDb = _requireDb();
        return await action(retryDb);
      }
      rethrow;
    }
  }

  Future<T> _withDbRead<T>(Future<T> Function(Database db) action) async {
    await _waitForReset();
    if (!_isInit) {
      await init();
    }
    // With WAL enabled, multiple readers can proceed while a writer is active.
    // Removed wait for _writeQueue to keep the UI snappy during large EPG/playlist imports.
    return _withDb(action);
  }

  Future<T> _queueWrite<T>(Future<T> Function(Database db) action) {
    final completer = Completer<T>();
    _writeQueue = _writeQueue.then((_) async {
      try {
        await _waitForReset();
        if (!_isInit) {
          await init();
        }
        final result = await _withDb(action);
        completer.complete(result);
      } catch (e, st) {
        completer.completeError(e, st);
      }
    });
    return completer.future;
  }

  bool _isReadOnlyError(Object e) {
    final message = e.toString().toLowerCase();
    return message.contains('read-only') ||
        message.contains('read only') ||
        message.contains('readonly');
  }

  bool _isClosedError(Object e) {
    final message = e.toString().toLowerCase();
    return message.contains('database_closed') ||
        message.contains('database closed') ||
        message.contains('not initialized');
  }

  Future<void> _resetDatabase() async {
    if (_resetting) {
      await _waitForReset();
      return;
    }
    _resetting = true;
    _resetCompleter ??= Completer<void>();
    try {
      debugLog('LocalDbService: resetting read-only database');
      final db = _db;
      _db = null;
      _isInit = false;
      try {
        await db?.close();
      } catch (_) {}
      var path = _dbPath;
      if (path == null || path.isEmpty) {
        final dir = await getApplicationDocumentsDirectory();
        path = p.join(dir.path, 'iptv_local.db');
        _dbPath = path;
      }
      try {
        await deleteDatabase(path);
      } catch (_) {}
      await init();
    } finally {
      _resetting = false;
      _resetCompleter?.complete();
      _resetCompleter = null;
    }
  }

  Future<bool> recoverFromReadOnly() async {
    try {
      await _resetDatabase();
      return _isInit;
    } catch (_) {
      return false;
    }
  }

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
    final results = await _withDbRead((db) async {
      final batch = db.batch();
      for (final category in categories) {
        final trimmedCategory = category.trim();
        if (trimmedCategory.toLowerCase() == 'uncategorized') {
          batch.query(
            'channels',
            where:
                'groupTitle IS NULL OR TRIM(groupTitle) = ? OR groupTitle = ?',
            whereArgs: ['', 'Uncategorized'],
            orderBy: 'idx ASC',
            limit: safeLimit,
            offset: safeOffset,
          );
          continue;
        }
        // Use rawQuery with TRIM() to match normalized category names
        batch.rawQuery(
          'SELECT * FROM channels WHERE TRIM(groupTitle) = ? ORDER BY idx ASC LIMIT ? OFFSET ?',
          [trimmedCategory, safeLimit, safeOffset],
        );
      }
      return batch.commit(noResult: false);
    });
    final mapped = <String, List<Map<String, dynamic>>>{};
    for (var i = 0; i < categories.length; i++) {
      final rows =
          (results[i] as List?)?.cast<Map<String, dynamic>>() ?? const [];
      mapped[categories[i]] = rows.map(_hydrateAttrs).toList();
    }
    return mapped;
  }

  Future<List<Map<String, dynamic>>> getChannelIdentifiersPage(
      {int offset = 0, int limit = 1000}) async {
    final safeLimit = limit.clamp(0, 2000);
    final rows = await _withDbRead((db) {
      return db.query(
        'channels',
        columns: const ['id', 'tvgId', 'name'],
        orderBy: 'idx ASC',
        limit: safeLimit,
        offset: offset,
      );
    });
    return rows;
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

  Future<List<Map<String, dynamic>>> getProgramsForEpgId(String epgId,
      {required int startMs,
      required int endMs,
      int limit = 200,
      int offset = 0}) async {
    final rows = await _withDbRead((db) {
      return db.query(
        'epg_programs',
        where: 'epgId = ? AND endTs >= ? AND startTs < ?',
        whereArgs: [epgId, startMs, endMs],
        orderBy: 'startTs ASC',
        limit: limit.clamp(0, 500),
        offset: offset.clamp(0, 1000000),
      );
    });
    return rows;
  }

  Future<List<Map<String, dynamic>>> getProgramsForEpgIds(List<String> epgIds,
      {required int startMs, required int endMs}) async {
    if (epgIds.isEmpty) return [];
    
    // Split into chunks to avoid SQLite variable limits (usually 999)
    const int chunkSize = 500;
    final results = <Map<String, dynamic>>[];
    
    for (var i = 0; i < epgIds.length; i += chunkSize) {
      final chunk = epgIds.sublist(
          i, (i + chunkSize).clamp(0, epgIds.length));
      
      final placeholders = List.filled(chunk.length, '?').join(',');
      final rows = await _withDbRead((db) {
        return db.rawQuery(
          'SELECT * FROM epg_programs WHERE epgId IN ($placeholders) AND endTs >= ? AND startTs < ? ORDER BY epgId, startTs',
          [...chunk, startMs, endMs],
        );
      });
      results.addAll(rows);
    }
    
    return results;
  }

  Future<void> insertChannels(List<Map<String, dynamic>> channels) async {
    if (channels.isEmpty) return;
    await _queueWrite((db) async {
      await db.transaction((txn) async {
        final batch = txn.batch();
        for (var i = 0; i < channels.length; i++) {
          final c = channels[i];
          batch.insert(
            'channels',
            {
              'id': c['id'],
              'name': c['name'],
              'url': c['url'],
              'logoUrl': c['logoUrl'],
              'groupTitle': c['groupTitle'],
              'tvgId': c['tvgId'],
              'channelNumber': c['channelNumber'],
              'attrs':
                  c['attributes'] != null ? json.encode(c['attributes']) : null,
              'isHD': c['isHD'] == true ? 1 : 0,
              'isFavorite': c['isFavorite'] == true ? 1 : 0,
              'language': c['language'],
              'country': c['country'],
              'isHidden': c['isHidden'] == true ? 1 : 0,
              'sortOrder': c['sortOrder'],
              'idx': i,
            },
            conflictAlgorithm: ConflictAlgorithm.replace,
          );
        }
        await batch.commit(noResult: true);
      });
    });
  }

  Future<void> clearEpg() async {
    await _queueWrite((db) async {
      await db.delete('epg_programs');
      await db.delete('epg_mapping');
      await db.delete('epg_channel_hash');
    });
  }

  Future<int> mappingCount() async {
    final result = await _withDbRead(
        (db) => db.rawQuery('SELECT COUNT(*) as c FROM epg_mapping'));
    return Sqflite.firstIntValue(result) ?? 0;
  }

  Future<void> upsertEpgMapping(Map<String, String> mappings) async {
    if (mappings.isEmpty) return;
    await _queueWrite((db) async {
      await db.transaction((txn) async {
        final batch = txn.batch();
        mappings.forEach((channelId, epgId) {
          batch.insert(
            'epg_mapping',
            {'channelId': channelId, 'epgId': epgId},
            conflictAlgorithm: ConflictAlgorithm.replace,
          );
        });
        await batch.commit(noResult: true);
      });
    });
  }

  Future<void> deleteEpgMapping(String channelId) async {
    if (channelId.isEmpty) return;
    await _queueWrite((db) async {
      await db.delete('epg_mapping',
          where: 'channelId = ?', whereArgs: [channelId]);
    });
  }

  Future<Map<String, String>> getAllMappings() async {
    final rows = await _withDbRead((db) => db.query('epg_mapping'));
    return {
      for (final r in rows) r['channelId'] as String: r['epgId'] as String
    };
  }

  Future<void> insertPrograms(String epgId, List<Map<String, dynamic>> programs,
      {bool clearExisting = false}) async {
    if (programs.isEmpty) return;
    await _queueWrite((db) async {
      await db.transaction((txn) async {
        if (clearExisting) {
          await txn
              .delete('epg_programs', where: 'epgId = ?', whereArgs: [epgId]);
        }
        final batch = txn.batch();
        for (final p in programs) {
          batch.insert(
            'epg_programs',
            {
              'epgId': epgId,
              'startTs': p['startTs'],
              'endTs': p['endTs'],
              'title': p['title'],
              'description': p['description'],
              'imageUrl': p['imageUrl'],
            },
            conflictAlgorithm: ConflictAlgorithm.replace,
          );
        }
        await batch.commit(noResult: true);
      });
    });
  }

  Future<Map<String, dynamic>?> getCurrentProgram(String epgId) async {
    final now = DateTime.now().millisecondsSinceEpoch;
    final rows = await _withDbRead((db) {
      return db.query(
        'epg_programs',
        where: 'epgId = ? AND startTs <= ? AND endTs >= ?',
        whereArgs: [epgId, now, now],
        orderBy: 'startTs DESC',
        limit: 1,
      );
    });
    if (rows.isEmpty) return null;
    return rows.first;
  }

  /// Load all programs from DB, grouped by epgId.
  /// Only loads programs within a time window (past catchup hours to future hours).
  Future<Map<String, List<Map<String, dynamic>>>> getAllProgramsByChannel({
    int pastHours = 24,
    int futureHours = 24,
    List<String>? epgIds,
  }) async {
    final now = DateTime.now();
    final startMs = now.subtract(Duration(hours: pastHours)).millisecondsSinceEpoch;
    final endMs = now.add(Duration(hours: futureHours)).millisecondsSinceEpoch;
    
    final Map<String, List<Map<String, dynamic>>> result = {};

    await _withDbRead((db) async {
      if (epgIds == null || epgIds.isEmpty) {
        // Fetch all programs for time window
        final rows = await db.query(
          'epg_programs',
          where: 'endTs >= ? AND startTs <= ?',
          whereArgs: [startMs, endMs],
          orderBy: 'epgId, startTs',
        );
        for (final row in rows) {
          final epgId = row['epgId'] as String;
          result.putIfAbsent(epgId, () => []).add(row);
        }
      } else {
        // Fetch only for specific epgIds in batches to avoid parameter limits
        const int batchSize = 500;
        for (int i = 0; i < epgIds.length; i += batchSize) {
          final end = (i + batchSize).clamp(0, epgIds.length);
          final batchIds = epgIds.sublist(i, end);
          final placeholders = List.filled(batchIds.length, '?').join(',');
          
          final rows = await db.query(
            'epg_programs',
            where: 'epgId IN ($placeholders) AND endTs >= ? AND startTs <= ?',
            whereArgs: [...batchIds, startMs, endMs],
            orderBy: 'epgId, startTs',
          );
          
          for (final row in rows) {
            final epgId = row['epgId'] as String;
            result.putIfAbsent(epgId, () => []).add(row);
          }
        }
      }
    });
    
    return result;
  }

  /// Check how many programs are in the DB.
  Future<int> programCount() async {
    final rows = await _withDbRead((db) {
      return db.rawQuery('SELECT COUNT(*) as cnt FROM epg_programs');
    });
    return rows.isEmpty ? 0 : (rows.first['cnt'] as int? ?? 0);
  }

  /// Clear all programs from DB.
  Future<void> clearPrograms() async {
    await _queueWrite((db) async {
      await db.delete('epg_programs');
      await db.delete('epg_channel_hash');
    });
  }

  Future<Map<String, String>> getEpgChannelHashes() async {
    final rows = await _withDbRead((db) => db.query('epg_channel_hash'));
    return {
      for (final r in rows)
        r['epgId'] as String: (r['hash'] as String?) ?? ''
    };
  }

  Future<void> upsertEpgChannelHashes(Map<String, String> hashes) async {
    if (hashes.isEmpty) return;
    await _queueWrite((db) async {
      await db.transaction((txn) async {
        final batch = txn.batch();
        hashes.forEach((epgId, hash) {
          batch.insert(
            'epg_channel_hash',
            {'epgId': epgId, 'hash': hash},
            conflictAlgorithm: ConflictAlgorithm.replace,
          );
        });
        await batch.commit(noResult: true);
      });
    });
  }

  /// Bulk insert programs for multiple channels.
  Future<void> insertAllPrograms(Map<String, List<Map<String, dynamic>>> programsByChannel) async {
    if (programsByChannel.isEmpty) return;
    await _queueWrite((db) async {
      await db.transaction((txn) async {
        final batch = txn.batch();
        for (final entry in programsByChannel.entries) {
          final epgId = entry.key;
          for (final p in entry.value) {
            batch.insert(
              'epg_programs',
              {
                'epgId': epgId,
                'startTs': p['startTs'],
                'endTs': p['endTs'],
                'title': p['title'],
                'description': p['description'],
                'imageUrl': p['imageUrl'],
              },
              conflictAlgorithm: ConflictAlgorithm.replace,
            );
          }
        }
        await batch.commit(noResult: true);
      });
    });
  }

  Map<String, dynamic> _hydrateAttrs(Map<String, dynamic> row) {
    if (row['attrs'] != null) {
      try {
        row['attributes'] = json.decode(row['attrs'] as String);
      } catch (_) {}
    }
    row.remove('attrs');
    return row;
  }
}
