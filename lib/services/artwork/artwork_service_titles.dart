part of '../live_tv_artwork_service.dart';

extension LiveTvArtworkServiceTitles on LiveTvArtworkService {
  String _titleCacheKey(Program program, [Channel? channel]) {
    final baseTitle =
        _stripEpisodeTitleForLookup(program, channel, program.title);
    final base = _normalizeForFilter(_canonicalArtworkTitle(baseTitle));
    final channelForKey = channel ?? _programChannelLookup[program.id];
    if (channelForKey == null) return base;
    final channelId = (channelForKey.tvgId ?? channelForKey.id).trim();
    if (channelId.isNotEmpty) {
      return '$base|${_normalizeForFilter(channelId)}';
    }
    final hintSource = (channelForKey.groupTitle != null &&
            channelForKey.groupTitle!.trim().isNotEmpty)
        ? channelForKey.groupTitle!
        : channelForKey.name;
    final hint = _normalizeForFilter(hintSource);
    if (hint.isEmpty) return base;
    return '$base|$hint';
  }

  String _globalTitleCacheKey(Program program, [Channel? channel]) {
    final baseTitle =
        _stripEpisodeTitleForLookup(program, channel, program.title);
    final base = _normalizeForFilter(_canonicalArtworkTitle(baseTitle));
    return base.isEmpty ? '' : 'global|$base';
  }

  bool _canUseGlobalTitleCache(Program program, [Channel? channel]) {
    if (!_isTitleCacheEligible(program)) return false;
    final base = _globalTitleCacheKey(program, channel);
    if (base.isEmpty) return false;
    final canonical = base.replaceFirst('global|', '');
    if (_isGenericTitle(canonical)) return false;
    if (_isSportsProgram(program, channel)) return false;
    if (channel != null && _isNewsProgram(program, channel)) return false;
    if (EpgTitleDisambiguation.isUnderSpecified(program.title)) return false;
    return true;
  }

  String _canonicalArtworkTitle(String title) {
    return EPGMatchingUtils.normalizeForArtwork(title);
  }

  String _stripEpisodeTitleForLookup(
    Program program,
    Channel? channel,
    String title,
  ) {
    final trimmed = title.trim();
    if (trimmed.isEmpty) return title;
    final isNews = channel != null && _isNewsProgram(program, channel);
    final isSports = _isSportsProgram(program, channel);
    final isMovie = channel != null && _isMovieProgram(program, channel);
    if (isNews || isSports || isMovie) return title;
    if (EpgTitleDisambiguation.isUnderSpecified(title)) return title;
    final stripped = EPGMatchingUtils.stripEpisodeSubtitleLoose(title);
    if (EpgTitleDisambiguation.isUnderSpecified(stripped) &&
        !EpgTitleDisambiguation.isUnderSpecified(title)) {
      return title;
    }
    return stripped;
  }

  static final RegExp _nonWordWhitespaceRe = RegExp(r'[^\w\s]');
  static final RegExp _whitespaceRe = RegExp(r'\s+');
  static final RegExp _channelSeparatorsRe = RegExp(r'\s*[-:|]\s*');
  static final RegExp _qualityKeywordsRe =
      RegExp(r'\b(hd|fhd|uhd|4k|sd|1080p|720p)\b', caseSensitive: false);
  static final RegExp _networkKeywordsRe =
      RegExp(r'\b(tv|channel|network)\b', caseSensitive: false);

  String _normalizeForFilter(String title) {
    return title
        .toLowerCase()
        .replaceAll(_nonWordWhitespaceRe, '')
        .replaceAll(_whitespaceRe, ' ')
        .trim();
  }

  bool _isGenericTitle(String title) {
    return EPGMatchingUtils.isGenericTitle(title);
  }

  String _cleanChannelNameForQuery(String name) {
    var cleaned = name;
    cleaned = cleaned.replaceAll(_channelSeparatorsRe, ' ');
    cleaned = cleaned.replaceAll(_qualityKeywordsRe, '');
    cleaned = cleaned.replaceAll(_networkKeywordsRe, '');
    cleaned = cleaned.replaceAll(_whitespaceRe, ' ').trim();
    return cleaned;
  }

  List<String> _buildArtworkQueryTitles(Program program, Channel? channel) {
    final rawTitle = program.title.trim();
    final stripped = _stripEpisodeTitleForLookup(program, channel, rawTitle);
    final original = stripped.trim().isEmpty ? rawTitle : stripped.trim();
    final canonical = _canonicalArtworkTitle(original).trim();
    final isNews = EPGMatchingUtils.isLikelyNewsTitle(canonical);
    final normalizedLookup = EPGMatchingUtils.normalizeTitleForLookup(
      canonical,
      aggressiveForNews: isNews,
    );
    final cacheKey = _titleCacheKey(program, channel);
    final cached = _artworkQueryTitleCache[cacheKey];
    if (cached != null && cached.isNotEmpty) {
      return cached;
    }
    final titles = <String>[];
    void add(String value) {
      if (value.isEmpty || titles.contains(value)) return;
      titles.add(value);
    }

    void addVariant(String value) {
      if (value.isEmpty) return;
      add(value);
      final normalized = _normalizeArtworkVariant(value);
      if (normalized.isNotEmpty && normalized != value) {
        add(normalized);
      }
      if (value.contains(':')) {
        final primary = value.split(':').first.trim();
        if (primary.isNotEmpty && primary != value) {
          add(primary);
          final normalizedPrimary = _normalizeArtworkVariant(primary);
          if (normalizedPrimary.isNotEmpty && normalizedPrimary != primary) {
            add(normalizedPrimary);
          }
        }
      }
    }

    final underSpecified = EpgTitleDisambiguation.isUnderSpecified(rawTitle);
    final channelName =
        channel == null ? '' : _cleanChannelNameForQuery(channel.name);
    final groupTitle = channel == null
        ? ''
        : _cleanChannelNameForQuery(channel.groupTitle ?? '');

    if (underSpecified) {
      for (final hint in EpgTitleDisambiguation.artworkQueryHints(
        program,
        channel,
      )) {
        addVariant(hint);
      }
    }

    if ((_isGenericTitle(canonical) || isNews || underSpecified) &&
        channelName.isNotEmpty) {
      add('$canonical $channelName');
    }
    if ((_isGenericTitle(canonical) || isNews || underSpecified) &&
        groupTitle.isNotEmpty) {
      add('$canonical $groupTitle');
    }
    if ((_isGenericTitle(canonical) || isNews || underSpecified) &&
        channelName.isNotEmpty &&
        groupTitle.isNotEmpty) {
      add('$canonical $channelName $groupTitle');
    }
    if (!underSpecified) {
      addVariant(canonical);
    }
    if (normalizedLookup != canonical) {
      addVariant(normalizedLookup);
    }
    if (canonical != original) addVariant(original);
    if (original == rawTitle && canonical != rawTitle) {
      addVariant(rawTitle);
    }
    if ((_isGenericTitle(canonical) || isNews) && channelName.isNotEmpty) {
      add(channelName);
    }
    if ((_isGenericTitle(canonical) || isNews) && groupTitle.isNotEmpty) {
      add(groupTitle);
    }
    if (canonical.length <= 6 && channelName.isNotEmpty) {
      add(channelName);
    }
    if (canonical.length <= 6 && groupTitle.isNotEmpty) {
      add(groupTitle);
    }

    if (groupTitle.isNotEmpty) {
      final lowerGroup = groupTitle.toLowerCase();
      if (lowerGroup.contains('sports')) {
        addVariant('$canonical sports');
      }
      if (lowerGroup.contains('news')) {
        addVariant('$canonical news');
      }
      if (lowerGroup.contains('kids') || lowerGroup.contains('child')) {
        addVariant('$canonical kids');
      }
    }

    for (final extra in ArtworkQueryExpander.expand(program, channel)) {
      addVariant(extra);
    }

    if (underSpecified) {
      addVariant(canonical);
    }

    if (cacheKey.isNotEmpty) {
      _artworkQueryTitleCache[cacheKey] = List<String>.from(titles);
    }
    return titles;
  }

  String _normalizeArtworkVariant(String title) {
    return EPGMatchingUtils.normalizeArtworkVariant(title);
  }
}
