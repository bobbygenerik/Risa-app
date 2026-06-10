part of '../local_db_service.dart';

extension LocalDbCore on LocalDbService {
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
        } catch (e) {
          debugLog('LocalDbService: DB migration copy failed: $e');
        }
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
        version: 6,
        onConfigure: (db) async {
          try {
            // PRAGMA journal_mode returns rows; use rawQuery to capture result.
            final walResult = await db.rawQuery('PRAGMA journal_mode=WAL');
            final activeMode = walResult.isNotEmpty
                ? walResult.first.values.first?.toString()
                : 'unknown';
            if (activeMode != 'wal') {
              debugLog('LocalDbService: WAL mode FAILED — active mode: $activeMode');
            } else {
              debugLog('LocalDbService: WAL mode active');
            }
            await db.rawQuery('PRAGMA synchronous=NORMAL');
            await db.rawQuery('PRAGMA busy_timeout=20000');
          } catch (e) {
            debugLog('LocalDbService: PRAGMA configuration failed: $e');
          }
        },
        onCreate: (db, _) async {
          await db.execute('''
          CREATE TABLE channels(
            id TEXT,
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
            idx INTEGER,
            PRIMARY KEY (id, url)
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
            category TEXT,
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
          if (oldVersion < 5) {
            // Drop old channels table and recreate with composite primary key (id, url)
            await db.execute('DROP TABLE IF EXISTS channels');
            await db.execute('''
            CREATE TABLE channels(
              id TEXT,
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
              idx INTEGER,
              PRIMARY KEY (id, url)
            )
          ''');
            await db.execute(
                'CREATE INDEX IF NOT EXISTS idx_channels_group_idx ON channels(groupTitle, idx)');
            await db.execute(
                'CREATE INDEX IF NOT EXISTS idx_channels_name ON channels(name)');
            await db.execute(
                'CREATE INDEX IF NOT EXISTS idx_channels_idx ON channels(idx)');
          }
          if (oldVersion < 6) {
            // Persist programme category (parser already extracted it but it
            // was dropped on write, so it vanished after restart).
            await db.execute(
                'ALTER TABLE epg_programs ADD COLUMN category TEXT');
          }
        },
      );

      // Quick integrity check to catch corruption early
      try {
        final check = await _db!.rawQuery('PRAGMA integrity_check(1)');
        final result = check.isNotEmpty
            ? check.first.values.first?.toString()
            : 'unknown';
        if (result != 'ok') {
          debugLog('LocalDbService: integrity_check FAILED: $result');
        }
      } catch (e) {
        debugLog('LocalDbService: integrity_check error: $e');
      }

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
    // WAL mode allows concurrent readers/writers. 
    // Removed manual blocking check regarding _bulkWriteDepth to prevent UI freezes.
    return _withDb(action);
  }

  Future<T> _withBulkWrite<T>(Future<T> Function() action) async {
    beginBulkWrite();
    try {
      return await action();
    } finally {
      endBulkWrite();
    }
  }

  void beginBulkWrite() {
    _bulkWriteDepth++;
  }

  void endBulkWrite() {
    if (_bulkWriteDepth > 0) {
      _bulkWriteDepth--;
    }
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
    // Must mention 'database' to avoid false positives from Dart collection
    // errors (e.g. "Unsupported operation: read-only" from unmodifiable maps).
    if (!message.contains('database')) return false;
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
    // Rate-limit resets: max 1 per 30 seconds to prevent reset cascades
    final now = DateTime.now();
    if (_lastResetTime != null &&
        now.difference(_lastResetTime!).inSeconds < 30) {
      debugLog('LocalDbService: reset skipped — cooldown active '
          '(${now.difference(_lastResetTime!).inSeconds}s since last reset)');
      return;
    }
    _resetting = true;
    _lastResetTime = now;
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
        // Delete DB file and WAL/SHM files
        await deleteDatabase(path);
        final walPath = '$path-wal';
        final shmPath = '$path-shm';
        try {
          final walFile = File(walPath);
          if (await walFile.exists()) await walFile.delete();
        } catch (_) {}
        try {
          final shmFile = File(shmPath);
          if (await shmFile.exists()) await shmFile.delete();
        } catch (_) {}
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
}
