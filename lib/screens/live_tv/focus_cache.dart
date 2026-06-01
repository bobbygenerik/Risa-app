import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:iptv_player/models/channel.dart';

class LiveTvFocusCache {
  LiveTvFocusCache({this.maxNodes = 320});

  final int maxNodes;
  final Map<String, FocusNode> _nodes = {};
  final Queue<String> _order = Queue<String>();

  FocusNode nodeForCard(String sectionKey, Channel channel, int index) {
    final key = keyFor(sectionKey, channel, index);
    final existing = _nodes[key];
    if (existing != null) return existing;

    final node = FocusNode(debugLabel: 'LiveTVCard:$key');
    _nodes[key] = node;
    _order.addLast(key);
    while (_order.length > maxNodes) {
      final removedKey = _order.removeFirst();
      final removed = _nodes.remove(removedKey);
      removed?.dispose();
    }
    return node;
  }

  FocusNode? nodeForKey(String key) => _nodes[key];

  String keyFor(String sectionKey, Channel channel, int index) {
    return '$sectionKey|${channel.epgLookupId}|$index';
  }

  void dispose() {
    for (final node in _nodes.values) {
      node.dispose();
    }
    _nodes.clear();
    _order.clear();
  }
}
