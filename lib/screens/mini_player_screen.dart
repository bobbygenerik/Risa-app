import 'package:flutter/material.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/screens/enhanced_video_player_screen.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/providers/channel_provider.dart';

class MiniPlayerScreen extends StatefulWidget {
  final Channel? channel;

  const MiniPlayerScreen({super.key, this.channel});

  @override
  State<MiniPlayerScreen> createState() => _MiniPlayerScreenState();
}

class _MiniPlayerScreenState extends State<MiniPlayerScreen> {
  bool _showFavorites = false;
  String _selectedCategory = 'All Channels';
  Channel? _currentChannel;
  Program? _currentProgram;

  final List<String> _categories = [
    'All Channels',
    'News',
    'Sports',
    'Entertainment',
    'Kids',
  ];

  @override
  void initState() {
    super.initState();

    // Use provided channel or default to first available
    if (widget.channel != null) {
      _currentChannel = widget.channel;
    } else {
      final channelProvider = Provider.of<ChannelProvider>(
        context,
        listen: false,
      );
      if (channelProvider.channels.isNotEmpty) {
        _currentChannel = channelProvider.channels.first;
      }
    }

    if (_currentChannel != null) {
      _currentProgram = _getMockCurrentProgram(_currentChannel!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Channel list sidebar
        _buildChannelList(),
        const VerticalDivider(width: 1, color: AppTheme.divider),

        // Player and info
        Expanded(
          child: Column(
            children: [
              // Mini player
              Expanded(child: _buildMiniPlayer()),

              // Now playing info
              _buildNowPlayingInfo(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildChannelList() {
    return Consumer<ChannelProvider>(
      builder: (context, channelProvider, child) {
        List<Channel> channels;

        if (_showFavorites) {
          channels = channelProvider.favoriteChannels;
        } else if (_selectedCategory != 'All Channels') {
          channels = channelProvider.filterByCategory(_selectedCategory);
        } else {
          channels = channelProvider.channels;
        }

        return Container(
          width: context.tvSpacing(300),
          color: AppTheme.sidebarBackground,
          child: Column(
            children: [
              // Header with favorites toggle
              Container(
                padding: EdgeInsets.all(context.tvSpacing(AppSizes.md)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          _showFavorites
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: _showFavorites
                              ? AppTheme.accentRed
                              : AppTheme.textSecondary,
                        ),
                        const SizedBox(width: AppSizes.sm),
                        Text(
                          'Favorites',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const Spacer(),
                        Switch(
                          value: _showFavorites,
                          onChanged: (value) {
                            setState(() {
                              _showFavorites = value;
                            });
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSizes.md),
                    // Category filter
                    if (!_showFavorites)
                      Container(
                        width: double.infinity,
                        padding:
                            EdgeInsets.symmetric(horizontal: context.tvSpacing(AppSizes.md)),
                        decoration: BoxDecoration(
                          color: AppTheme.cardBackground,
                          borderRadius: BorderRadius.circular(
                            context.tvSpacing(AppSizes.radiusMd),
                          ),
                        ),
                        child: DropdownButton<String>(
                          value: _selectedCategory,
                          isExpanded: true,
                          underline: Container(),
                          icon: const Icon(Icons.arrow_drop_down),
                          items: _categories.map((category) {
                            return DropdownMenuItem<String>(
                              value: category,
                              child: Text(category),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              _selectedCategory = value!;
                            });
                          },
                        ),
                      ),
                  ],
                ),
              ),
              const Divider(height: 1, color: AppTheme.divider),

              // Channel list
              Expanded(
                child: ListView.builder(
                  itemCount: channels.length,
                  itemBuilder: (context, index) {
                    final channel = channels[index];
                    return _buildChannelItem(channel);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildChannelItem(Channel channel) {
    final isCurrentChannel = _currentChannel?.id == channel.id;
    final program = _getMockCurrentProgram(channel);

    return Container(
      decoration: BoxDecoration(
        color: isCurrentChannel
            ? AppTheme.primaryBlue.withAlpha((0.2 * 255).round())
            : null,
        border: const Border(
            bottom: BorderSide(color: AppTheme.divider, width: 0.5)),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            setState(() {
              _currentChannel = channel;
              _currentProgram = program;
            });
          },
          child: Padding(
            padding: EdgeInsets.all(context.tvSpacing(AppSizes.md)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Channel logo
                Container(
                  width: context.tvSpacing(60),
                  height: context.tvSpacing(60),
                  decoration: BoxDecoration(
                    color: AppTheme.cardBackground,
                    borderRadius: BorderRadius.circular(context.tvSpacing(AppSizes.radiusSm)),
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child: Icon(
                          Icons.tv,
                          color: AppTheme.primaryBlue,
                          size: context.tvIconSize(32),
                        ),
                      ),
                      if (isCurrentChannel)
                        Positioned(
                          top: 4,
                          right: 4,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: context.tvSpacing(4),
                              vertical: context.tvSpacing(2),
                            ),
                            decoration: BoxDecoration(
                              color: AppTheme.accentRed,
                              borderRadius: BorderRadius.circular(
                                context.tvSpacing(AppSizes.radiusSm),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.fiber_manual_record,
                                  size: context.tvIconSize(6),
                                  color: Colors.white,
                                ),
                                SizedBox(width: context.tvSpacing(2)),
                                Text(
                                  'LIVE',
                                  style: TextStyle(
                                    fontSize: context.tvTextSize(8),
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ),

                SizedBox(width: context.tvSpacing(AppSizes.md)),

                // Channel info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          if (channel.channelNumber != null)
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: context.tvSpacing(6),
                                vertical: context.tvSpacing(2),
                              ),
                              decoration: BoxDecoration(
                                color: AppTheme.primaryBlue,
                                borderRadius: BorderRadius.circular(
                                  context.tvSpacing(AppSizes.radiusSm),
                                ),
                              ),
                              child: Text(
                                '${channel.channelNumber}',
                                style: TextStyle(
                                  fontSize: context.tvTextSize(10),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          const SizedBox(width: AppSizes.xs),
                          Expanded(
                            child: Text(
                              channel.name,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(fontWeight: FontWeight.w600, fontSize: context.tvTextSize(13)),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: context.tvSpacing(4)),
                      if (program != null)
                        Text(
                          program.title,
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: context.tvTextSize(11)),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      SizedBox(height: context.tvSpacing(4)),
                      // Progress bar
                      if (program != null)
                        LinearProgressIndicator(
                          value: program.progressPercentage,
                          backgroundColor: AppTheme.highlight,
                          color: AppTheme.primaryBlue,
                          minHeight: context.tvSpacing(3),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMiniPlayer() {
    return Container(
      color: Colors.black,
      child: Stack(
        children: [
          // Video player placeholder with tap to fullscreen
          Center(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: _launchFullscreenPlayer,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.play_circle_filled,
                      size: context.tvIconSize(80),
                      color: AppTheme.primaryBlue,
                    ),
                    SizedBox(height: context.tvSpacing(AppSizes.md)),
                    Text(
                      _currentChannel?.name ?? 'Select a channel',
                      style: Theme.of(
                        context,
                      ).textTheme.titleLarge?.copyWith(color: Colors.white, fontSize: context.tvTextSize(16)),
                    ),
                    SizedBox(height: context.tvSpacing(AppSizes.sm)),
                    Text(
                      'Click to play in fullscreen',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: AppTheme.textSecondary,
                            fontSize: context.tvTextSize(11),
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Controls overlay (hidden by default)
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF050710),
                  Color(0xFF0d1140),
                ],
              )),
            ),
          ),

          // Top controls
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.all(context.tvSpacing(AppSizes.md)),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back,
                        color: AppTheme.textPrimary),
                    onPressed: () {},
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.cast, color: AppTheme.textPrimary),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon:
                        const Icon(Icons.settings, color: AppTheme.textPrimary),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),

          // Bottom controls
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.all(context.tvSpacing(AppSizes.md)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.skip_previous,
                      color: AppTheme.textPrimary,
                      size: context.tvIconSize(32),
                    ),
                    onPressed: () {
                      // Previous channel
                    },
                  ),
                  SizedBox(width: context.tvSpacing(AppSizes.xl)),
                  IconButton(
                    icon: Icon(Icons.play_arrow,
                        color: AppTheme.textPrimary, size: context.tvIconSize(48)),
                    onPressed: () {},
                  ),
                  SizedBox(width: context.tvSpacing(AppSizes.xl)),
                  IconButton(
                    icon: Icon(Icons.skip_next,
                        color: AppTheme.textPrimary, size: context.tvIconSize(32)),
                    onPressed: () {
                      // Next channel
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNowPlayingInfo() {
    if (_currentChannel == null || _currentProgram == null) {
      return Container();
    }

    return Container(
      padding: EdgeInsets.all(context.tvSpacing(AppSizes.lg)),
      decoration: const BoxDecoration(
        color: AppTheme.cardBackground,
        border: Border(top: BorderSide(color: AppTheme.divider)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Now Playing',
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(color: AppTheme.textSecondary, fontSize: context.tvTextSize(15)),
          ),
          SizedBox(height: context.tvSpacing(AppSizes.md)),
          Row(
            children: [
              // Channel logo
              Container(
                width: context.tvSpacing(60),
                height: context.tvSpacing(60),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF050710),
                      Color(0xFF0d1140),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(context.tvSpacing(AppSizes.radiusSm)),
                ),
                child:
                    Icon(Icons.tv, color: AppTheme.primaryBlue, size: context.tvIconSize(32)),
              ),
              SizedBox(width: context.tvSpacing(AppSizes.md)),
              // Program info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _currentProgram!.title,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: context.tvTextSize(15)),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: context.tvSpacing(4)),
                    Text(
                      '${_currentChannel!.channelNumber ?? ''} • ${_currentChannel!.name}',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: context.tvTextSize(11)),
                    ),
                  ],
                ),
              ),

              // Action buttons
              IconButton(
                icon: const Icon(Icons.grid_view),
                onPressed: () {
                  // Go to EPG
                },
                tooltip: 'Go to EPG',
              ),
              IconButton(
                icon: Icon(
                  _currentChannel!.isFavorite == true
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: _currentChannel!.isFavorite == true
                      ? AppTheme.accentRed
                      : null,
                ),
                onPressed: () {
                  setState(() {
                    _currentChannel = _currentChannel!.copyWith(
                      isFavorite: !(_currentChannel!.isFavorite ?? false),
                    );
                  });
                },
                tooltip: 'Add to Favorites',
              ),
              IconButton(
                icon: const Icon(Icons.check_circle),
                color: AppTheme.primaryBlue,
                onPressed: () {},
                tooltip: 'Done',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Program? _getMockCurrentProgram(Channel channel) {
    final now = DateTime.now();
    return Program(
      id: 'program_${channel.id}',
      channelId: channel.id,
      title: channel.groupTitle == 'Sports'
          ? 'Live Sports'
          : channel.groupTitle == 'News'
              ? 'Breaking News'
              : 'Current Program',
      startTime: now.subtract(const Duration(minutes: 30)),
      endTime: now.add(const Duration(minutes: 30)),
    );
  }

  void _launchFullscreenPlayer() {
    if (_currentChannel == null) {
      final localContext = context;
      if (localContext.mounted) {
        showAppSnackBar(
          localContext,
          const SnackBar(content: Text('Please select a channel first')),
        );
      }
      return;
    }

    try {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => EnhancedVideoPlayerScreen(
            videoUrl: _currentChannel!.url,
            title: _currentChannel!.name,
            subtitle: _currentProgram?.title,
            isLive: true,
            channel: _currentChannel,
          ),
        ),
      );
    } catch (e) {
      debugPrint('Error initializing mini player: $e');
      final localContext = context;
      if (localContext.mounted) {
        showAppSnackBar(
            localContext, SnackBar(content: Text('Error opening player: $e')));
      }
    }
  }
}
