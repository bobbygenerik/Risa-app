import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import '../utils/debug_helper.dart';

/// Lightweight SQLite wrapper for channels/EPG data.
/// Keeps UI responsive on huge playlists by paging from disk.

part 'local_db/local_db_core.dart';
part 'local_db/local_db_channels.dart';
part 'local_db/local_db_epg.dart';

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
  int _bulkWriteDepth = 0;
  DateTime? _lastResetTime;

  bool get isReady => _isInit && _db != null;
}
