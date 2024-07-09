import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ArticleViewImage extends StatelessWidget {
  const ArticleViewImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 2,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .3,
          imageUrl:
              'https://m.media-amazon.com/images/I/91II+F1H7LL._AC_UY327_FMwebp_QL65_.jpg',
        ),
      ),
    );
  }
}
