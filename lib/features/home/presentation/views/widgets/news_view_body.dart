import 'package:daily_digest/core/utils/styles.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/breaking_news_section.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/recommendation_list_view.dart';
import 'package:flutter/material.dart';

class NewsViewBody extends StatelessWidget {
  const NewsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
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
              const BreakingNewsSection(),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                ),
                child: Text(
                  'Recommendation',
                  style: Styles.textStyle24.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
        const RecommendationListView(),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 120,
          ),
        ),
      ],
    );
  }
}
