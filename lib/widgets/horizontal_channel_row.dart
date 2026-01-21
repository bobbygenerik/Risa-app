
import 'dart:math' as math;
import 'package:flutter/material.dart';

class HorizontalChannelRow extends StatefulWidget {
  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;
  final ScrollController controller;
  final EdgeInsets padding;
  final double cardGap;
  final double cardWidth;
  final VoidCallback? onLoadMore;
  final String sectionKey;

  const HorizontalChannelRow({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    required this.controller,
    required this.padding,
    required this.cardGap,
    required this.cardWidth,
    required this.sectionKey,
    this.onLoadMore,
  });

  @override
  State<HorizontalChannelRow> createState() => _HorizontalChannelRowState();
}

class _HorizontalChannelRowState extends State<HorizontalChannelRow> {
  int _visibleCount = 12;
  static const int _buffer = 6;

  @override
  void initState() {
    super.initState();
    // Use post-frame callback to safely check scroll position after layout
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _updateVisibleCountFromScroll();
      }
    });
  }

  @override
  void didUpdateWidget(HorizontalChannelRow oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.controller != oldWidget.controller) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) _updateVisibleCountFromScroll();
      });
    }
  }

  void _updateVisibleCountFromScroll() {
    if (!widget.controller.hasClients) {
      _resetToInitial();
      return;
    }
    
    final offset = widget.controller.offset;
    final viewportWidth = widget.controller.position.viewportDimension;
    // Estimate how many items cover the offset + viewport
    final itemWidth = widget.cardWidth + widget.cardGap;
    // Guard against division by zero
    if (itemWidth <= 0) {
      _resetToInitial();
      return;
    }
    // items visible based on scroll + buffer
    final needed = ((offset + viewportWidth) / itemWidth).ceil() + _buffer;
    
    final initial = _getInitialCount();
    final next = math.max(initial, needed);
    
    if (next > _visibleCount) {
      setState(() {
        _visibleCount = next;
      });
    }
  }
  
  int _getInitialCount() {
     final screenWidth = MediaQuery.of(context).size.width;
     final availableWidth = screenWidth - widget.padding.horizontal;
     final itemWidth = widget.cardWidth + widget.cardGap;
     // Guard against division by zero
     if (itemWidth <= 0) return 6;
     final perRow = (availableWidth / itemWidth).floor();
     return (perRow + _buffer).clamp(6, 12);
  }

  void _resetToInitial() {
    setState(() {
      _visibleCount = _getInitialCount();
    });
  }

  void _handleScrollNotification(ScrollNotification notification) {
    if (notification.metrics.maxScrollExtent <= 0) return;
    
    final remaining = notification.metrics.maxScrollExtent - notification.metrics.pixels;
    final threshold = (widget.cardWidth + widget.cardGap) * 4; // prefetch 4 cards ahead
    
    bool needsUpdate = false;
    
    // 1. Check if we need to load more DATA (pagination)
    if (remaining < threshold) {
      widget.onLoadMore?.call();
    }
    
    // 2. Check if we need to render more EXISTING items
    // If we are close to the end of currently rendered items
    // (maxScrollExtent is determined by itemCount * itemWidth, but here we are limiting itemCount provided to ListView)
    // Actually, ListView.separated with itemCount = min(total, visible) will set maxScrollExtent based on visible.
    // So if pixels is close to maxScrollExtent, we need to bump visible.
    
    if (widget.itemCount > _visibleCount && remaining < threshold) {
       final next = math.min(widget.itemCount, _visibleCount + _buffer);
       if (next > _visibleCount) {
         _visibleCount = next;
         needsUpdate = true;
       }
    }
    
    if (needsUpdate) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    // Ensure visible count covers at least the initial view
    final count = math.min(widget.itemCount, math.max(_visibleCount, 6));
    
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        _handleScrollNotification(notification);
        return false;
      },
      child: ListView.separated(
        controller: widget.controller,
        key: ValueKey('row_${widget.sectionKey}'),
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        cacheExtent: widget.cardWidth * 4, // Keep more cards alive to reduce flicker
        padding: widget.padding,
        clipBehavior: Clip.none,
        itemCount: count,
        // addRepaintBoundaries is true by default, which helps with scroll perf
        addAutomaticKeepAlives: false, // Disable to reduce memory pressure
        itemBuilder: widget.itemBuilder,
        separatorBuilder: (context, index) => SizedBox(width: widget.cardGap),
      ),
    );
  }
}
