import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SliderItem extends StatelessWidget {
  const SliderItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: CachedNetworkImage(
        imageUrl:
            'https://m.media-amazon.com/images/I/91II+F1H7LL._AC_UY327_FMwebp_QL65_.jpg',
        fit: BoxFit.fill,
        width: double.infinity,
      ),
    );
  }
}
