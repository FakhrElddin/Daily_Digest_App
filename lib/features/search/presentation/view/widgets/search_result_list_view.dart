import 'package:daily_digest/features/home/presentation/views/widgets/custom_recommendation_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (context, index) => const CustomRecommendationItem(),
      separatorBuilder: (context, index) => const SizedBox(
        height: 24,
      ),
      itemCount: 10,
    );
  }
}