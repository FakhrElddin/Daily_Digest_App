import 'package:daily_digest/features/home/presentation/views/widgets/breaking_news_list_view_item_data.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/slider_item.dart';
import 'package:flutter/material.dart';

class BreakingNewsListViewItem extends StatelessWidget {
  const BreakingNewsListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.bottomLeft,
      children: [
        SliderItem(),
        BreakingNewsListViewItemData(),
      ],
    );
  }
}


