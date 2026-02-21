import 'dart:async';
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
  Timer? _scrollThrottle;

  void _handleScrollNotification(ScrollNotification notification) {
    if (notification.metrics.maxScrollExtent <= 0) return;

    // Throttle scroll handling to reduce callback frequency
    if (_scrollThrottle?.isActive ?? false) return;
    _scrollThrottle = Timer(const Duration(milliseconds: 16), () {}); // ~60fps

    final remaining =
        notification.metrics.maxScrollExtent - notification.metrics.pixels;
    final threshold =
        (widget.cardWidth + widget.cardGap) * 4; // prefetch 4 cards ahead

    // Check if we need to load more DATA (pagination)
    if (remaining < threshold) {
      widget.onLoadMore?.call();
    }
  }

  @override
  void dispose() {
    _scrollThrottle?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          _handleScrollNotification(notification);
          return false;
        },
        child: ListView.separated(
          controller: widget.controller,
          key: ValueKey('row_${widget.sectionKey}'),
          scrollDirection: Axis.horizontal,
          physics: const ClampingScrollPhysics(),
          cacheExtent:
              widget.cardWidth * 4, // Keep more cards alive to reduce flicker
          padding: widget.padding,
          clipBehavior: Clip.none,
          itemCount: widget.itemCount,
          separatorBuilder: (context, index) => SizedBox(width: widget.cardGap),
          // addRepaintBoundaries is true by default, which helps with scroll perf
          addAutomaticKeepAlives:
              true, // Keep cards alive to avoid image flicker
          itemBuilder: (context, index) {
            return KeyedSubtree(
              key: ValueKey('${widget.sectionKey}_item_$index'),
              child: widget.itemBuilder(context, index),
            );
          },
        ),
      ),
    );
  }
}
