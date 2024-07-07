import 'package:cached_network_image/cached_network_image.dart';
import 'package:daily_digest/core/utils/styles.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/breaking_news_list_view.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/custom_image.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 8,
          ),
          const CustomAppBar(),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Breaking News',
            style: Styles.textStyle24.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const BreakingNewsListViewItem(),
        ],
      ),
    );
  }
}
