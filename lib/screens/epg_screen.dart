import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';

class EPGScreen extends StatefulWidget {
  const EPGScreen({super.key});

  @override
  State<EPGScreen> createState() => _EPGScreenState();
}

class _EPGScreenState extends State<EPGScreen> {
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();
  bool _isHourlyView = true;
  String? _selectedChannelId;

  final ScrollController _horizontalScrollController = ScrollController();
  final ScrollController _verticalScrollController = ScrollController();

  @override
  void dispose() {
    _horizontalScrollController.dispose();
    _verticalScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildHeader(),
        Divider(height: 1, color: AppTheme.divider),
        Expanded(
          child: Row(
            children: [
              _buildChannelList(),
              VerticalDivider(width: 1, color: AppTheme.divider),
              Expanded(child: _buildProgramGrid()),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.all(AppSizes.lg),
      child: Row(
        children: [
          // Date navigation
          IconButton(
            icon: Icon(Icons.chevron_left),
            onPressed: () {
              setState(() {
                _selectedDate = _selectedDate.subtract(Duration(days: 1));
              });
            },
          ),
          Text(
            DateFormat('EEEE, MMM dd').format(_selectedDate),
            style: Theme.of(context).textTheme.titleLarge,
          ),
          IconButton(
            icon: Icon(Icons.chevron_right),
            onPressed: () {
              setState(() {
                _selectedDate = _selectedDate.add(Duration(days: 1));
              });
            },
          ),
          
          Spacer(),
          
          // Time scale toggle
          Text(
            'Time Scale: ${_isHourlyView ? "Hourly" : "Half-hour"}',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(width: AppSizes.sm),
          Switch(
            value: _isHourlyView,
            onChanged: (value) {
              setState(() {
                _isHourlyView = value;
              });
            },
          ),
          
          SizedBox(width: AppSizes.md),
          
          // Refresh button
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              // Refresh EPG data
              setState(() {});
            },
            tooltip: 'Refresh EPG',
          ),
          
          // Menu button
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildChannelList() {
    final channels = _getMockChannels();
    
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
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
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
                          borderRadius: BorderRadius.circular(AppSizes.radiusSm),
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

  Widget _buildProgramGrid() {
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
                itemCount: _getMockChannels().length,
                itemBuilder: (context, index) {
                  return _buildProgramRow(index);
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

  Widget _buildProgramRow(int channelIndex) {
    final programs = _getMockPrograms(channelIndex);
    
    return Container(
      height: 80,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppTheme.divider, width: 0.5),
        ),
      ),
      child: Row(
        children: programs.map((program) {
          return _buildProgramCell(program);
        }).toList(),
      ),
    );
  }

  Widget _buildProgramCell(Program program) {
    final duration = program.duration.inMinutes;
    final width = (duration / 60) * 120; // 120px per hour
    final isLive = program.isCurrentlyPlaying;
    
    return Container(
      width: width,
      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: isLive 
            ? AppTheme.primaryBlue 
            : AppTheme.cardBackground,
        borderRadius: BorderRadius.circular(AppSizes.radiusSm),
        border: Border.all(
          color: isLive ? AppTheme.primaryBlue : AppTheme.divider,
          width: 1,
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
                Text(
                  program.title,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: isLive ? FontWeight.bold : FontWeight.normal,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 2),
                Text(
                  '${DateFormat.Hm().format(program.startTime)} - ${DateFormat.Hm().format(program.endTime)}',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                if (isLive)
                  LinearProgressIndicator(
                    value: program.progressPercentage,
                    backgroundColor: Colors.white.withOpacity(0.3),
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
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
                  Icon(Icons.access_time, size: 16, color: AppTheme.textSecondary),
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
                          Icon(Icons.fiber_manual_record, size: 8, color: Colors.white),
                          SizedBox(width: 4),
                          Text('LIVE', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
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
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                        // Navigate to player
                      },
                      icon: Icon(Icons.play_arrow),
                      label: Text('Watch Now'),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16),
                      ),
                    ),
                  ),
                  SizedBox(width: AppSizes.sm),
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {
                        // Record functionality
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Recording scheduled')),
                        );
                      },
                      icon: Icon(Icons.fiber_manual_record),
                      label: Text('Record'),
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        side: BorderSide(color: AppTheme.primaryBlue),
                      ),
                    ),
                  ),
                  SizedBox(width: AppSizes.sm),
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {
                        // Set reminder
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Reminder set')),
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

  // Mock data
  List<Channel> _getMockChannels() {
    return List.generate(10, (index) {
      return Channel(
        id: 'channel_$index',
        name: ['ESPN', 'BBC', 'CNN', 'Discovery', 'HBO', 'Fox', 'ABC', 'NBC', 'CBS', 'TNT'][index],
        url: 'http://example.com/channel$index',
        channelNumber: 701 + index,
      );
    });
  }

  List<Program> _getMockPrograms(int channelIndex) {
    final now = DateTime.now();
    final startOfDay = DateTime(now.year, now.month, now.day);
    
    return List.generate(6, (index) {
      final start = startOfDay.add(Duration(hours: index * 4));
      final end = start.add(Duration(hours: 2));
      
      return Program(
        id: 'program_${channelIndex}_$index',
        channelId: 'channel_$channelIndex',
        title: [
          'Morning News',
          'Sports Center',
          'Documentary',
          'Prime Time Show',
          'Late Night',
          'Overnight Movies'
        ][index],
        description: 'Sample program description for testing purposes.',
        startTime: start,
        endTime: end,
        category: 'Entertainment',
      );
    });
  }
}
