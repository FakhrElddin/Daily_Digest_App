import 'package:daily_digest/features/categories/presentation/views/widgets/category_articles_list_view.dart';
import 'package:daily_digest/features/categories/presentation/views/widgets/custom_category_articles_app_bar.dart';
import 'package:flutter/material.dart';

class CategoryArticlesViewBody extends StatelessWidget {
  const CategoryArticlesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: CustomCategoryArticlesAppBar(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        CategoryArticlesListView(),
      ],
    );
  }
}
