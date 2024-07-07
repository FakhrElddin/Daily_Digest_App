import 'package:daily_digest/features/home/presentation/views/widgets/breaking_news_list_view_item_data.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/custom_image.dart';
import 'package:flutter/material.dart';

class BreakingNewsListViewItem extends StatelessWidget {
  const BreakingNewsListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const AspectRatio(
      aspectRatio: 2.8 / 2,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImage(),
          BreakingNewsListViewItemData(),
        ],
      ),
    );
  }
}
