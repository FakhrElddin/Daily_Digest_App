import 'package:daily_digest/core/widgets/custom_error_widget.dart';
import 'package:daily_digest/features/home/presentation/manager/recommendation_news_cubit/recommendation_news_cubit.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/custom_article_item.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/articles_list_shimer_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecommendationListView extends StatelessWidget {
  const RecommendationListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecommendationNewsCubit, RecommendationNewsState>(
      builder: (context, state) {
        if (state is RecommendationNewsSuccess) {
          return SliverList.separated(
            itemBuilder: (context, index) {
              return CustomArticleItem(
                articleModel: state.news.articles![index],
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
              height: 24,
            ),
            itemCount: 10,
          );
        } else if (state is RecommendationNewsFailure) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(
              text: state.errorMessage,
            ),
          );
        } else {
          return SliverList.separated(
            itemBuilder: (context, index) => const ArticlesListShimmerItem(),
            separatorBuilder: (context, index) => const SizedBox(
              height: 24,
            ),
            itemCount: 6,
          );
        }
      },
    );
  }
}
