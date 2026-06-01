import 'package:flutter/material.dart';

class LiveTvCategoryResourceStore {
  final Map<String, ValueNotifier<int>> rowNotifiers = {};
  final Map<String, ScrollController> rowScrollControllers = {};
  final Set<String> rowScrollInitialized = {};

  void purgeExcept(Set<String> keep) {
    final removedNotifiers = <ValueNotifier<int>>[];
    rowNotifiers.removeWhere((key, notifier) {
      final remove = !keep.contains(key);
      if (remove) removedNotifiers.add(notifier);
      return remove;
    });
    for (final notifier in removedNotifiers) {
      notifier.dispose();
    }

    final removedControllers = <ScrollController>[];
    rowScrollControllers.removeWhere((key, controller) {
      final remove = !keep.contains(key);
      if (remove) removedControllers.add(controller);
      return remove;
    });
    for (final controller in removedControllers) {
      controller.dispose();
    }

    rowScrollInitialized.removeWhere((key) => !keep.contains(key));
  }

  void dispose() {
    for (final controller in rowScrollControllers.values) {
      controller.dispose();
    }
    rowScrollControllers.clear();
    rowScrollInitialized.clear();

    for (final notifier in rowNotifiers.values) {
      notifier.dispose();
    }
    rowNotifiers.clear();
  }
}
