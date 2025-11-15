import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/services/epg_service.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/widgets/top_navigation_bar.dart';

class EPGScreen extends StatefulWidget {
  const EPGScreen({super.key});

  @override
  State<EPGScreen> createState() => _EPGScreenState();
}

class _EPGScreenState extends State<EPGScreen> {
  DateTime _selectedDate = DateTime.now();
  bool _isHourlyView = true;
  String? _selectedChannelId;
  String? _selectedCategory;
  late String _currentTime;
  late Timer _timeTimer;

  final ScrollController _horizontalScrollController = ScrollController();
  final ScrollController _verticalScrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _updateTime();
    _timeTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (mounted) {
        setState(() => _updateTime());
      }
    });
  }

  @override
  void dispose() {
    _timeTimer.cancel();
    _horizontalScrollController.dispose();
    _verticalScrollController.dispose();
    super.dispose();
  }

  void _updateTime() {
    final now = DateTime.now();
    final hour = now.hour == 0 ? 12 : (now.hour > 12 ? now.hour - 12 : now.hour);
    final period = now.hour < 12 ? 'AM' : 'PM';
    _currentTime = '${hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')} $period';
  }



  @override
  Widget build(BuildContext context) {
    return Consumer2<ChannelProvider, EpgService>(
      builder: (context, channelProvider, epgService, child) {
        final channels = channelProvider.channels;
        final hasChannels = channels.isNotEmpty;

        // Get categories
        final categories = hasChannels ? channelProvider.getGroupedChannels() : <String, List<Channel>>{};
        final categoryNames = categories.keys.toList()..sort();

        // Filter channels by selected category and hidden status
        final filteredChannels = hasChannels
            ? (channels.where((ch) {
                if (ch.isHidden == true) return false;
                if (_selectedCategory != null && ch.groupTitle != _selectedCategory) {
                  return false;
                }
                return true;
              }).toList()..sort((a, b) {
                if (a.sortOrder != null && b.sortOrder != null) {
                  return a.sortOrder!.compareTo(b.sortOrder!);
                }
                if (a.channelNumber != null && b.channelNumber != null) {
                  return a.channelNumber!.compareTo(b.channelNumber!);
                }
                return a.name.compareTo(b.name);
              }))
            : <Channel>[];

        return PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, result) {
            if (!didPop) {
              context.go('/home');
            }
          },
          child: Scaffold(
          backgroundColor: AppTheme.darkBackground,
          body: Stack(
            children: [
              Column(
                children: [
                  SizedBox(height: 100),
                  Padding(
                    padding: EdgeInsets.all(24),
                    child: Row(
                      children: [
                        Icon(Icons.tv, color: AppTheme.primaryBlue, size: 28),
                        SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'TV Guide',
                              style: TextStyle(
                                color: AppTheme.textPrimary,
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              DateFormat('EEEE, MMM dd').format(_selectedDate),
                              style: TextStyle(
                                color: AppTheme.textSecondary,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.refresh, color: AppTheme.primaryBlue),
                          onPressed: epgService.isLoading ? null : () => _refreshEPG(epgService),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: hasChannels && epgService.hasData
                        ? Row(
                            children: [
                              _buildCategorySidebar(categoryNames),
                              _buildChannelList(filteredChannels),
                              Expanded(
                                child: _buildProgramGrid(filteredChannels, epgService),
                              ),
                            ],
                          )
                        : hasChannels && epgService.isLoading
                        ? Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircularProgressIndicator(color: AppTheme.primaryBlue),
                                SizedBox(height: 24),
                                Text(
                                  'Loading EPG Data...',
                                  style: TextStyle(
                                    color: AppTheme.textPrimary,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Please wait while we load the TV guide',
                                  style: TextStyle(
                                    color: AppTheme.textSecondary,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          )
                        : hasChannels && !epgService.hasData
                        ? Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.calendar_today,
                                  size: 80,
                                  color: AppTheme.primaryBlue.withOpacity(0.5),
                                ),
                                SizedBox(height: 24),
                                Text(
                                  'No EPG Data Available',
                                  style: TextStyle(
                                    color: AppTheme.textPrimary,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 12),
                                Text(
                                  'Configure EPG URL in Settings to view TV guide',
                                  style: TextStyle(
                                    color: AppTheme.textSecondary,
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 32),
                                ElevatedButton.icon(
                                  icon: Icon(Icons.settings),
                                  label: Text('Configure EPG'),
                                  onPressed: () => context.go('/settings'),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppTheme.primaryBlue,
                                  ),
                                ),
                              ],
                            ),
                          )
                        : _buildEmptyState(context),
                  ),
                ],
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: TopNavigationBar(
                  activeTab: 'epg',
                  tabs: [
                    NavTab(id: 'home', label: 'LIVE TV', icon: Icons.live_tv, route: '/home'),
                    NavTab(id: 'movies', label: 'Movies', icon: Icons.movie, route: '/movies'),
                    NavTab(id: 'series', label: 'Series', icon: Icons.tv, route: '/series'),
                  ],
                  currentTime: _currentTime,
                  showLogoAndTime: true,
                  onSearchSubmit: (query) {
                    context.go('/search?q=$query');
                  },
                ),
              ),
            ],
          ),
        ),
        );
      },
    );
  }

  Future<void> _refreshEPG(EpgService epgService) async {
    final messenger = ScaffoldMessenger.of(context);
    final prefs = await SharedPreferences.getInstance();
    final epgUrl = prefs.getString('epg_url') ?? prefs.getString('custom_epg_url');

    if (epgUrl != null && epgUrl.isNotEmpty) {
      await epgService.refresh(epgUrl);
      if (mounted) {
        messenger.showSnackBar(
          SnackBar(
            content: Text(
              epgService.error != null
                  ? 'EPG refresh failed: ${epgService.error}'
                  : 'EPG data refreshed successfully',
            ),
            backgroundColor: epgService.error != null ? AppTheme.accentRed : AppTheme.accentGreen,
          ),
        );
      }
    }
  }

  Widget _buildEmptyState(BuildContext context) {
    return Container(
      height: 400,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.tv_off,
              size: 80,
              color: AppTheme.primaryBlue.withOpacity(0.5),
            ),
            SizedBox(height: 24),
            Text(
              'No Channels Available',
              style: TextStyle(
                color: AppTheme.textPrimary,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Load a playlist in Settings to view EPG',
              style: TextStyle(
                color: AppTheme.textSecondary,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 32),
            ElevatedButton.icon(
              icon: Icon(Icons.settings),
              label: Text('Go to Settings'),
              onPressed: () => context.go('/settings'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.primaryBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }



  Widget _buildCategorySidebar(List<String> categories) {
    return Container(
      width: 180,
      color: AppTheme.sidebarBackground,
      child: Column(
        children: [
          // All Channels option
          _buildCategoryItem(
            name: 'All Channels',
            isSelected: _selectedCategory == null,
            onTap: () {
              setState(() {
                _selectedCategory = null;
              });
            },
          ),
          Divider(height: 1, color: AppTheme.divider),
          // Category list
          Expanded(
            child: ListView.builder(
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                return _buildCategoryItem(
                  name: category,
                  isSelected: _selectedCategory == category,
                  onTap: () {
                    setState(() {
                      _selectedCategory = category;
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryItem({
    required String name,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Focus(
        onFocusChange: (_) => setState(() {}),
        child: Builder(builder: (context) {
          final bool isFocused = Focus.of(context).hasFocus;
          final Color iconColor = isFocused
              ? Colors.white
              : (isSelected ? AppTheme.primaryBlue : AppTheme.textSecondary);
          final Color textColor = isFocused
              ? Colors.white
              : (isSelected ? AppTheme.primaryBlue : AppTheme.textSecondary);
          return AnimatedScale(
            scale: isFocused ? 1.02 : 1.0,
            duration: AppDurations.fast,
            curve: Curves.easeOut,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.md,
                vertical: AppSizes.sm,
              ),
              child: Row(
                children: [
                  // Left selected indicator bar with fade-in
                  AnimatedOpacity(
                    opacity: isSelected ? 1.0 : 0.0,
                    duration: AppDurations.fast,
                    child: AnimatedContainer(
                      duration: AppDurations.fast,
                      width: isSelected ? (isFocused ? 3 : 2) : 0,
                      height: 18,
                      decoration: isSelected
                          ? const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  AppTheme.primaryBlue,
                                  AppTheme.accentPink,
                                ],
                              ),
                            )
                          : null,
                    ),
                  ),
                  if (isSelected) SizedBox(width: AppSizes.sm),
                  Icon(Icons.folder, size: 18, color: iconColor),
                  SizedBox(width: AppSizes.sm),
                  Expanded(
                    child: Text(
                      name,
                      style: TextStyle(
                        color: textColor,
                        fontWeight:
                            (isFocused || isSelected) ? FontWeight.bold : FontWeight.normal,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }



  Widget _buildChannelList(List<Channel> channels) {
    return Container(
      width: 200,
      color: AppTheme.sidebarBackground,
      child: Column(
        children: [
          // Header
          Container(
            height: 60,
            padding: EdgeInsets.all(AppSizes.md),
            alignment: Alignment.centerLeft,
            child: Text(
              'CHANNELS',
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Divider(height: 1, color: AppTheme.divider),

          // Channel list
          Expanded(
            child: ListView.builder(
              controller: _verticalScrollController,
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
    final isSelected = _selectedChannelId == channel.id;

    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: isSelected ? AppTheme.primaryBlue.withOpacity(0.2) : null,
        border: Border(
          bottom: BorderSide(color: AppTheme.divider, width: 0.5),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            setState(() {
              _selectedChannelId = channel.id;
            });
            // Navigate to full player
            context.push('/player', extra: channel);
          },
          onLongPress: () {
            _showChannelOptions(channel);
          },
          child: Padding(
            padding: EdgeInsets.all(AppSizes.sm),
            child: Row(
              children: [
                // Channel logo
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: AppTheme.cardBackground,
                    borderRadius: BorderRadius.circular(AppSizes.radiusSm),
                  ),
                  child: channel.logoUrl != null
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(
                            AppSizes.radiusSm,
                          ),
                          child: Image.network(
                            channel.logoUrl!,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Center(
                                child: Icon(
                                  Icons.tv,
                                  color: AppTheme.primaryBlue,
                                  size: 24,
                                ),
                              );
                            },
                          ),
                        )
                      : Center(
                          child: Icon(
                            Icons.tv,
                            color: AppTheme.primaryBlue,
                            size: 24,
                          ),
                        ),
                ),

                SizedBox(width: AppSizes.sm),

                // Channel info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        channel.name,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      if (channel.channelNumber != null)
                        Text(
                          '${channel.channelNumber}',
                          style: Theme.of(context).textTheme.bodySmall,
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

  Widget _buildProgramGrid(List<Channel> channels, EpgService epgService) {
    if (epgService.isLoading) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: AppSizes.md),
            Text('Loading EPG data...'),
          ],
        ),
      );
    }

    if (!epgService.hasData) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.calendar_today,
              size: 60,
              color: AppTheme.primaryBlue.withAlpha((0.5 * 255).round()),
            ),
            SizedBox(height: AppSizes.md),
            Text(
              'No EPG Data Available',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: AppSizes.sm),
            Text(
              'Configure EPG URL in Settings',
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(color: AppTheme.textSecondary),
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        // Time header
        _buildTimeHeader(),
        Divider(height: 1, color: AppTheme.divider),

        // Programs grid
        Expanded(
          child: SingleChildScrollView(
            controller: _horizontalScrollController,
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              width: _calculateGridWidth(),
              child: ListView.builder(
                controller: _verticalScrollController,
                itemCount: channels.length,
                itemBuilder: (context, index) {
                  final channel = channels[index];
                  return _buildProgramRow(channel, epgService);
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTimeHeader() {
    final hours = _isHourlyView ? 24 : 48;

    return Container(
      height: 60,
      child: Row(
        children: List.generate(hours, (index) {
          final hour = _isHourlyView ? index : index ~/ 2;
          final minute = _isHourlyView ? 0 : (index % 2) * 30;
          final time = TimeOfDay(hour: hour, minute: minute);

          return Container(
            width: _isHourlyView ? 120 : 60,
            padding: EdgeInsets.all(AppSizes.sm),
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(color: AppTheme.divider, width: 0.5),
              ),
            ),
            child: Center(
              child: Text(
                time.format(context),
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget _buildProgramRow(Channel channel, EpgService epgService) {
    // Get programs for this channel from EPG service
    final programs = epgService.epgData[channel.tvgId ?? channel.id] ?? [];

    // Filter programs for selected date
    final startOfDay = DateTime(
      _selectedDate.year,
      _selectedDate.month,
      _selectedDate.day,
    );
    final endOfDay = startOfDay.add(Duration(days: 1));

    final dayPrograms = programs.where((program) {
      return program.startTime.isBefore(endOfDay) &&
          program.endTime.isAfter(startOfDay);
    }).toList();

    return Container(
      height: 80,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: AppTheme.divider, width: 0.5)),
      ),
      child: dayPrograms.isEmpty
          ? Center(
              child: Text(
                'No EPG data',
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(color: AppTheme.textSecondary),
              ),
            )
          : Row(
              children: dayPrograms.map((program) {
                return _buildProgramCell(program);
              }).toList(),
            ),
    );
  }

  Widget _buildProgramCell(Program program) {
    final duration = program.duration.inMinutes;
    final width = (duration / 60) * 120; // 120px per hour
    final isLive = program.isCurrentlyPlaying;
    final hasCatchup = program.hasCatchup;

    return Container(
      width: width,
      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: isLive
            ? AppTheme.primaryBlue
            : hasCatchup
            ? AppTheme.accentOrange.withAlpha((0.3 * 255).round())
            : AppTheme.cardBackground,
        borderRadius: BorderRadius.circular(AppSizes.radiusSm),
        border: Border.all(
          color: isLive
              ? AppTheme.primaryBlue
              : hasCatchup
              ? AppTheme.accentOrange
              : AppTheme.divider,
          width: isLive || hasCatchup ? 2 : 1,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => _showProgramDetails(program),
          borderRadius: BorderRadius.circular(AppSizes.radiusSm),
          child: Padding(
            padding: EdgeInsets.all(AppSizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    if (hasCatchup) ...[
                          Icon(
                            Icons.replay,
                            size: 14,
                            color: AppTheme.accentOrange,
                          ),
                          const SizedBox(width: 4),
                        ],
                    Expanded(
                      child: Text(
                        program.title,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: isLive
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2),
                Text(
                  '${DateFormat.Hm().format(program.startTime)} - ${DateFormat.Hm().format(program.endTime)}',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                if (isLive)
                  LinearProgressIndicator(
                    value: program.progressPercentage,
                    backgroundColor: AppTheme.textPrimary.withAlpha((0.3 * 255).round()),
                    valueColor: AlwaysStoppedAnimation<Color>(AppTheme.textPrimary),
                    minHeight: 2,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showProgramDetails(Program program) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: AppTheme.cardBackground,
        child: Container(
          width: 600,
          padding: EdgeInsets.all(AppSizes.lg),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Program image
              if (program.imageUrl != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(AppSizes.radiusLg),
                  child: Image.network(
                    program.imageUrl!,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        height: 200,
                        color: AppTheme.darkBackground,
                        child: Icon(Icons.tv, size: 64),
                      );
                    },
                  ),
                ),

              SizedBox(height: AppSizes.lg),

              // Title
              Text(
                program.title,
                style: Theme.of(context).textTheme.headlineSmall,
              ),

              SizedBox(height: AppSizes.sm),

              // Time and status
              Row(
                children: [
                  Icon(
                    Icons.access_time,
                    size: 16,
                    color: AppTheme.textSecondary,
                  ),
                  SizedBox(width: AppSizes.xs),
                  Text(
                    '${DateFormat.Hm().format(program.startTime)} - ${DateFormat.Hm().format(program.endTime)}',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(width: AppSizes.md),
                  if (program.isCurrentlyPlaying)
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppSizes.sm,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: AppTheme.accentRed,
                        borderRadius: BorderRadius.circular(AppSizes.radiusSm),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.fiber_manual_record,
                            size: 8,
                            color: Colors.white,
                          ),
                          SizedBox(width: 4),
                          Text(
                            'LIVE',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),

              SizedBox(height: AppSizes.md),

              // Description
              if (program.description != null)
                Text(
                  program.description!,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),

              SizedBox(height: AppSizes.xl),

              // Action buttons
              Row(
                children: [
                  // Watch Now / Watch Catch-up button
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                        if (program.hasCatchup) {
                          // Play catch-up stream
                          _playCatchup(program);
                        } else if (program.isCurrentlyPlaying) {
                          // Play live channel
                          _playLive(program);
                        } else if (program.isFutureProgram) {
                          // Show message for future programs
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('This program hasn\'t aired yet'),
                            ),
                          );
                        }
                      },
                      icon: Icon(
                        program.hasCatchup ? Icons.replay : Icons.play_arrow,
                      ),
                      label: Text(
                        program.hasCatchup
                            ? 'Watch Catch-up'
                            : program.isCurrentlyPlaying
                            ? 'Watch Live'
                            : 'Watch',
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: program.hasCatchup
                            ? AppTheme.accentOrange
                            : AppTheme.primaryBlue,
                        padding: EdgeInsets.symmetric(vertical: 16),
                      ),
                    ),
                  ),
                  SizedBox(width: AppSizes.sm),
                  // Record button (only for future programs)
                  if (program.isFutureProgram)
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () {
                          // Record functionality
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Recording scheduled for ${program.title}',
                              ),
                            ),
                          );
                        },
                        icon: Icon(Icons.fiber_manual_record),
                        label: Text('Record'),
                        style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          side: BorderSide(color: AppTheme.accentRed),
                        ),
                      ),
                    ),
                  // Remind button (only for future programs)
                  if (program.isFutureProgram) ...[
                    SizedBox(width: AppSizes.sm),
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () {
                          // Set reminder
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Reminder set for ${program.title}',
                              ),
                            ),
                          );
                        },
                        icon: Icon(Icons.alarm),
                        label: Text('Remind'),
                        style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          side: BorderSide(color: AppTheme.primaryBlue),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  double _calculateGridWidth() {
    final hours = _isHourlyView ? 24 : 48;
    final cellWidth = _isHourlyView ? 120.0 : 60.0;
    return hours * cellWidth;
  }

  void _showChannelOptions(Channel channel) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.cardBackground,
        title: Text('Channel Options'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(
                channel.isFavorite == true
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: AppTheme.accentRed,
              ),
              title: Text(
                channel.isFavorite == true
                    ? 'Remove from Favorites'
                    : 'Add to Favorites',
              ),
              onTap: () {
                Navigator.pop(context);
                _toggleFavorite(channel);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.visibility_off,
                color: AppTheme.textSecondary,
              ),
              title: Text('Hide Channel'),
              onTap: () {
                Navigator.pop(context);
                _hideChannel(channel);
              },
            ),
            ListTile(
              leading: Icon(Icons.edit, color: AppTheme.primaryBlue),
              title: Text('Edit Channel Number'),
              onTap: () {
                Navigator.pop(context);
                _editChannelNumber(channel);
              },
            ),
            ListTile(
              leading: Icon(Icons.link, color: AppTheme.accentGreen),
              title: Text('Assign EPG Source'),
              onTap: () {
                Navigator.pop(context);
                _assignEPGSource(channel);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _toggleFavorite(Channel channel) {
    final channelProvider = Provider.of<ChannelProvider>(
      context,
      listen: false,
    );
    if (channel.isFavorite == true) {
      channelProvider.removeFromFavorites(channel);
    } else {
      channelProvider.addToFavorites(channel);
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          channel.isFavorite == true
              ? 'Removed from favorites'
              : 'Added to favorites',
        ),
      ),
    );
  }

  void _hideChannel(Channel channel) {
    // This would update the channel provider to mark channel as hidden
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${channel.name} has been hidden'),
        action: SnackBarAction(
          label: 'UNDO',
          onPressed: () {
            // Undo hide action
          },
        ),
      ),
    );
  }

  void _editChannelNumber(Channel channel) {
    final controller = TextEditingController(
      text: channel.channelNumber?.toString() ?? '',
    );

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.cardBackground,
        title: Text('Edit Channel Number'),
        content: TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Channel Number',
            hintText: 'Enter channel number',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              // Update channel number
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('Channel number updated')));
            },
            child: Text('Save'),
          ),
        ],
      ),
    );
  }

  void _assignEPGSource(Channel channel) {
    final controller = TextEditingController(text: channel.tvgId ?? '');

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.cardBackground,
        title: Text('Assign EPG Source'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Enter the TVG ID or EPG channel ID to link this channel to EPG data.',
              style: TextStyle(color: AppTheme.textSecondary, fontSize: 13),
            ),
            SizedBox(height: 16),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: 'EPG Channel ID',
                hintText: 'e.g., cnn.us or BBCOne.uk',
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              // Update EPG source
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('EPG source assigned')));
            },
            child: Text('Save'),
          ),
        ],
      ),
    );
  }

  void _playCatchup(Program program) {
    if (program.catchupUrl == null) return;

    // Create a temporary channel object with catch-up URL
    final catchupChannel = Channel(
      id: '${program.channelId}_catchup_${program.id}',
      name: '${program.title} (Catch-up)',
      url: program.catchupUrl!,
      logoUrl: program.imageUrl,
      groupTitle: 'Catch-up TV',
      tvgId: program.channelId,
    );

    // Navigate to player with catch-up stream
    context.push('/player', extra: catchupChannel);
  }

  void _playLive(Program program) {
    // Find the channel and navigate to live player
    final channelProvider = Provider.of<ChannelProvider>(
      context,
      listen: false,
    );
    final channel = channelProvider.channels.firstWhere(
      (ch) => ch.id == program.channelId,
      orElse: () => Channel(
        id: program.channelId,
        name: 'Unknown Channel',
        url: '',
        groupTitle: '',
      ),
    );

    if (channel.url.isNotEmpty) {
      context.push('/player', extra: channel);
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Channel not available')));
    }
  }
}
