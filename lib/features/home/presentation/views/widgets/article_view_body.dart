import 'package:daily_digest/features/home/presentation/views/widgets/custom_article_view_app_bar.dart';
import 'package:flutter/material.dart';

class ArticleViewBody extends StatelessWidget {
  const ArticleViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomArticleViewAppBar(),
      ],
    );
  }
}
