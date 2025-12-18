import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/channel.dart';
import '../providers/channel_provider.dart';
import 'package:iptv_player/widgets/tv_focusable.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
import 'package:iptv_player/utils/app_theme.dart';

class ChannelSelectionDialog extends StatefulWidget {
  const ChannelSelectionDialog({super.key});

  @override
  State<ChannelSelectionDialog> createState() => _ChannelSelectionDialogState();
}

class _ChannelSelectionDialogState extends State<ChannelSelectionDialog> {
  String _searchQuery = '';
  String? _selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppTheme.darkBackground,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.8,
        padding: EdgeInsets.all(context.tvSpacing(16)),
        child: Consumer<ChannelProvider>(
          builder: (context, channelProvider, child) {
            final categories = channelProvider.getAllCategoryNames();
            final allChannels = channelProvider.channels;
            
            List<Channel> filteredChannels = allChannels;
            
            // Filter by category
            if (_selectedCategory != null && _selectedCategory!.isNotEmpty) {
              filteredChannels = filteredChannels
                  .where((c) => c.groupTitle == _selectedCategory)
                  .toList();
            }
            
            // Filter by search query
            if (_searchQuery.isNotEmpty) {
              filteredChannels = filteredChannels
                  .where((c) => c.name.toLowerCase().contains(_searchQuery.toLowerCase()))
                  .toList();
            }

            return Column(
              children: [
                // Header
                Row(
                  children: [
                    Text(
                      'Select Channel',
                      style: TextStyle(
                        fontSize: context.tvTextSize(20),
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Focus(
                      child: Builder(
                        builder: (context) {
                          final isFocused = Focus.of(context).hasFocus;
                          return GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: AnimatedScale(
                              scale: isFocused ? TVFocusStyle.focusScale : 1.0,
                              duration: TVFocusStyle.animationDuration,
                              curve: TVFocusStyle.animationCurve,
                              child: AnimatedContainer(
                                duration: TVFocusStyle.animationDuration,
                                curve: TVFocusStyle.animationCurve,
                                decoration: BoxDecoration(
                                  boxShadow: isFocused ? TVFocusStyle.focusedShadow : null,
                                  borderRadius: BorderRadius.circular(context.tvSpacing(4)),
                                ),
                                child: IconButton(
                                  icon: Icon(Icons.close, color: Colors.white, size: context.tvIconSize(24)),
                                  onPressed: () => Navigator.pop(context),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                
                // Search bar
                TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Search channels...',
                    hintStyle: TextStyle(color: Colors.white.withValues(alpha: 0.5)),
                    prefixIcon: const Icon(Icons.search, color: Colors.white54),
                    filled: true,
                    fillColor: Colors.white.withValues(alpha: 0.05),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.2)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(color: AppTheme.primaryBlue, width: 2),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _searchQuery = value;
                    });
                  },
                ),
                const SizedBox(height: 16),
                
                // Category filter
                if (categories.isNotEmpty)
                  SizedBox(
                    height: 40,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _buildCategoryChip('All', null),
                        ...categories.map((category) => 
                          _buildCategoryChip(category, category)
                        ),
                      ],
                    ),
                  ),
                const SizedBox(height: 16),
                
                // Channel list
                Expanded(
                  child: filteredChannels.isEmpty
                      ? Center(
                          child: Text(
                            'No channels found',
                            style: TextStyle(color: Colors.white.withValues(alpha: 0.5)),
                          ),
                        )
                      : ListView.builder(
                          itemCount: filteredChannels.length,
                          itemBuilder: (context, index) {
                            final channel = filteredChannels[index];
                            return Focus(
                              child: Builder(
                                builder: (context) {
                                  final isFocused = Focus.of(context).hasFocus;
                                  return GestureDetector(
                                    onTap: () => Navigator.pop(context, channel),
                                    child: Container(
                                      color: isFocused ? AppTheme.primaryBlue.withValues(alpha: 0.2) : Colors.transparent,
                                      child: ListTile(
                                        leading: (channel.logoUrl?.isNotEmpty ?? false)
                                            ? Image.network(
                                                channel.logoUrl!,
                                                width: 48,
                                                height: 48,
                                                fit: BoxFit.contain,
                                                errorBuilder: (_, __, ___) => const Icon(
                                                  Icons.tv,
                                                  color: Colors.white54,
                                                ),
                                              )
                                            : const Icon(Icons.tv, color: Colors.white54),
                                        title: Text(
                                          channel.name,
                                          style: const TextStyle(color: Colors.white),
                                        ),
                                        subtitle: Text(
                                          channel.groupTitle ?? '',
                                          style: TextStyle(color: Colors.white.withValues(alpha: 0.5)),
                                        ),
                                        onTap: () => Navigator.pop(context, channel),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildCategoryChip(String label, String? category) {
    final isSelected = _selectedCategory == category;
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Focus(
        child: Builder(
          builder: (context) {
            final isFocused = Focus.of(context).hasFocus;
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedCategory = isSelected ? null : category;
                });
              },
              child: FilterChip(
                label: Text(label),
                selected: isSelected,
                onSelected: (selected) {
                  setState(() {
                    _selectedCategory = selected ? category : null;
                  });
                },
                backgroundColor: isFocused ? AppTheme.primaryBlue.withValues(alpha: 0.2) : Colors.white.withValues(alpha: 0.05),
                selectedColor: AppTheme.primaryBlue,
                labelStyle: TextStyle(
                  color: isSelected ? Colors.white : Colors.white.withValues(alpha: 0.7),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
