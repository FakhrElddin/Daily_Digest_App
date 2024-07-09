import 'package:cached_network_image/cached_network_image.dart';
import 'package:daily_digest/constants.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/image_shimmer_item.dart';
import 'package:flutter/material.dart';

class BreakingNewsSliderImage extends StatelessWidget {
  const BreakingNewsSliderImage({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: CachedNetworkImage(
        height: MediaQuery.of(context).size.height * 0.29,
        imageUrl: image,
        placeholder: (context, url) => const ImageShimmerItem(),
        errorWidget: (context, url, error) => const BreakingNewsSliderImage(
          image: defaultArticleImage,
        ),
        fit: BoxFit.fill,
        width: double.infinity,
      ),
    );
  }
}
