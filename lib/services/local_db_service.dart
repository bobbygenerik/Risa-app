import 'dart:convert';

import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

/// Lightweight SQLite wrapper for channels/VOD/EPG data.
/// Keeps UI responsive on huge playlists by paging from disk.
class LocalDbService {
  LocalDbService._();
  static final LocalDbService instance = LocalDbService._();

  Database? _db;
  bool _isInit = false;

  Future<void> init() async {
    if (_isInit) return;

    try {
      final dir = await getApplicationDocumentsDirectory();
      final dbPath = p.join(dir.path, 'iptv_local.db');
      _db = await openDatabase(
        dbPath,
        version: 1,
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
          await db.execute(
              'CREATE INDEX IF NOT EXISTS idx_channels_group ON channels(groupTitle)');
          await db.execute(
              'CREATE INDEX IF NOT EXISTS idx_channels_name ON channels(name)');
          await db.execute(
              'CREATE INDEX IF NOT EXISTS idx_channels_idx ON channels(idx)');

          await db.execute('''
          CREATE TABLE vod_movies(
            id TEXT PRIMARY KEY,
            title TEXT,
            payload TEXT
          )
        ''');
          await db.execute(
              'CREATE INDEX IF NOT EXISTS idx_movies_title ON vod_movies(title)');

          await db.execute('''
          CREATE TABLE vod_series(
            id TEXT PRIMARY KEY,
            title TEXT,
            payload TEXT
          )
        ''');
          await db.execute(
              'CREATE INDEX IF NOT EXISTS idx_series_title ON vod_series(title)');

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
          CREATE TABLE epg_mapping(
            channelId TEXT PRIMARY KEY,
            epgId TEXT
          )
        ''');
        },
      );
      _isInit = true;
    } catch (e) {
      // Fail softly; fall back to in-memory providers if DB unavailable.
      // ignore: avoid_print
      print('LocalDbService: init failed, continuing without DB: $e');
      _isInit = false;
      rethrow;
    }
  }

  Database _requireDb() {
    final db = _db;
    if (db == null) {
      throw StateError('LocalDbService not initialized');
    }
    return db;
  }

  Future<void> clearChannels() async {
    final db = _requireDb();
    await db.delete('channels');
  }

  Future<List<Map<String, dynamic>>> getChannelsPage(
      {int offset = 0, int limit = 50}) async {
    final db = _requireDb();
    final rows = await db.query(
      'channels',
      orderBy: 'idx ASC',
      limit: limit,
      offset: offset,
    );
    return rows.map(_hydrateAttrs).toList();
  }

  Future<List<Map<String, dynamic>>> getChannelsForCategoryPage(
      String category,
      {int offset = 0,
      int limit = 50}) async {
    final db = _requireDb();
    final rows = await db.query(
      'channels',
      where: 'groupTitle = ?',
      whereArgs: [category],
      orderBy: 'idx ASC',
      limit: limit,
      offset: offset,
    );
    return rows.map(_hydrateAttrs).toList();
  }

  Future<List<String>> getCategories({int limit = 50}) async {
    final db = _requireDb();
    final rows = await db.rawQuery(
        'SELECT DISTINCT groupTitle FROM channels WHERE groupTitle IS NOT NULL ORDER BY groupTitle LIMIT ?',
        [limit]);
    return rows
        .map((r) => (r['groupTitle'] as String?) ?? 'Uncategorized')
        .toList();
  }

  Future<int> channelCount() async {
    final db = _requireDb();
    final result =
        await db.rawQuery('SELECT COUNT(*) as c FROM channels');
    return Sqflite.firstIntValue(result) ?? 0;
  }

  Future<int> channelCountForCategory(String category) async {
    final db = _requireDb();
    final result = await db.rawQuery(
        'SELECT COUNT(*) as c FROM channels WHERE groupTitle = ?', [category]);
    return Sqflite.firstIntValue(result) ?? 0;
  }

  Future<List<Map<String, dynamic>>> searchChannels(String query,
      {int limit = 100}) async {
    final db = _requireDb();
    final rows = await db.query(
      'channels',
      where: 'name LIKE ?',
      whereArgs: ['%$query%'],
      orderBy: 'idx ASC',
      limit: limit,
    );
    return rows.map(_hydrateAttrs).toList();
  }

  Future<List<Map<String, dynamic>>> getProgramsForEpgId(String epgId,
      {int limit = 200}) async {
    final db = _requireDb();
    final now = DateTime.now().millisecondsSinceEpoch;
    final rows = await db.query(
      'epg_programs',
      where: 'epgId = ? AND endTs >= ?',
      whereArgs: [epgId, now - const Duration(hours: 6).inMilliseconds],
      orderBy: 'startTs ASC',
      limit: limit,
    );
    return rows;
  }

  Future<void> insertChannels(List<Map<String, dynamic>> channels) async {
    if (channels.isEmpty) return;
    final db = _requireDb();
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
            'attrs': c['attributes'] != null ? json.encode(c['attributes']) : null,
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
  }

  Future<void> clearVod() async {
    final db = _requireDb();
    await db.delete('vod_movies');
    await db.delete('vod_series');
  }

  Future<void> insertMovies(List<Map<String, dynamic>> movies) async {
    if (movies.isEmpty) return;
    final db = _requireDb();
    await db.transaction((txn) async {
      final batch = txn.batch();
      for (final m in movies) {
        batch.insert(
          'vod_movies',
          {
            'id': m['id'],
            'title': m['title'] ?? '',
            'payload': json.encode(m),
          },
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
      }
      await batch.commit(noResult: true);
    });
  }

  Future<void> insertSeries(List<Map<String, dynamic>> series) async {
    if (series.isEmpty) return;
    final db = _requireDb();
    await db.transaction((txn) async {
      final batch = txn.batch();
      for (final s in series) {
        batch.insert(
          'vod_series',
          {
            'id': s['id'],
            'title': s['title'] ?? '',
            'payload': json.encode(s),
          },
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
      }
      await batch.commit(noResult: true);
    });
  }

  Future<int> movieCount() async {
    final db = _requireDb();
    final result =
        await db.rawQuery('SELECT COUNT(*) as c FROM vod_movies');
    return Sqflite.firstIntValue(result) ?? 0;
  }

  Future<int> seriesCount() async {
    final db = _requireDb();
    final result =
        await db.rawQuery('SELECT COUNT(*) as c FROM vod_series');
    return Sqflite.firstIntValue(result) ?? 0;
  }

  Future<List<Map<String, dynamic>>> getMoviesPage(
      {int offset = 0, int limit = 50}) async {
    final db = _requireDb();
    final rows = await db.query(
      'vod_movies',
      orderBy: 'title COLLATE NOCASE ASC',
      limit: limit,
      offset: offset,
    );
    return rows
        .map((r) => json.decode(r['payload'] as String) as Map<String, dynamic>)
        .toList();
  }

  Future<List<Map<String, dynamic>>> getSeriesPage(
      {int offset = 0, int limit = 50}) async {
    final db = _requireDb();
    final rows = await db.query(
      'vod_series',
      orderBy: 'title COLLATE NOCASE ASC',
      limit: limit,
      offset: offset,
    );
    return rows
        .map((r) => json.decode(r['payload'] as String) as Map<String, dynamic>)
        .toList();
  }

  Future<void> clearEpg() async {
    final db = _requireDb();
    await db.delete('epg_programs');
    await db.delete('epg_mapping');
  }

  Future<int> mappingCount() async {
    final db = _requireDb();
    final result =
        await db.rawQuery('SELECT COUNT(*) as c FROM epg_mapping');
    return Sqflite.firstIntValue(result) ?? 0;
  }

  Future<void> upsertEpgMapping(Map<String, String> mappings) async {
    if (mappings.isEmpty) return;
    final db = _requireDb();
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
  }

  Future<Map<String, String>> getAllMappings() async {
    final db = _requireDb();
    final rows = await db.query('epg_mapping');
    return {
      for (final r in rows) r['channelId'] as String: r['epgId'] as String
    };
  }

  Future<void> insertPrograms(String epgId, List<Map<String, dynamic>> programs,
      {bool clearExisting = false}) async {
    if (programs.isEmpty) return;
    final db = _requireDb();
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
  }

  Future<Map<String, dynamic>?> getCurrentProgram(String epgId) async {
    final db = _requireDb();
    final now = DateTime.now().millisecondsSinceEpoch;
    final rows = await db.query(
      'epg_programs',
      where: 'epgId = ? AND startTs <= ? AND endTs >= ?',
      whereArgs: [epgId, now, now],
      orderBy: 'startTs DESC',
      limit: 1,
    );
    if (rows.isEmpty) return null;
    return rows.first;
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
