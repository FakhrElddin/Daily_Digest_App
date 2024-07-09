import 'package:daily_digest/features/categories/presentation/manager/category_articles_cubit/category_articles_cubit.dart';
import 'package:daily_digest/features/categories/presentation/views/widgets/category_articles_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryArticlesView extends StatefulWidget {
  const CategoryArticlesView({super.key, required this.category});
  final String category;

  @override
  State<CategoryArticlesView> createState() => _CategoryArticlesViewState();
}

class _CategoryArticlesViewState extends State<CategoryArticlesView> {
  @override
  void initState() {
    BlocProvider.of<CategoryArticlesCubit>(context)
        .fetchCategoryArticles(category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CategoryArticlesViewBody(
          category: widget.category,
        ),
      ),
    );
  }
}
