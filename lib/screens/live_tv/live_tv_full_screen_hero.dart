import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/screens/live_tv/live_tv_artwork_resolver.dart';
import 'package:iptv_player/screens/live_tv/live_tv_hero_candidate_cache.dart';
import 'package:iptv_player/screens/live_tv/live_tv_hero_content.dart';
import 'package:iptv_player/screens/live_tv/live_tv_layout.dart';
import 'package:iptv_player/screens/live_tv/program_type_slivers.dart';
import 'package:iptv_player/utils/app_colors.dart';
import 'package:iptv_player/utils/app_spacing.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
import 'package:iptv_player/widgets/content_focus_provider.dart';

/// Full-screen hero layout with parallax scroll and channel rows.
class LiveTvFullScreenHero extends StatelessWidget {
  const LiveTvFullScreenHero({
    super.key,
    required this.selection,
    required this.allChannels,
    required this.scrollController,
    required this.heroArtworkVersion,
    required this.suspendHeroBackground,
    required this.forceRowsVisible,
    required this.debugRowProbe,
    required this.sidebarInset,
    required this.artworkResolver,
    required this.featuredRow,
    required this.continueWatchingRow,
    required this.buildProgramTypeSlivers,
    required this.heroInfoOverlay,
    required this.channelLogo,
    this.heroImageUrl,
    this.onHeroBackdropRejected,
  });

  final LiveTvHeroSelection selection;
  final String? heroImageUrl;
  final void Function(String url)? onHeroBackdropRejected;
  final List<Channel> allChannels;
  final ScrollController scrollController;
  final ValueNotifier<int> heroArtworkVersion;
  final bool suspendHeroBackground;
  final bool forceRowsVisible;
  final bool debugRowProbe;
  final double sidebarInset;
  final LiveTvArtworkResolver artworkResolver;
  final Widget featuredRow;
  final Widget continueWatchingRow;
  final List<Widget> Function(
    BuildContext context,
    double rightInset,
    List<Channel> channels,
  ) buildProgramTypeSlivers;
  final Widget Function(Channel channel, Program? program) heroInfoOverlay;
  final Widget Function(Channel channel) channelLogo;

  double _scrollOffset() {
    if (!scrollController.hasClients) return 0;
    return scrollController.offset;
  }

  Widget _heroBackdrop(
    BuildContext context,
    double heroHeight,
    Channel activeChannel,
    Program? currentProgram,
  ) {
    return LiveTvHeroContent(
      channel: activeChannel,
      program: currentProgram,
      heroImage: heroImageUrl ?? '',
      suspendBackground: suspendHeroBackground,
      onBackdropRejected: onHeroBackdropRejected,
    );
  }

  @override
  Widget build(BuildContext context) {
    final heroHeight = context.heroHeight();
    const cardPeek = 80.0;
    final contentTop = LiveTvLayout.contentTop(heroHeight, cardPeek);
    final contentInset = context.spacingSm() + sidebarInset;
    final rightInset = context.spacingLg();
    final activeChannel = selection.activeChannel;
    final currentProgram = selection.program;
    final showHeroChrome = selection.hasArtwork ||
        currentProgram != null ||
        activeChannel.name.trim().isNotEmpty;
    final navProvider =
        context.dependOnInheritedWidgetOfExactType<ContentFocusProvider>();
    final hideHeroChrome =
        context.isTV && (navProvider?.isNavExpanded ?? false);

    if (forceRowsVisible) {
      return Container(
        color: AppColors.background,
        child: CustomScrollView(
          key: const PageStorageKey<String>('live_tv_scroll_forced'),
          controller: scrollController,
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: heroHeight,
                child: _heroBackdrop(
                  context,
                  heroHeight,
                  activeChannel,
                  currentProgram,
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(right: rightInset),
              sliver: SliverToBoxAdapter(child: featuredRow),
            ),
            SliverToBoxAdapter(child: SizedBox(height: context.spacingXl())),
          ],
        ),
      );
    }

    return SizedBox.expand(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: heroHeight,
            child: AnimatedBuilder(
              animation: scrollController,
              child: Builder(builder: (context) {
                final fadeProgress =
                    (_scrollOffset() / (heroHeight * 0.5)).clamp(0.0, 1.0);
                return Opacity(
                  opacity: 1.0 - fadeProgress,
                  child: Stack(
                    children: [
                      _heroBackdrop(
                        context,
                        heroHeight,
                        activeChannel,
                        currentProgram,
                      ),
                      Positioned.fill(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                AppTheme.darkBackground,
                                AppTheme.darkBackground,
                                AppTheme.darkBackground.withValues(alpha: 0.0),
                              ],
                              stops: const [0.0, 0.2, 0.8],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        height: 260,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                AppTheme.darkBackground,
                                AppTheme.darkBackground.withValues(alpha: 0.78),
                                AppTheme.darkBackground.withValues(alpha: 0.0),
                              ],
                              stops: const [0.0, 0.42, 1.0],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
              builder: (context, child) {
                return Transform.translate(
                  offset: Offset(0, -_scrollOffset()),
                  child: child,
                );
              },
            ),
          ),
          Positioned(
            top: contentTop + context.spacingSm(),
            left: 0,
            right: 0,
            bottom: 0,
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppTheme.darkBackground.withValues(alpha: 0.0),
                    AppTheme.darkBackground.withValues(alpha: 0.92),
                    AppTheme.darkBackground,
                    AppTheme.darkBackground,
                  ],
                  stops: const [0.0, 0.1, 0.3, 1.0],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: CustomScrollView(
              key: const PageStorageKey<String>('live_tv_scroll'),
              controller: scrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: GestureDetector(
                    onTap: () {
                      scrollController.animateTo(
                        0.0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeOutCubic,
                      );
                    },
                    child: SizedBox(height: contentTop),
                  ),
                ),
                if (debugRowProbe)
                  SliverToBoxAdapter(
                    child: Container(
                      margin: EdgeInsets.only(
                        left: sidebarInset + context.spacingSm(),
                        right: rightInset,
                        bottom: context.spacingSm(),
                      ),
                      height: 120,
                      decoration: BoxDecoration(
                        color: const Color(0xFF1E7F3B).withValues(alpha: 0.8),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.white.withValues(alpha: 0.3),
                        ),
                      ),
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'DEBUG: SCROLL CONTENT VISIBLE',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                    ) ??
                                const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                      ),
                    ),
                  ),
                SliverPadding(
                  padding: EdgeInsets.only(right: rightInset),
                  sliver: SliverToBoxAdapter(
                    child: KeyedSubtree(
                      key: const ValueKey<String>('live_tv_featured_row'),
                      child: featuredRow,
                    ),
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.only(right: rightInset),
                  sliver: SliverToBoxAdapter(
                    child: KeyedSubtree(
                      key: const ValueKey<String>('live_tv_continue_watching'),
                      child: continueWatchingRow,
                    ),
                  ),
                ),
                ...buildProgramTypeSlivers(context, rightInset, allChannels),
                SliverToBoxAdapter(
                  child: SizedBox(height: context.spacing(12)),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: rightInset,
            height: contentTop,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 150),
              curve: Curves.easeOut,
              opacity: hideHeroChrome || !showHeroChrome ? 0.0 : 1.0,
              child: AnimatedBuilder(
                animation: scrollController,
                builder: (context, _) {
                  final fadeProgress =
                      (_scrollOffset() / (heroHeight * 0.3)).clamp(0.0, 1.0);
                  final opacity = 1.0 - fadeProgress;

                  Widget content;
                  if (opacity <= 0.01) {
                    content = Focus(
                      onKeyEvent: (node, event) {
                        if (event is KeyDownEvent) {
                          if (event.logicalKey == LogicalKeyboardKey.select ||
                              event.logicalKey == LogicalKeyboardKey.enter ||
                              event.logicalKey == LogicalKeyboardKey.space) {
                            scrollController.animateTo(
                              0.0,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeOutCubic,
                            );
                            return KeyEventResult.handled;
                          }
                        }
                        return KeyEventResult.ignored;
                      },
                      child: GestureDetector(
                        onTap: () {
                          scrollController.animateTo(
                            0.0,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeOutCubic,
                          );
                        },
                        child: SizedBox(
                          width: double.infinity,
                          height: contentTop,
                          child: const ColoredBox(color: Colors.transparent),
                        ),
                      ),
                    );
                  } else {
                    content = Opacity(
                      opacity: opacity,
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: Padding(
                            padding: EdgeInsets.only(left: contentInset),
                            child:
                                heroInfoOverlay(activeChannel, currentProgram),
                          ),
                        ),
                      ),
                    );
                  }

                  return Transform.translate(
                    offset: Offset(0, -_scrollOffset()),
                    child: content,
                  );
                },
              ),
            ),
          ),
          Positioned(
            top: context.tvSpacing(AppSizes.xxl),
            right: context.tvSpacing(AppSizes.lg),
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 150),
              curve: Curves.easeOut,
              opacity: hideHeroChrome || !showHeroChrome ? 0.0 : 1.0,
              child: Builder(builder: (context) {
                final fadeProgress =
                    (_scrollOffset() / (heroHeight * 0.5)).clamp(0.0, 1.0);
                return Opacity(
                  opacity: 1.0 - fadeProgress,
                  child: SizedBox(
                    width: context.tvSpacing(112),
                    height: context.tvSpacing(72),
                    child: channelLogo(activeChannel),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
