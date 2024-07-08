import 'package:cached_network_image/cached_network_image.dart';
import 'package:daily_digest/core/widgets/custom_progress_indicator.dart';
import 'package:flutter/material.dart';

class Sliderimage extends StatelessWidget {
  const Sliderimage({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: CachedNetworkImage(
        height: MediaQuery.of(context).size.height * 0.25,
        imageUrl: image,
        placeholder: (context, url) => const CustomProgressIndicator(),
        fit: BoxFit.fill,
        width: double.infinity,
      ),
    );
  }
}
