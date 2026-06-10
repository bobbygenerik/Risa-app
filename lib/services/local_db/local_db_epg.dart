part of '../local_db_service.dart';

extension LocalDbEpg on LocalDbService {
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
    
    // Batch inserts to avoid locking DB for too long
    const int batchSize = 500;

    for (var i = 0; i < channels.length; i += batchSize) {
      final end = (i + batchSize).clamp(0, channels.length);
      final chunk = channels.sublist(i, end);

      await _withBulkWrite(() async {
        await _queueWrite((db) async {
          await db.transaction((txn) async {
            final batch = txn.batch();
            for (var j = 0; j < chunk.length; j++) {
              final c = chunk[j];
              final globalIndex = i + j;
              final id = c['id']?.toString() ?? c['url'].hashCode.toString(); // Fallback ID
              batch.insert(
                'channels',
                {
                  'id': id,
                  'name': c['name'],
                  'url': c['url'],
                  'logoUrl': c['logoUrl'],
                  'groupTitle': c['groupTitle'],
                  'tvgId': c['tvgId'],
                  'channelNumber': c['channelNumber'],
                  'attrs': c['attributes'] != null
                      ? json.encode(c['attributes'])
                      : null,
                  'isHD': c['isHD'] == true ? 1 : 0,
                  'isFavorite': c['isFavorite'] == true ? 1 : 0,
                  'language': c['language'],
                  'country': c['country'],
                  'isHidden': c['isHidden'] == true ? 1 : 0,
                  'sortOrder': c['sortOrder'],
                  'idx': c['idx'] ?? globalIndex, // Ensure idx is preserved or generated
                },
                conflictAlgorithm: ConflictAlgorithm.replace,
              );
            }
            await batch.commit(noResult: true);
          });
        });
      });

      // Allow UI interrupts between batches
      if (i + batchSize < channels.length) {
        await Future.delayed(Duration.zero);
      }
    }
  }

  Future<void> clearEpg() async {
    await _withBulkWrite(() async {
      await _queueWrite((db) async {
        await db.delete('epg_programs');
        await db.delete('epg_mapping');
        await db.delete('epg_channel_hash');
      });
    });
  }

  Future<int> mappingCount() async {
    final result = await _withDbRead(
        (db) => db.rawQuery('SELECT COUNT(*) as c FROM epg_mapping'));
    return Sqflite.firstIntValue(result) ?? 0;
  }

  Future<void> upsertEpgMapping(Map<String, String> mappings) async {
    if (mappings.isEmpty) return;
    await _withBulkWrite(() async {
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

  Future<void> deleteProgramsForEpgIds(List<String> epgIds) async {
    if (epgIds.isEmpty) return;

    // Split into chunks to avoid SQLite variable limits (usually 999)
    const int chunkSize = 500;

    await _withBulkWrite(() async {
      await _queueWrite((db) async {
        await db.transaction((txn) async {
          for (var i = 0; i < epgIds.length; i += chunkSize) {
            final chunk = epgIds.sublist(
                i, (i + chunkSize).clamp(0, epgIds.length));
            final placeholders = List.filled(chunk.length, '?').join(',');
            await txn.delete(
              'epg_programs',
              where: 'epgId IN ($placeholders)',
              whereArgs: chunk,
            );
          }
        });
      });
    });
  }

  Future<void> insertPrograms(String epgId, List<Map<String, dynamic>> programs,
      {bool clearExisting = false}) async {
    if (programs.isEmpty) return;
    
    // Use smaller chunks to prevent holding the lock for too long
    const int batchSize = 500;
    
    // If clearing, do it in a separate transaction first
    if (clearExisting) {
      await _queueWrite((db) => db.delete('epg_programs',
          where: 'epgId = ?', whereArgs: [epgId]));
    }

    for (var i = 0; i < programs.length; i += batchSize) {
      final end = (i + batchSize).clamp(0, programs.length);
      final chunk = programs.sublist(i, end);
      
      await _withBulkWrite(() async {
        await _queueWrite((db) async {
          await db.transaction((txn) async {
            final batch = txn.batch();
            for (final p in chunk) {
              batch.insert(
                'epg_programs',
                {
                  'epgId': epgId,
                  'startTs': p['startTs'],
                  'endTs': p['endTs'],
                  'title': p['title'],
                  'description': p['description'],
                  'imageUrl': p['imageUrl'],
                  'category': p['category'],
                },
                conflictAlgorithm: ConflictAlgorithm.replace,
              );
            }
            await batch.commit(noResult: true);
          });
        });
      });
      
      // Small breathe window for UI/readers between batches
      if (i + batchSize < programs.length) {
        await Future.delayed(Duration.zero);
      }
    }
  }

  Future<Map<String, List<Map<String, dynamic>>>> getNowNextProgramsByChannel({
    int futureHours = 12,
  }) async {
    final nowMs = DateTime.now().millisecondsSinceEpoch;
    final endMs = nowMs + (futureHours * 3600000);
    final result = <String, List<Map<String, dynamic>>>{};

    final rows = await _withDbRead((db) {
      return db.rawQuery(
        '''
        WITH candidates AS (
          SELECT *,
            CASE
              WHEN startTs <= ? AND endTs >= ? THEN 0
              ELSE 1
            END AS slot
          FROM epg_programs
          WHERE (startTs <= ? AND endTs >= ?)
             OR (startTs > ? AND startTs < ?)
        ),
        ranked AS (
          SELECT *,
            ROW_NUMBER() OVER (
              PARTITION BY epgId, slot
              ORDER BY CASE WHEN slot = 0 THEN endTs ELSE startTs END ASC
            ) AS rowNum
          FROM candidates
        )
        SELECT epgId, startTs, endTs, title, description, imageUrl
        FROM ranked
        WHERE rowNum = 1
        ORDER BY epgId ASC, slot ASC, startTs ASC
        ''',
        [nowMs, nowMs, nowMs, nowMs, nowMs, endMs],
      );
    });

    for (final row in rows) {
      final epgId = row['epgId'] as String?;
      if (epgId == null || epgId.isEmpty) continue;
      result.putIfAbsent(epgId, () => []).add(row);
    }
    return result;
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
    await _withBulkWrite(() async {
      await _queueWrite((db) async {
        await db.delete('epg_programs');
        await db.delete('epg_channel_hash');
      });
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
    await _withBulkWrite(() async {
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
    });
  }

  /// Bulk insert programs for multiple channels.
  Future<void> insertAllPrograms(
      Map<String, List<Map<String, dynamic>>> programsByChannel) async {
    if (programsByChannel.isEmpty) return;

    // Use a fixed-size buffer to batch inserts without flattening everything first
    const int batchSize = 500;
    final buffer = <Map<String, dynamic>>[];

    // Helper to flush the buffer to DB
    Future<void> flushBuffer(List<Map<String, dynamic>> batchItems) async {
      if (batchItems.isEmpty) return;

      await _withBulkWrite(() async {
        await _queueWrite((db) async {
          await db.transaction((txn) async {
            final batch = txn.batch();
            for (final p in batchItems) {
              batch.insert(
                'epg_programs',
                p,
                conflictAlgorithm: ConflictAlgorithm.replace,
              );
            }
            await batch.commit(noResult: true);
          });
        });
      });
    }

    for (final entry in programsByChannel.entries) {
      final epgId = entry.key;
      for (final p in entry.value) {
        // Construct the exact map needed for insertion directly
        buffer.add({
          'epgId': epgId,
          'startTs': p['startTs'],
          'endTs': p['endTs'],
          'title': p['title'],
          'description': p['description'],
          'imageUrl': p['imageUrl'],
          'category': p['category'],
        });

        if (buffer.length >= batchSize) {
          await flushBuffer(List.from(buffer));
          buffer.clear();
          // Yield to event loop to keep UI responsive
          await Future.delayed(Duration.zero);
        }
      }
    }

    // Flush any remaining items
    if (buffer.isNotEmpty) {
      await flushBuffer(List.from(buffer));
    }
  }

  Map<String, dynamic> _hydrateAttrs(Map<String, dynamic> row) {
    // Create a mutable copy — sqflite returns unmodifiable maps.
    final copy = Map<String, dynamic>.from(row);
    if (copy['attrs'] != null) {
      try {
        copy['attributes'] = json.decode(copy['attrs'] as String);
      } catch (_) {}
    }
    copy.remove('attrs');
    return copy;
  }
}
