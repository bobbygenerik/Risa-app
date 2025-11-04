import 'package:flutter/material.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/screens/enhanced_video_player_screen.dart';

class MiniPlayerScreen extends StatefulWidget {
  const MiniPlayerScreen({super.key});

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
    final channels = _getMockChannels();
    if (channels.isNotEmpty) {
      _currentChannel = channels.first;
      _currentProgram = _getMockCurrentProgram(channels.first);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Channel list sidebar
        _buildChannelList(),
        VerticalDivider(width: 1, color: AppTheme.divider),
        
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
    final channels = _showFavorites 
        ? _getMockChannels().where((c) => c.isFavorite == true).toList()
        : _getFilteredChannels();
    
    return Container(
      width: 300,
      color: AppTheme.sidebarBackground,
      child: Column(
        children: [
          // Header with favorites toggle
          Container(
            padding: EdgeInsets.all(AppSizes.md),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      _showFavorites ? Icons.favorite : Icons.favorite_border,
                      color: _showFavorites ? AppTheme.accentRed : AppTheme.textSecondary,
                    ),
                    SizedBox(width: AppSizes.sm),
                    Text(
                      'Favorites',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Spacer(),
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
                SizedBox(height: AppSizes.md),
                // Category filter
                if (!_showFavorites)
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: AppSizes.md),
                    decoration: BoxDecoration(
                      color: AppTheme.cardBackground,
                      borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                    ),
                    child: DropdownButton<String>(
                      value: _selectedCategory,
                      isExpanded: true,
                      underline: Container(),
                      icon: Icon(Icons.arrow_drop_down),
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
          Divider(height: 1, color: AppTheme.divider),
          
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
  }

  Widget _buildChannelItem(Channel channel) {
    final isCurrentChannel = _currentChannel?.id == channel.id;
    final program = _getMockCurrentProgram(channel);
    
    return Container(
      decoration: BoxDecoration(
        color: isCurrentChannel ? AppTheme.primaryBlue.withOpacity(0.2) : null,
        border: Border(
          bottom: BorderSide(color: AppTheme.divider, width: 0.5),
        ),
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
            padding: EdgeInsets.all(AppSizes.md),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Channel logo
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: AppTheme.cardBackground,
                    borderRadius: BorderRadius.circular(AppSizes.radiusSm),
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child: Icon(
                          Icons.tv,
                          color: AppTheme.primaryBlue,
                          size: 32,
                        ),
                      ),
                      if (isCurrentChannel)
                        Positioned(
                          top: 4,
                          right: 4,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                            decoration: BoxDecoration(
                              color: AppTheme.accentRed,
                              borderRadius: BorderRadius.circular(AppSizes.radiusSm),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.fiber_manual_record, size: 6, color: Colors.white),
                                SizedBox(width: 2),
                                Text(
                                  'LIVE',
                                  style: TextStyle(
                                    fontSize: 8,
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
                
                SizedBox(width: AppSizes.md),
                
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
                                horizontal: 6,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                color: AppTheme.primaryBlue,
                                borderRadius: BorderRadius.circular(AppSizes.radiusSm),
                              ),
                              child: Text(
                                '${channel.channelNumber}',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          SizedBox(width: AppSizes.xs),
                          Expanded(
                            child: Text(
                              channel.name,
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      if (program != null)
                        Text(
                          program.title,
                          style: Theme.of(context).textTheme.bodySmall,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      SizedBox(height: 4),
                      // Progress bar
                      if (program != null)
                        LinearProgressIndicator(
                          value: program.progressPercentage,
                          backgroundColor: AppTheme.highlight,
                          color: AppTheme.primaryBlue,
                          minHeight: 3,
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
                      size: 80,
                      color: AppTheme.primaryBlue,
                    ),
                    SizedBox(height: AppSizes.md),
                    Text(
                      _currentChannel?.name ?? 'Select a channel',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: AppSizes.sm),
                    Text(
                      'Click to play in fullscreen',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppTheme.textSecondary,
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
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.7),
                    Colors.transparent,
                    Colors.transparent,
                    Colors.black.withOpacity(0.7),
                  ],
                  stops: [0.0, 0.2, 0.8, 1.0],
                ),
              ),
            ),
          ),
          
          // Top controls
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.all(AppSizes.md),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {},
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.cast, color: Colors.white),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.settings, color: Colors.white),
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
              padding: EdgeInsets.all(AppSizes.md),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.skip_previous, color: Colors.white, size: 32),
                    onPressed: () {
                      // Previous channel
                    },
                  ),
                  SizedBox(width: AppSizes.xl),
                  IconButton(
                    icon: Icon(Icons.play_arrow, color: Colors.white, size: 48),
                    onPressed: () {},
                  ),
                  SizedBox(width: AppSizes.xl),
                  IconButton(
                    icon: Icon(Icons.skip_next, color: Colors.white, size: 32),
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
      padding: EdgeInsets.all(AppSizes.lg),
      decoration: BoxDecoration(
        color: AppTheme.cardBackground,
        border: Border(
          top: BorderSide(color: AppTheme.divider),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Now Playing',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: AppTheme.textSecondary,
            ),
          ),
          SizedBox(height: AppSizes.md),
          
          Row(
            children: [
              // Channel logo
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: AppTheme.darkBackground,
                  borderRadius: BorderRadius.circular(AppSizes.radiusSm),
                ),
                child: Icon(
                  Icons.tv,
                  color: AppTheme.primaryBlue,
                  size: 32,
                ),
              ),
              
              SizedBox(width: AppSizes.md),
              
              // Program info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _currentProgram!.title,
                      style: Theme.of(context).textTheme.titleMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 4),
                    Text(
                      '${_currentChannel!.channelNumber ?? ''} • ${_currentChannel!.name}',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              
              // Action buttons
              IconButton(
                icon: Icon(Icons.grid_view),
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
                icon: Icon(Icons.check_circle),
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

  List<Channel> _getMockChannels() {
    return List.generate(20, (index) {
      return Channel(
        id: 'channel_$index',
        name: [
          'ESPN', 'BBC One', 'Discovery', 'CNN', 'Cartoon Network',
          'Fox News', 'HBO', 'NBC', 'CBS', 'ABC',
          'MTV', 'Comedy Central', 'Nickelodeon', 'Sky Sports', 'Eurosport',
          'National Geographic', 'History Channel', 'Food Network', 'HGTV', 'TLC'
        ][index],
        url: 'http://example.com/channel$index',
        channelNumber: 701 + index,
        groupTitle: [
          'Sports', 'UK', 'Documentary', 'News', 'Kids',
          'News', 'Entertainment', 'US', 'US', 'US',
          'Entertainment', 'Entertainment', 'Kids', 'Sports', 'Sports',
          'Documentary', 'Documentary', 'Lifestyle', 'Lifestyle', 'Lifestyle'
        ][index],
        isFavorite: index % 3 == 0, // Every 3rd channel is favorite
      );
    });
  }

  List<Channel> _getFilteredChannels() {
    final channels = _getMockChannels();
    if (_selectedCategory == 'All Channels') {
      return channels;
    }
    return channels.where((c) => c.groupTitle == _selectedCategory).toList();
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
      startTime: now.subtract(Duration(minutes: 30)),
      endTime: now.add(Duration(minutes: 30)),
    );
  }

  void _launchFullscreenPlayer() {
    if (_currentChannel == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select a channel first')),
      );
      return;
    }

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => EnhancedVideoPlayerScreen(
          videoUrl: _currentChannel!.url,
          title: _currentChannel!.name,
          subtitle: _currentProgram?.title,
          isLive: true,
        ),
      ),
    );
  }
}
