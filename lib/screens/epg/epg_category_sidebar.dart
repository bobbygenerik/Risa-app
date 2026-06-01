import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iptv_player/utils/app_spacing.dart';
import 'package:iptv_player/utils/app_theme.dart';

typedef EpgCategoryFocusNodeFn = FocusNode Function(int index);

/// Category filter bar for the EPG guide.
class EpgCategorySidebar extends StatelessWidget {
  const EpgCategorySidebar({
    super.key,
    required this.categories,
    required this.selectedCategory,
    required this.categoryFocusNodeForIndex,
    required this.onCategorySelected,
    required this.onRequestNavigationFocus,
    this.showCenteredUpdating = false,
  });

  final List<String> categories;
  final String? selectedCategory;
  final EpgCategoryFocusNodeFn categoryFocusNodeForIndex;
  final ValueChanged<String> onCategorySelected;
  final VoidCallback onRequestNavigationFocus;
  final bool showCenteredUpdating;

  static const double rowHeight = AppSpacing.epgRowHeight;
  static const double rowGap = 4.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.categoryBarWidth(),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                ListView.builder(
                  key: const PageStorageKey<String>('epg_category_list'),
                  physics: const BouncingScrollPhysics(),
                  primary: false,
                  itemExtent: rowHeight + rowGap,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final category = categories[index];
                    return EpgCategoryItem(
                      name: category,
                      isSelected: selectedCategory == category,
                      index: index,
                      focusNode: categoryFocusNodeForIndex(index),
                      onTap: () => onCategorySelected(category),
                      onRequestNavigationFocus: onRequestNavigationFocus,
                    );
                  },
                ),
                if (showCenteredUpdating)
                  IgnorePointer(
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 14,
                            height: 14,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color:
                                  AppTheme.primaryBlue.withValues(alpha: 0.9),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Updating',
                            style: TextStyle(
                              color: Colors.white.withValues(alpha: 0.6),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Single category chip in the EPG filter bar.
class EpgCategoryItem extends StatelessWidget {
  const EpgCategoryItem({
    super.key,
    required this.name,
    required this.isSelected,
    required this.onTap,
    required this.index,
    required this.focusNode,
    required this.onRequestNavigationFocus,
  });

  final String name;
  final bool isSelected;
  final VoidCallback onTap;
  final int index;
  final FocusNode focusNode;
  final VoidCallback onRequestNavigationFocus;

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: focusNode,
      canRequestFocus: true,
      onKeyEvent: (node, event) {
        if (event is KeyDownEvent) {
          if (event.logicalKey == LogicalKeyboardKey.select ||
              event.logicalKey == LogicalKeyboardKey.enter) {
            onTap();
            return KeyEventResult.handled;
          }
          if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
            return KeyEventResult.ignored;
          }
          if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
            onRequestNavigationFocus();
            return KeyEventResult.handled;
          }
        }
        return KeyEventResult.ignored;
      },
      child: Builder(builder: (context) {
        final bool isFocused = Focus.of(context).hasFocus;
        return GestureDetector(
          onTap: onTap,
          behavior: HitTestBehavior.opaque,
          child: AnimatedScale(
            duration: const Duration(milliseconds: 90),
            curve: Curves.easeOut,
            scale: isFocused ? 1.05 : 1.0,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 120),
              curve: Curves.easeOut,
              height: EpgCategorySidebar.rowHeight,
              margin: EdgeInsets.only(
                left: context.spacingXs(),
                right: context.spacingXs(),
                bottom: EpgCategorySidebar.rowGap,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: context.spacingXs(),
              ),
              decoration: BoxDecoration(
                color: (isFocused || isSelected)
                    ? const Color(0xFF2a2a3e).withValues(alpha: 0.85)
                    : const Color(0xFF2a2a3e).withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(8),
                border: isFocused
                    ? Border.all(color: AppTheme.focusBorder, width: 2)
                    : Border.all(
                        color: Colors.white.withValues(alpha: 0.1), width: 1),
              ),
              child: Center(
                child: Text(
                  name,
                  style: TextStyle(
                    color: isFocused || isSelected
                        ? Colors.white
                        : Colors.white.withValues(alpha: 0.7),
                    fontSize: 14,
                    fontWeight: (isFocused || isSelected)
                        ? FontWeight.w600
                        : FontWeight.w500,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
