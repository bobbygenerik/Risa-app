import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:iptv_player/models/channel.dart';

/// Manages lazily-created focus nodes for EPG channel, program, and category rows.
class EpgFocusNodeRegistry {
  EpgFocusNodeRegistry({
    required FocusNode firstChannelFocus,
    required FocusNode firstCategoryFocus,
  })  : _firstChannelFocus = firstChannelFocus,
        _firstCategoryFocus = firstCategoryFocus;

  final FocusNode _firstChannelFocus;
  final FocusNode _firstCategoryFocus;

  final Map<String, FocusNode> _programFocusNodes = {};
  final Queue<String> _programFocusOrder = Queue<String>();
  static const int _maxProgramFocusNodes = 400;

  final Map<String, FocusNode> _channelFocusNodes = {};
  final Queue<String> _channelFocusOrder = Queue<String>();
  static const int _maxChannelFocusNodes = 400;

  final Map<int, FocusNode> _categoryFocusNodes = {};
  static const int _maxCategoryFocusNodes = 100;

  FocusNode programFocusNodeForChannel(Channel channel) {
    final key = _focusKeyForChannel(channel);
    final existing = _programFocusNodes[key];
    if (existing != null) return existing;
    final node = FocusNode(debugLabel: 'EPGProgram:$key');
    _programFocusNodes[key] = node;
    _programFocusOrder.addLast(key);
    while (_programFocusOrder.length > _maxProgramFocusNodes) {
      final removedKey = _programFocusOrder.removeFirst();
      _programFocusNodes.remove(removedKey)?.dispose();
    }
    return node;
  }

  FocusNode channelFocusNodeForChannel(Channel channel, int index) {
    if (index == 0) {
      return _firstChannelFocus;
    }
    final key = '${_focusKeyForChannel(channel)}_$index';
    final existing = _channelFocusNodes[key];
    if (existing != null) return existing;
    final node = FocusNode(debugLabel: 'EPGChannel:$key');
    _channelFocusNodes[key] = node;
    _channelFocusOrder.addLast(key);
    while (_channelFocusOrder.length > _maxChannelFocusNodes) {
      final removedKey = _channelFocusOrder.removeFirst();
      _channelFocusNodes.remove(removedKey)?.dispose();
    }
    return node;
  }

  FocusNode categoryFocusNodeForIndex(int index) {
    if (index == 0) {
      return _firstCategoryFocus;
    }
    final existing = _categoryFocusNodes[index];
    if (existing != null) return existing;
    final node = FocusNode(debugLabel: 'EPGCategory:$index');
    _categoryFocusNodes[index] = node;
    if (_categoryFocusNodes.length > _maxCategoryFocusNodes) {
      final keysToRemove = _categoryFocusNodes.keys
          .where((k) => k != index && k != 0)
          .take(_categoryFocusNodes.length - _maxCategoryFocusNodes ~/ 2)
          .toList();
      for (final key in keysToRemove) {
        _categoryFocusNodes.remove(key)?.dispose();
      }
    }
    return node;
  }

  static String focusKeyForChannel(Channel channel) {
    final id = channel.id.trim();
    if (id.isNotEmpty) return id;
    final epgId = channel.epgLookupId.trim();
    if (epgId.isNotEmpty) return epgId;
    return channel.name.trim();
  }

  String _focusKeyForChannel(Channel channel) => focusKeyForChannel(channel);

  void dispose() {
    for (final node in _programFocusNodes.values) {
      node.dispose();
    }
    _programFocusNodes.clear();
    _programFocusOrder.clear();
    for (final node in _channelFocusNodes.values) {
      node.dispose();
    }
    _channelFocusNodes.clear();
    _channelFocusOrder.clear();
    for (final node in _categoryFocusNodes.values) {
      node.dispose();
    }
    _categoryFocusNodes.clear();
  }
}
