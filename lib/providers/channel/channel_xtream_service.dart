import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:iptv_player/models/epg/catchup_info.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/services/xtream_credential_store.dart';
import 'package:iptv_player/services/xtream_codes_service.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/utils/url_redactor.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'channel_xtream_service_deps.dart';

/// Xtream credential resolution, live metadata priming, and stream-id helpers.
class ChannelXtreamService {
  ChannelXtreamService(this.deps);

  final ChannelXtreamServiceDeps deps;

  static final RegExp _httpPrefixRe = RegExp(r'^https?://');
  static final RegExp _leadingSlashRe = RegExp(r'^/');
  static final RegExp _trailingSlashRe = RegExp(r'/$');
  static final RegExp _leadingSlashesRe = RegExp(r'^/+');

  bool _liveMetadataLoaded = false;
  String? _liveMetadataKey;
  bool _epgRefreshPending = false;

  static String buildXtreamServerUrl(Uri uri) {
    final portSegment = (uri.hasPort && uri.port != 80 && uri.port != 443)
        ? ':${uri.port}'
        : '';
    return '${uri.scheme}://${uri.host}$portSegment';
  }

  String? extractStreamIdFromUrl(String url) {
    if (url.isEmpty) return null;
    try {
      final uri = Uri.parse(url);
      final segments =
          uri.pathSegments.where((segment) => segment.isNotEmpty).toList();
      if (segments.isEmpty) return null;
      var last = segments.last;
      final dotIndex = last.indexOf('.');
      if (dotIndex > 0) {
        last = last.substring(0, dotIndex);
      }
      return last.isNotEmpty ? last : null;
    } catch (e) {
      debugLog('ChannelProvider: extractStreamIdFromUrl parse failed: $e');
      final qIndex = url.indexOf('?');
      final clean = qIndex == -1 ? url : url.substring(0, qIndex);
      final parts = clean.split('/').where((p) => p.isNotEmpty).toList();
      if (parts.isEmpty) return null;
      var last = parts.last;
      final dotIndex = last.indexOf('.');
      if (dotIndex > 0) {
        last = last.substring(0, dotIndex);
      }
      return last.isNotEmpty ? last : null;
    }
  }

  String? resolveXtreamLogoUrl(String? rawLogoUrl, String serverUrl) {
    final raw = rawLogoUrl?.trim() ?? '';
    if (raw.isEmpty || raw.toLowerCase() == 'null') {
      return null;
    }
    if (raw.startsWith('data:')) {
      return raw;
    }
    if (raw.startsWith('//')) {
      final scheme = Uri.tryParse(serverUrl)?.scheme;
      final safeScheme =
          (scheme != null && scheme.isNotEmpty) ? scheme : 'https';
      return '$safeScheme:$raw';
    }
    try {
      final parsed = Uri.parse(raw);
      if (parsed.hasScheme && parsed.host.isNotEmpty) {
        return parsed.toString();
      }
      final base = Uri.parse(serverUrl);
      return base.resolve(raw).toString();
    } catch (e) {
      debugLog('ChannelProvider: resolveXtreamLogoUrl failed: $e');
      return raw;
    }
  }

  Future<Map<String, String>?> resolveXtreamCredentials(String m3uUrl) async {
    String? serverUrl;
    String? username;
    String? password;

    final uri = Uri.tryParse(m3uUrl);
    if (uri != null &&
        uri.scheme.isNotEmpty &&
        uri.host.isNotEmpty &&
        uri.queryParameters.isNotEmpty) {
      username = uri.queryParameters['username'];
      password = uri.queryParameters['password'];
      if (username != null && password != null) {
        serverUrl = buildXtreamServerUrl(uri);
      }
    }

    if (serverUrl == null || username == null || password == null) {
      final prefs = await SharedPreferences.getInstance();
      final server = prefs.getString('xtream_server') ?? '';
      final storedUser = prefs.getString('xtream_username') ?? '';
      final storedPass = await XtreamCredentialStore.readGlobalPassword();
      if (server.isEmpty || storedUser.isEmpty || storedPass.isEmpty) {
        return null;
      }
      try {
        final cleaned = server.trim();
        Uri baseUri = Uri.parse(cleaned);
        if (baseUri.scheme.isEmpty || baseUri.host.isEmpty) {
          baseUri =
              Uri.parse('https://${cleaned.replaceAll(_httpPrefixRe, '')}');
        }
        serverUrl = buildXtreamServerUrl(baseUri);
        username ??= storedUser;
        password ??= storedPass;
      } catch (e) {
        debugLog('ChannelProvider: resolveXtreamCredentials parse failed: $e');
        return null;
      }
    }

    return {
      'serverUrl': serverUrl,
      'username': username,
      'password': password,
    };
  }

  Future<void> primeLiveMetadata(String m3uUrl) async {
    final creds = await resolveXtreamCredentials(m3uUrl);
    if (creds == null) return;

    final serverUrl = creds['serverUrl'];
    final username = creds['username'];
    final password = creds['password'];

    if (serverUrl == null || username == null || password == null) return;
    final metadataKey = '$serverUrl|$username';

    if (_liveMetadataLoaded && _liveMetadataKey == metadataKey) {
      return;
    }
    _liveMetadataKey = metadataKey;

    try {
      try {
        final parsedServerUri = Uri.parse(serverUrl);
        final epgUri = parsedServerUri.replace(
          path: (parsedServerUri.path.trim().isEmpty)
              ? 'xmltv.php'
              : '${parsedServerUri.path.replaceAll(_leadingSlashRe, '')}/xmltv.php',
          queryParameters: {
            'username': username.replaceAll(' ', ''),
            'password': password.replaceAll(' ', ''),
          },
        );
        final prefs = await SharedPreferences.getInstance();
        final previous = prefs.getString('epg_url');
        if (previous != epgUri.toString()) {
          await prefs.setString('epg_url', epgUri.toString());
          await prefs.setString('custom_epg_url', epgUri.toString());
          debugLog(
              'ChannelProvider: Saved Xtream EPG URL from playlist: ${epgUri.toString()}');
          deps.scheduleEpgRefresh(forceRefresh: true);
        }
      } catch (e) {
        debugLog('ChannelProvider: Failed to derive Xtream EPG URL: $e');
      }

      final xtreamService = XtreamCodesService(
        serverUrl: serverUrl,
        username: username,
        password: password,
      );

      final epgService = deps.getEpgService();
      if (epgService != null) {
        epgService.setXtreamCredentials(
          serverUrl: serverUrl,
          username: username,
          password: password,
        );
      }

      final liveStreams = await xtreamService.getAllLiveStreams();
      if (liveStreams.isEmpty) return;

      debugLog(
          'ChannelProvider: Retrieved ${liveStreams.length} live streams from Xtream API for EPG probing');

      if (deps.channelMaps.isEmpty) {
        final previewLimit = 200;
        final categoryNameById = <String, String>{};
        try {
          final cats = await xtreamService.getLiveCategories();
          for (final c in cats) {
            final id = (c['category_id'] ?? '').toString();
            final name = (c['category_name'] ?? '').toString();
            if (id.isNotEmpty) categoryNameById[id] = name;
          }
        } catch (e) {
          debugLog('ChannelProvider: fetching live categories failed: $e');
        }

        final preview = <Map<String, dynamic>>[];
        for (final s in liveStreams.take(previewLimit)) {
          final streamId = (s['stream_id'] ?? '').toString();
          if (streamId.isEmpty) continue;
          final name = (s['name'] ?? '').toString();
          final categoryId = (s['category_id'] ?? '').toString();
          final groupTitle = categoryNameById[categoryId] ?? 'Live';
          final logoUrl =
              resolveXtreamLogoUrl(s['stream_icon']?.toString(), serverUrl);
          final epgId = (s['epg_channel_id'] ?? s['epg_id'])?.toString();

          final url =
              '${serverUrl.replaceAll(_trailingSlashRe, '')}/live/$username/$password/$streamId.ts';
          preview.add({
            'id': streamId,
            'name': name.isNotEmpty ? name : streamId,
            'url': url,
            'logoUrl': logoUrl,
            'groupTitle': groupTitle,
            'tvgId': epgId,
          });
        }
        if (preview.isNotEmpty) {
          deps.channelMaps
            ..clear()
            ..addAll(preview);
          deps.clearChannelCache();
          await deps.rebuildChannelCachesAsync();
          deps.setChannelCountDb(deps.channelMaps.length);
          deps.clearCachedCategories();
          deps.updateEpgAllowedChannels();
          deps.notifyListeners();
        }
      }

      final Set<String> epgUrls = {};
      final Map<String, String> streamIdToEpgId = {};
      final Map<String, String> nameToEpgId = {};
      final Map<String, CatchupInfo> catchupConfig = {};
      int maxCatchupHours = 0;

      for (final s in liveStreams) {
        final streamId = (s['stream_id'] ?? '').toString();
        final archiveFlag = s['tv_archive'];
        final archiveEnabled = archiveFlag == 1 ||
            archiveFlag == '1' ||
            archiveFlag == true ||
            archiveFlag == 'true';
        final durationDays = int.tryParse(
                (s['tv_archive_duration'] ?? s['archive_duration'] ?? '')
                    .toString()) ??
            0;
        if (archiveEnabled && streamId.isNotEmpty && durationDays > 0) {
          final durationHours = durationDays * 24;
          if (durationHours > maxCatchupHours) {
            maxCatchupHours = durationHours;
          }
          final candidates = <String>[
            (s['epg_channel_id'] ?? s['epg_id'] ?? '').toString(),
            (s['name'] ?? '').toString(),
            streamId,
          ];
          for (final candidate in candidates) {
            if (candidate.isEmpty) continue;
            final normalized =
                IncrementalEpgService.normalizeForFilter(candidate);
            if (normalized.isEmpty) continue;
            catchupConfig.putIfAbsent(
                normalized,
                () => CatchupInfo(
                    streamId: streamId, durationHours: durationHours));
          }
        }
        final epgCandidate =
            (s['epg'] ?? s['stream_epg'] ?? s['epg_channel_id'] ?? s['epg_url'])
                ?.toString();
        if (epgCandidate != null && epgCandidate.isNotEmpty) {
          if (epgCandidate.startsWith('http')) {
            epgUrls.add(epgCandidate);
          } else if (epgCandidate.startsWith('/') ||
              epgCandidate.contains('xmltv') ||
              epgCandidate.contains('.php')) {
            try {
              final resolved =
                  '${serverUrl.replaceAll(_trailingSlashRe, '')}/${epgCandidate.replaceAll(_leadingSlashesRe, '')}';
              epgUrls.add(resolved);
            } catch (e) {
              debugLog('ChannelProvider: EPG URL resolve failed: $e');
            }
          } else {
            if (streamId.isNotEmpty) {
              streamIdToEpgId[streamId] = epgCandidate;
            }
          }
        }
        final epgId = (s['epg_channel_id'] ?? s['epg_id'])?.toString();
        if (epgId != null && epgId.isNotEmpty) {
          if (streamId.isNotEmpty) streamIdToEpgId[streamId] = epgId;
          final rawName = (s['name'] ?? '').toString();
          final normalizedName =
              IncrementalEpgService.normalizeForFilter(rawName);
          if (normalizedName.isNotEmpty) {
            nameToEpgId[normalizedName] = epgId;
          }
        }
      }

      if (catchupConfig.isNotEmpty && epgService != null) {
        debugLog(
            'ChannelProvider: Catch-up enabled for ${catchupConfig.length} channels (max ${maxCatchupHours}h)');
        epgService.setCatchupConfig(catchupConfig, triggerRefresh: true);
      }

      final sharedPrefs = await SharedPreferences.getInstance();

      String? accepted;
      if (epgUrls.isNotEmpty) {
        accepted = await _probeEpgCandidates(epgUrls);
      }
      if (accepted == null &&
          epgUrls.isNotEmpty &&
          username.isNotEmpty &&
          password.isNotEmpty) {
        debugLog(
            'ChannelProvider: Attempting credentialed probes using Xtream creds');
        final baseHost = Uri.parse(serverUrl).host;
        accepted = await _probeEpgCandidates(
          epgUrls,
          hostFilter: baseHost,
          transform: (candidate) {
            final uri = Uri.parse(candidate);
            final newQuery = StringBuffer();
            if (uri.query.isNotEmpty) {
              newQuery.write(uri.query);
              newQuery.write('&');
            }
            newQuery.write(
                'username=${Uri.encodeComponent(username)}&password=${Uri.encodeComponent(password)}');
            final credUri = uri.replace(query: newQuery.toString()).toString();
            debugLog(
                'ChannelProvider: Probing credentialed URL: ${redactUrl(credUri)}');
            return credUri;
          },
          onProbeError: (e) =>
              debugLog('ChannelProvider: Credentialed probe failed: $e'),
        );
      }

      if (accepted != null) {
        debugLog(
            'ChannelProvider: Found EPG URL via Xtream API: $accepted (auto-saving)');
        await sharedPrefs.setString('custom_epg_url', accepted);
        try {
          await sharedPrefs.setString('epg_url', accepted);
        } catch (e) {
          debugLog('ChannelProvider: set epg_url failed: $e');
        }
        try {
          final enc = base64Url.encode(utf8.encode(m3uUrl));
          await sharedPrefs.setString('xtream_epg_url_$enc', accepted);
          await sharedPrefs.setString('xtream_epg_url_$serverUrl', accepted);
        } catch (e) {
          debugLog('ChannelProvider: save per-playlist EPG URL failed: $e');
        }
        try {
          await deps.getEpgService()?.initialize(forceRefresh: true);
          final service = deps.getEpgService();
          debugLog(
              'ChannelProvider: EPG initialized after Xtream probe. Available: ${service?.availableChannels.length}, Error: ${service?.error}');
        } catch (e) {
          debugLog(
              'ChannelProvider: EPG initialization failed after Xtream probe: $e');
        }
      }

      if ((streamIdToEpgId.isNotEmpty || nameToEpgId.isNotEmpty) &&
          deps.channelMaps.isNotEmpty) {
        var mapped = 0;
        for (int i = 0; i < deps.channelMaps.length; i++) {
          final map = deps.channelMaps[i];
          final url = (map['url'] as String?) ?? '';
          final name = (map['name'] as String?) ?? '';

          final streamIdFromUrl = extractStreamIdFromUrl(url);
          final normalizedName = IncrementalEpgService.normalizeForFilter(name);

          final epgId = (streamIdFromUrl != null
                  ? streamIdToEpgId[streamIdFromUrl]
                  : null) ??
              (normalizedName.isNotEmpty ? nameToEpgId[normalizedName] : null);

          if (epgId != null) {
            map['tvgId'] = epgId;
            mapped++;
          }
        }
        if (mapped > 0) {
          debugLog(
              'ChannelProvider: Mapped $mapped channels to EPG IDs from Xtream API');
          deps.clearChannelCache();
          deps.updateEpgAllowedChannels();
          deps.notifyListeners();
          unawaited(deps.xtreamEpgMapStore.save(streamIdToEpgId, nameToEpgId));
          deps.scheduleEpgRefresh(forceRefresh: true);
          final service = deps.getEpgService();
          if (service != null &&
              (service.isLoading ||
                  service.isDownloading ||
                  service.isParsing)) {
            if (!_epgRefreshPending) {
              _epgRefreshPending = true;
              Future.delayed(const Duration(seconds: 3), () {
                _epgRefreshPending = false;
                deps.getEpgService()?.initialize(forceRefresh: false);
              });
            }
          }
        }
      }
    } catch (e) {
      debugLog(
          'ChannelProvider: Error probing Xtream live streams for EPG: $e');
    } finally {
      _liveMetadataLoaded = true;
    }
  }

  static const Map<String, String> _probeHeaders = {
    'User-Agent': 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36',
    'Accept': '*/*',
  };

  Future<String?> _probeEpgCandidates(
    Iterable<String> candidates, {
    String hostFilter = '',
    String Function(String candidate)? transform,
    void Function(Object error)? onProbeError,
  }) async {
    final client = http.Client();
    try {
      for (final candidate in candidates) {
        if (hostFilter.isNotEmpty) {
          try {
            if (Uri.parse(candidate).host != hostFilter) continue;
          } catch (_) {
            continue;
          }
        }
        final url = transform?.call(candidate) ?? candidate;
        try {
          if (await _looksLikeXmltv(url, client)) return url;
        } catch (e) {
          onProbeError?.call(e);
          debugLog('ChannelProvider: EPG URL probe failed: $e');
        }
      }
    } finally {
      client.close();
    }
    return null;
  }

  Future<bool> _looksLikeXmltv(String url, http.Client client) async {
    final req = http.Request('GET', Uri.parse(url));
    req.headers.addAll(_probeHeaders);
    final streamed =
        await client.send(req).timeout(const Duration(seconds: 15));
    if (streamed.statusCode != 200) return false;
    final preview = <int>[];
    await for (final chunk in streamed.stream) {
      preview.addAll(chunk);
      if (preview.length >= 4096) break;
    }
    final textPreview = utf8.decode(preview, allowMalformed: true).trimLeft();
    return textPreview.startsWith('<?xml') ||
        textPreview.startsWith('<tv') ||
        streamed.headers['content-type']?.contains('xml') == true;
  }
}
