import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/providers/content_provider.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/content.dart';
import 'package:iptv_player/widgets/voice_search_button.dart';
import 'package:iptv_player/widgets/content_focus_provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with ContentFocusRegistrant<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _textFieldFocusNode = FocusNode();
  final FocusNode _voiceButtonFocusNode = FocusNode();

  List<Channel> _liveTvResults = [];
  List<Content> _movieResults = [];
  List<Content> _seriesResults = [];
  bool _isSearching = false;
  bool _hasSearched = false;

  static const int _resultsPerSection = 12;
  int _liveTvDisplayCount = _resultsPerSection;
  int _moviesDisplayCount = _resultsPerSection;
  int _seriesDisplayCount = _resultsPerSection;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _textFieldFocusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _textFieldFocusNode.dispose();
    _voiceButtonFocusNode.dispose();
    super.dispose();
  }

  @override
  bool handleContentFocusRequest() {
    _textFieldFocusNode.requestFocus();
    return true;
  }

  void _performSearch(String query) {
    if (query.trim().isEmpty) {
      setState(() {
        _liveTvResults = [];
        _movieResults = [];
        _seriesResults = [];
        _isSearching = false;
        _hasSearched = false;
      });
      return;
    }

    setState(() {
      _isSearching = true;
      _hasSearched = true;
    });

    final channelProvider = Provider.of<ChannelProvider>(context, listen: false);
    final contentProvider = Provider.of<ContentProvider>(context, listen: false);

    final liveTv = channelProvider.searchChannels(query);
    final allContent = contentProvider.searchContent(query);
    final movies = allContent.where((c) => c.type == ContentType.movie).toList();
    final series = allContent.where((c) => c.type == ContentType.series).toList();

    setState(() {
      _liveTvResults = liveTv;
      _movieResults = movies;
      _seriesResults = series;
      _isSearching = false;
      _liveTvDisplayCount = _resultsPerSection;
      _moviesDisplayCount = _resultsPerSection;
      _seriesDisplayCount = _resultsPerSection;
    });
  }

  void _handleVoiceResult(String query) {
    _searchController.text = query;
    _performSearch(query);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppTheme.darkBackground,
      ),
      child: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.fromLTRB(120, 24, 120, 16),
            child: Row(
              children: [
                Expanded(
                  child: Focus(
                    focusNode: _textFieldFocusNode,
                    onKeyEvent: (node, event) {
                      if (event is KeyDownEvent) {
                        if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
                          _voiceButtonFocusNode.requestFocus();
                          return KeyEventResult.handled;
                        }
                      }
                      return KeyEventResult.ignored;
                    },
                    child: TextField(
                      controller: _searchController,
                      enableInteractiveSelection: false,
                      style: const TextStyle(fontSize: 18, color: Colors.white),
                      onTap: () {
                        final text = _searchController.text;
                        _searchController.selection =
                            TextSelection.collapsed(offset: text.length);
                      },
                      decoration: InputDecoration(
                        hintText: 'Search for channels, movies, or series...',
                        hintStyle: TextStyle(fontSize: 16, color: Colors.white.withValues(alpha: 0.5)),
                        prefixIcon: const Icon(Icons.search, color: AppTheme.primaryBlue, size: 24),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                        filled: true,
                        fillColor: Colors.white.withValues(alpha: 0.05),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.2)),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: AppTheme.primaryBlue, width: 2),
                        ),
                      ),
                      onSubmitted: _performSearch,
                      onChanged: (value) {
                        if (value.isEmpty) {
                          _performSearch('');
                        }
                      },
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                VoiceSearchButton(
                  usePillStyle: true,
                  label: 'Voice',
                  onSearchResult: _handleVoiceResult,
                  focusNode: _voiceButtonFocusNode,
                  onLeftArrow: () => _textFieldFocusNode.requestFocus(),
                ),
              ],
            ),
          ),
          // Results
          Expanded(
            child: _isSearching
                ? const Center(child: CircularProgressIndicator())
                : _buildResultsList(),
          ),
        ],
      ),
    );
  }

  Widget _buildResultsList() {
    if (!_hasSearched) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.search,
              size: 80,
              color: AppTheme.textSecondary.withAlpha((0.3 * 255).round()),
            ),
            const SizedBox(height: 16),
            const Text(
              'Search for channels, movies, or series',
              style: TextStyle(color: AppTheme.textSecondary, fontSize: 16),
            ),
          ],
        ),
      );
    }

    if (_liveTvResults.isEmpty && _movieResults.isEmpty && _seriesResults.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.search_off,
              size: 80,
              color: AppTheme.textSecondary.withAlpha((0.3 * 255).round()),
            ),
            const SizedBox(height: 16),
            const Text(
              'No results found',
              style: TextStyle(color: AppTheme.textSecondary, fontSize: 16),
            ),
          ],
        ),
      );
    }

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
      children: [
        if (_liveTvResults.isNotEmpty) ...[ 
          _buildSectionHeader('Live TV', Icons.live_tv, _liveTvResults.length),
          const SizedBox(height: 12),
          _buildLiveTvGrid(_liveTvResults.take(_liveTvDisplayCount).toList()),
          if (_liveTvResults.length > _liveTvDisplayCount)
            _buildLoadMoreButton(() {
              setState(() => _liveTvDisplayCount += _resultsPerSection);
            }),
          const SizedBox(height: 32),
        ],
        if (_movieResults.isNotEmpty) ...[
          _buildSectionHeader('Movies', Icons.movie, _movieResults.length),
          const SizedBox(height: 12),
          _buildContentGrid(_movieResults.take(_moviesDisplayCount).toList()),
          if (_movieResults.length > _moviesDisplayCount)
            _buildLoadMoreButton(() {
              setState(() => _moviesDisplayCount += _resultsPerSection);
            }),
          const SizedBox(height: 32),
        ],
        if (_seriesResults.isNotEmpty) ...[
          _buildSectionHeader('Series', Icons.tv, _seriesResults.length),
          const SizedBox(height: 12),
          _buildContentGrid(_seriesResults.take(_seriesDisplayCount).toList()),
          if (_seriesResults.length > _seriesDisplayCount)
            _buildLoadMoreButton(() {
              setState(() => _seriesDisplayCount += _resultsPerSection);
            }),
        ],
      ],
    );
  }

  Widget _buildSectionHeader(String title, IconData icon, int count) {
    return Row(
      children: [
        Icon(icon, color: AppTheme.primaryBlue, size: 20),
        const SizedBox(width: 8),
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: AppTheme.textPrimary,
          ),
        ),
        const SizedBox(width: 12),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: AppTheme.primaryBlue.withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            count.toString(),
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: AppTheme.primaryBlue,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLoadMoreButton(VoidCallback onPressed) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: TextButton.icon(
          onPressed: onPressed,
          icon: const Icon(Icons.expand_more, color: AppTheme.primaryBlue),
          label: const Text('Load More', style: TextStyle(color: AppTheme.primaryBlue)),
          style: TextButton.styleFrom(
            backgroundColor: AppTheme.primaryBlue.withAlpha((0.1 * 255).round()),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          ),
        ),
      ),
    );
  }

  Widget _buildLiveTvGrid(List<Channel> channels) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 6,
        childAspectRatio: 1.2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: channels.length,
      itemBuilder: (context, index) {
        final channel = channels[index];
        return Focus(
          onKeyEvent: (node, event) {
            if (event is KeyDownEvent &&
                (event.logicalKey == LogicalKeyboardKey.select ||
                    event.logicalKey == LogicalKeyboardKey.enter)) {
              context.push('/player', extra: channel);
              return KeyEventResult.handled;
            }
            return KeyEventResult.ignored;
          },
          child: Builder(
            builder: (context) {
              final isFocused = Focus.of(context).hasFocus;
              return InkWell(
                onTap: () => context.push('/player', extra: channel),
                borderRadius: BorderRadius.circular(12),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 150),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.05),
                    borderRadius: BorderRadius.circular(12),
                    border: isFocused ? Border.all(
                      color: AppTheme.primaryBlue,
                      width: 3,
                    ) : null,
                    boxShadow: isFocused
                        ? [
                            BoxShadow(
                              color: AppTheme.primaryBlue.withAlpha((0.4 * 255).round()),
                              blurRadius: 16,
                              spreadRadius: 2,
                            ),
                          ]
                        : null,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (channel.logoUrl != null && channel.logoUrl!.isNotEmpty)
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Image.network(
                              channel.logoUrl!,
                              fit: BoxFit.contain,
                              errorBuilder: (_, __, ___) => const Icon(
                                Icons.tv,
                                size: 32,
                                color: AppTheme.textSecondary,
                              ),
                            ),
                          ),
                        )
                      else
                        const Expanded(
                          child: Icon(Icons.tv, size: 32, color: AppTheme.textSecondary),
                        ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          channel.name,
                          style: const TextStyle(fontSize: 12, color: AppTheme.textPrimary),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildContentGrid(List<Content> items) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 6,
        childAspectRatio: 0.7,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return Focus(
          onKeyEvent: (node, event) {
            if (event is KeyDownEvent &&
                (event.logicalKey == LogicalKeyboardKey.select ||
                    event.logicalKey == LogicalKeyboardKey.enter)) {
              context.push('/content/${Uri.encodeComponent(item.id)}', extra: item);
              return KeyEventResult.handled;
            }
            return KeyEventResult.ignored;
          },
          child: Builder(
            builder: (context) {
              final isFocused = Focus.of(context).hasFocus;
              return InkWell(
                onTap: () => context.push('/content/${Uri.encodeComponent(item.id)}', extra: item),
                borderRadius: BorderRadius.circular(12),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 150),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: isFocused ? AppTheme.primaryBlue : Colors.transparent,
                      width: 3,
                    ),
                    boxShadow: isFocused
                        ? [
                            BoxShadow(
                              color: AppTheme.primaryBlue.withAlpha((0.4 * 255).round()),
                              blurRadius: 16,
                              spreadRadius: 2,
                            ),
                          ]
                        : null,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppTheme.cardBackground,
                            borderRadius: BorderRadius.circular(12),
                            image: item.imageUrl != null
                                ? DecorationImage(
                                    image: NetworkImage(item.imageUrl!),
                                    fit: BoxFit.cover,
                                  )
                                : null,
                          ),
                          child: item.imageUrl == null
                              ? const Center(
                                  child: Icon(Icons.movie, color: AppTheme.textSecondary),
                                )
                              : null,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          item.title,
                          style: const TextStyle(fontSize: 12, color: AppTheme.textPrimary),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
