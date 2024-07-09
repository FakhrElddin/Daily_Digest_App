import 'package:daily_digest/features/categories/presentation/views/widgets/category_articles_list_view.dart';
import 'package:daily_digest/features/categories/presentation/views/widgets/custom_category_articles_app_bar.dart';
import 'package:flutter/material.dart';

class CategoryArticlesViewBody extends StatelessWidget {
  const CategoryArticlesViewBody({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: CustomCategoryArticlesAppBar(
            category: category,
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        CategoryArticlesListView(),
      ],
    );
  }
}
