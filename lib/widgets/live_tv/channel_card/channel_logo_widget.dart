part of '../live_tv_channel_card.dart';

class ChannelLogoWidget extends StatelessWidget {
  const ChannelLogoWidget({
    super.key,
    required this.channel,
    this.width = 40,
    this.height = 24,
    this.cacheWidth = 150,
    this.cacheHeight = 80,
  });

  // Pre-compiled RegExp for faster SVG URL detection, replacing chained toLowerCase() methods
  static final _svgRegExp = RegExp(r'\.svg(\?|$)', caseSensitive: false);

  final Channel channel;
  final double width;
  final double height;
  final int cacheWidth;
  final int cacheHeight;

  @override
  Widget build(BuildContext context) {
    if (channel.logoUrl == null || channel.logoUrl!.isEmpty) {
      return const SizedBox.shrink();
    }

    final url = normalizeImageUrl(channel.logoUrl!);
    if (ImageFailureCache.shouldSkip(url)) {
      return const SizedBox.shrink();
    }

    final isSvg = _svgRegExp.hasMatch(url);

    if (isSvg) {
      return Padding(
        padding: const EdgeInsets.all(3),
        child: SizedBox(
          width: width - 6,
          height: height - 6,
          child: FittedBox(
            fit: BoxFit.contain,
            child: SvgPicture.network(
              url,
              headers: HttpClientService().imageHeaders,
              placeholderBuilder: (_) => const SizedBox.shrink(),
            ),
          ),
        ),
      );
    }

    final provider = LogoImageCache.providerFor(
      url,
      headers: HttpClientService().imageHeaders,
    );

    return Padding(
      padding: const EdgeInsets.all(3),
      child: SizedBox(
        width: width - 6,
        height: height - 6,
        child: FittedBox(
          fit: BoxFit.contain,
          child: Image(
            image: provider,
            filterQuality: FilterQuality.high,
            frameBuilder: (context, child, frame, wasSync) {
              if (wasSync || frame != null) {
                ImageFailureCache.recordSuccess(url);
                return child;
              }
              return const SizedBox.shrink();
            },
            errorBuilder: (context, error, stackTrace) {
              ImageFailureCache.recordFailure(url, error);
              return const SizedBox.shrink();
            },
          ),
        ),
      ),
    );
  }
}
