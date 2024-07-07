import 'package:daily_digest/core/utils/styles.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/breaking_news_section.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/custom_recommendation_item.dart';
import 'package:flutter/material.dart';

class NewsViewBody extends StatelessWidget {
  const NewsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          const CustomAppBar(),
          const SizedBox(
            height: 30,
          ),
          const BreakingNewsSection(),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Recommendation',
            style: Styles.textStyle24.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const CustomRecommendationItem(),
        ],
      ),
    );
  }
}
