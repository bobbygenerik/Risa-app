import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/services/service_validator.dart';
import 'package:iptv_player/utils/artwork_diagnostics.dart';
import 'dart:math' as math;
import 'package:iptv_player/widgets/brand_button.dart';
import 'package:iptv_player/widgets/tv_focusable.dart';

part 'epg_diagnostic/epg_diagnostic_stats.dart';
part 'epg_diagnostic/epg_diagnostic_epg_tab.dart';
part 'epg_diagnostic/epg_diagnostic_widgets.dart';
part 'epg_diagnostic/epg_diagnostic_system_tab.dart';

enum _MatchFilter { all, matched, unmatched }

class _MatchEntry {
  final Channel channel;
  final bool matched;
  final String id;

  const _MatchEntry({
    required this.channel,
    required this.matched,
    required this.id,
  });
}

class EpgDiagnosticScreen extends StatefulWidget {
  const EpgDiagnosticScreen({super.key});

  @override
  State<EpgDiagnosticScreen> createState() => _EpgDiagnosticScreenState();
}

class _EpgDiagnosticScreenState extends State<EpgDiagnosticScreen> {
  Future<Map<String, int>>? _statsFuture;
  int _lastChannelCount = -1;
  int _lastEpgCount = -1;
  int _diagnosticChannelCount = 0;
  int _diagnosticEpgCount = 0;
  int _artworkDebugTick = 0;
  bool _statsInFlight = false;
  DateTime? _lastRefreshAt;
  bool _wasEpgBusy = false;
  bool _fullScanInFlight = false;
  int _fullScanMatched = 0;
  int _fullScanTotal = 0;
  double _fullScanProgress = 0.0;
  Duration? _fullScanDuration;
  final List<_MatchEntry> _pageEntries = [];
  int _pageOffset = 0;
  bool _pageLoading = false;
  bool _pageHasMore = true;
  _MatchFilter _matchFilter = _MatchFilter.all;
  String _pageSignature = '';
  static const int _pageSize = 100;
  static const int _scanChunkSize = 200;
  final FocusNode _reloadFocus = FocusNode(debugLabel: 'EpgReload');
  final FocusNode _fullScanFocus = FocusNode(debugLabel: 'EpgFullScan');
  final FocusNode _configureFocus = FocusNode(debugLabel: 'EpgConfigure');
  final FocusNode _loadMoreFocus = FocusNode(debugLabel: 'EpgLoadMore');
  final FocusNode _backFocus = FocusNode(debugLabel: 'EpgDiagBack');
  final FocusNode _epgTabFocus = FocusNode(debugLabel: 'EpgDiagTabEpg');
  final FocusNode _systemTabFocus = FocusNode(debugLabel: 'EpgDiagTabSystem');
  int _selectedTab = 0;
  bool _diagnosticFocusEstablished = false;
  final List<FocusNode> _chipFocusNodes = List.generate(
    3,
    (index) => FocusNode(debugLabel: 'EpgMatchChip$index'),
  );

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _refreshStats());
    WidgetsBinding.instance.addPostFrameCallback((_) => _requestInitialFocus());
  }

  void _onEpgLoadFinished() {
    if (!mounted) return;
    _lastChannelCount = -1;
    _lastEpgCount = -1;
    _refreshStats();
    _resetPagedMatches();
    unawaited(_loadNextMatchPage());
  }
  @override
  void dispose() {
    _reloadFocus.dispose();
    _fullScanFocus.dispose();
    _configureFocus.dispose();
    _loadMoreFocus.dispose();
    _backFocus.dispose();
    _epgTabFocus.dispose();
    _systemTabFocus.dispose();
    for (final node in _chipFocusNodes) {
      node.dispose();
    }
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    _writeDebugMarker('epg_diagnostic_build');
    return Scaffold(
      backgroundColor: AppTheme.darkBackground,
      appBar: AppBar(
        title: const Text('EPG Diagnostic'),
        backgroundColor: AppTheme.darkBackground,
        leading: Focus(
          focusNode: _backFocus,
          onKeyEvent: (node, event) {
            if (event is! KeyDownEvent) return KeyEventResult.ignored;
            if (event.logicalKey == LogicalKeyboardKey.enter ||
                event.logicalKey == LogicalKeyboardKey.select ||
                event.logicalKey == LogicalKeyboardKey.goBack) {
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              } else {
                context.go('/home');
              }
              return KeyEventResult.handled;
            }
            if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
              _epgTabFocus.requestFocus();
              return KeyEventResult.handled;
            }
            return KeyEventResult.ignored;
          },
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              } else {
                context.go('/home');
              }
            },
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            child: FocusTraversalGroup(
              policy: WidgetOrderTraversalPolicy(),
              child: Row(
                children: [
                  _buildDiagnosticTabButton(
                    index: 0,
                    label: 'EPG',
                    focusNode: _epgTabFocus,
                    neighborFocus: _systemTabFocus,
                  ),
                  const SizedBox(width: 12),
                  _buildDiagnosticTabButton(
                    index: 1,
                    label: 'System',
                    focusNode: _systemTabFocus,
                    neighborFocus: _epgTabFocus,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Consumer2<IncrementalEpgService, ChannelProvider>(
        builder: (context, epgService, channelProvider, _) {
          final totalChannels = channelProvider.channelCount;
          final epgCount = epgService.availableChannels.length;
          final isEpgBusy = epgService.isDownloading ||
              epgService.isParsing ||
              epgService.isLoading;
          final displayChannels = _diagnosticChannelCount > 0
              ? _diagnosticChannelCount
              : totalChannels;
          final displayEpg =
              _diagnosticEpgCount > 0 ? _diagnosticEpgCount : epgCount;
          _maybeRefreshStats(displayChannels, displayEpg, isEpgBusy,
              channelProvider.isLoading);
          if (_wasEpgBusy && !isEpgBusy) {
            _onEpgLoadFinished();
          }
          _wasEpgBusy = isEpgBusy;
          _updatePageSignature(displayChannels, displayEpg);
          if (_pageEntries.isEmpty &&
              !_pageLoading &&
              _pageHasMore &&
              !isEpgBusy &&
              !channelProvider.isLoading) {
            Future.microtask(() {
              if (mounted) {
                _loadNextMatchPage();
              }
            });
          }

          return IndexedStack(
            index: _selectedTab,
            children: [
              FocusTraversalGroup(
                policy: WidgetOrderTraversalPolicy(),
                child: _buildEpgDiagnosticsTab(
                  context,
                  epgService,
                  channelProvider,
                  displayChannels,
                  displayEpg,
                ),
              ),
              FocusTraversalGroup(
                policy: WidgetOrderTraversalPolicy(),
                child: _buildSystemDiagnosticsTab(
                  context,
                  epgService,
                  channelProvider,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
