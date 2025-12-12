import 'package:flutter/widgets.dart';

/// Centralized FocusNode pool to reduce memory allocation
/// Reuses FocusNode instances across screens instead of creating new ones
class FocusPoolService {
  static final FocusPoolService _instance = FocusPoolService._internal();
  factory FocusPoolService() => _instance;
  FocusPoolService._internal();

  final List<FocusNode> _availableNodes = [];
  final Map<String, FocusNode> _assignedNodes = {};

  /// Get a FocusNode from pool or create new one
  FocusNode getFocusNode(String id, {String? debugLabel}) {
    // Return existing node if already assigned
    if (_assignedNodes.containsKey(id)) {
      return _assignedNodes[id]!;
    }

    FocusNode node;
    if (_availableNodes.isNotEmpty) {
      // Reuse from pool
      node = _availableNodes.removeLast();
      // Reset properties for reuse
      node.debugLabel = debugLabel;
    } else {
      // Create new node
      node = FocusNode(debugLabel: debugLabel);
    }

    _assignedNodes[id] = node;
    return node;
  }

  /// Return FocusNode to pool for reuse
  void returnFocusNode(String id) {
    final node = _assignedNodes.remove(id);
    if (node != null && !node.hasFocus) {
      // Only return to pool if not currently focused
      _availableNodes.add(node);
    }
  }

  /// Return multiple FocusNodes to pool
  void returnFocusNodes(List<String> ids) {
    for (final id in ids) {
      returnFocusNode(id);
    }
  }

  /// Dispose all nodes (app shutdown)
  void disposeAll() {
    for (final node in _assignedNodes.values) {
      node.dispose();
    }
    for (final node in _availableNodes) {
      node.dispose();
    }
    _assignedNodes.clear();
    _availableNodes.clear();
  }

  /// Get pool statistics
  int get availableCount => _availableNodes.length;
  int get assignedCount => _assignedNodes.length;
  int get totalCount => availableCount + assignedCount;
}