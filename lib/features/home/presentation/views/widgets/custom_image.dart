import 'package:cached_network_image/cached_network_image.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/breaking_news_shimmer_item.dart';
import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 2,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: CachedNetworkImage(
          imageUrl: image,
          placeholder: (context, url) => const BreakingNewsShimmerItem(),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
