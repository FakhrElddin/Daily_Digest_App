import 'package:daily_digest/core/widgets/custom_error_widget.dart';
import 'package:daily_digest/core/widgets/custom_progress_indicator.dart';
import 'package:daily_digest/features/categories/presentation/manager/category_articles_cubit/category_articles_cubit.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/custom_recommendation_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryArticlesListView extends StatelessWidget {
  const CategoryArticlesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryArticlesCubit, CategoryArticlesState>(
      builder: (context, state) {
        if (state is CategoryArticlesSuccess) {
          return SliverList.separated(
            itemBuilder: (context, index) => CustomRecommendationItem(
              articleModel: state.news.articles![index],
            ),
            separatorBuilder: (context, index) => const SizedBox(
              height: 24,
            ),
            itemCount: state.news.articles?.length ?? 0,
          );
        } else if (state is CategoryArticlesFailure) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(
              text: state.errorMessage,
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: CustomProgressIndicator(),
          );
        }
      },
    );
  }
}
