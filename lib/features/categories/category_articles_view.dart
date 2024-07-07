import 'package:daily_digest/features/categories/presentation/views/widgets/category_articles_view_body.dart';
import 'package:flutter/material.dart';

class CategoryArticlesView extends StatelessWidget {
  const CategoryArticlesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CategoryArticlesViewBody(),
    );
  }
}
