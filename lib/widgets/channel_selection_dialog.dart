import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/channel.dart';
import '../providers/channel_provider.dart';
import 'package:iptv_player/widgets/tv_focusable.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/no_text_selection_controls.dart';
import 'package:iptv_player/widgets/channel_logo_widget.dart';

class ChannelSelectionDialog extends StatefulWidget {
  const ChannelSelectionDialog({super.key});

  @override
  State<ChannelSelectionDialog> createState() => _ChannelSelectionDialogState();
}

class _ChannelSelectionDialogState extends State<ChannelSelectionDialog> {
  String _searchQuery = '';
  String? _selectedCategory;
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();
  Future<List<Channel>>? _channelsFuture;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _searchFocusNode.requestFocus();
      }
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  Future<List<Channel>> _loadChannels(ChannelProvider provider) {
    final query = _searchQuery.trim();
    if (query.isNotEmpty) {
      return provider.searchChannelsAsync(query, limit: 200);
    }
    final category = _selectedCategory;
    if (category != null && category.isNotEmpty) {
      return provider.getChannelsForCategoryAsync(category, limit: 200);
    }
    return provider.getChannelsPage(limit: 200);
  }

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
            _channelsFuture ??= _loadChannels(channelProvider);

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
                    FocusableActionDetector(
                      actions: <Type, Action<Intent>>{
                        ActivateIntent: CallbackAction<ActivateIntent>(
                          onInvoke: (intent) {
                            Navigator.pop(context);
                            return null;
                          },
                        ),
                      },
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
                                  boxShadow: isFocused
                                      ? TVFocusStyle.focusedShadow
                                      : null,
                                  borderRadius: BorderRadius.circular(
                                      context.tvSpacing(4)),
                                ),
                                child: IconButton(
                                  icon: Icon(Icons.close,
                                      color: Colors.white,
                                      size: context.tvIconSize(24)),
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
                Focus(
                  focusNode: _searchFocusNode,
                  onFocusChange: (hasFocus) {
                    if (hasFocus) {
                      final text = _searchController.text;
                      _searchController.selection =
                          TextSelection.collapsed(offset: text.length);
                    }
                  },
                  child: TextField(
                    controller: _searchController,
                    focusNode: _searchFocusNode,
                    enableInteractiveSelection: false,
                    selectionControls: NoTextSelectionControls(),
                    showCursor: false,
                    cursorColor: Colors.transparent,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Search channels...',
                      hintStyle:
                          TextStyle(color: Colors.white.withValues(alpha: 0.5)),
                      prefixIcon:
                          const Icon(Icons.search, color: Colors.white54),
                      filled: true,
                      fillColor: Colors.white.withValues(alpha: 0.05),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white.withValues(alpha: 0.2)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                            color: AppTheme.primaryBlue, width: 2),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        _searchQuery = value;
                        _channelsFuture = _loadChannels(channelProvider);
                      });
                    },
                    onTap: () {
                      final text = _searchController.text;
                      _searchController.selection =
                          TextSelection.collapsed(offset: text.length);
                    },
                  ),
                ),
                const SizedBox(height: 16),

                // Category filter
                if (categories.isNotEmpty)
                  SizedBox(
                    height: 40,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _buildCategoryChip('All', null, channelProvider),
                        ...categories.map((category) => _buildCategoryChip(
                            category, category, channelProvider)),
                      ],
                    ),
                  ),
                const SizedBox(height: 16),

                // Channel list
                Expanded(
                  child: FutureBuilder<List<Channel>>(
                    future: _channelsFuture,
                    builder: (context, snapshot) {
                      final filteredChannels = snapshot.data ?? const [];
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      if (filteredChannels.isEmpty) {
                        return Center(
                          child: Text(
                            'No channels found',
                            style: TextStyle(
                                color: Colors.white.withValues(alpha: 0.5)),
                          ),
                        );
                      }
                      return ListView.builder(
                        itemCount: filteredChannels.length,
                        itemBuilder: (context, index) {
                          final channel = filteredChannels[index];
                          return FocusableActionDetector(
                            actions: <Type, Action<Intent>>{
                              ActivateIntent: CallbackAction<ActivateIntent>(
                                onInvoke: (intent) {
                                  Navigator.pop(context, channel);
                                  return null;
                                },
                              ),
                            },
                            child: Builder(
                              builder: (context) {
                                final isFocused = Focus.of(context).hasFocus;
                                return GestureDetector(
                                  onTap: () => Navigator.pop(context, channel),
                                  child: Container(
                                    color: isFocused
                                        ? AppTheme.primaryBlue
                                            .withValues(alpha: 0.2)
                                        : Colors.transparent,
                                    child: ListTile(
                                      leading: SizedBox(
                                        width: 48,
                                        height: 48,
                                        child: ChannelLogoWidget(
                                          channelName: channel.name,
                                          logoUrl: channel.logoUrl,
                                          tvgId: channel.tvgId,
                                          width: 48,
                                          height: 48,
                                          fit: BoxFit.contain,
                                          placeholder: const Icon(
                                            Icons.tv,
                                            color: Colors.white54,
                                          ),
                                          errorWidget: const Icon(
                                            Icons.tv,
                                            color: Colors.white54,
                                          ),
                                        ),
                                      ),
                                      title: Text(
                                        channel.name,
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                      subtitle: Text(
                                        channel.groupTitle ?? '',
                                        style: TextStyle(
                                            color: Colors.white
                                                .withValues(alpha: 0.5)),
                                      ),
                                      onTap: () =>
                                          Navigator.pop(context, channel),
                                    ),
                                  ),
                                );
                              },
                            ),
                          );
                        },
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

  Widget _buildCategoryChip(
      String label, String? category, ChannelProvider provider) {
    final isSelected = _selectedCategory == category;
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: FocusableActionDetector(
        actions: <Type, Action<Intent>>{
          ActivateIntent: CallbackAction<ActivateIntent>(
            onInvoke: (intent) {
              setState(() {
                _selectedCategory = isSelected ? null : category;
                _channelsFuture = _loadChannels(provider);
              });
              return null;
            },
          ),
        },
        child: Builder(
          builder: (context) {
            final isFocused = Focus.of(context).hasFocus;
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedCategory = isSelected ? null : category;
                  _channelsFuture = _loadChannels(provider);
                });
              },
              child: FilterChip(
                label: Text(label),
                selected: isSelected,
                onSelected: (selected) {
                  setState(() {
                    _selectedCategory = selected ? category : null;
                    _channelsFuture = _loadChannels(provider);
                  });
                },
                backgroundColor: isFocused
                    ? AppTheme.primaryBlue.withValues(alpha: 0.2)
                    : Colors.white.withValues(alpha: 0.05),
                selectedColor: AppTheme.primaryBlue,
                labelStyle: TextStyle(
                  color: isSelected
                      ? Colors.white
                      : Colors.white.withValues(alpha: 0.7),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
