import 'package:daily_digest/features/home/presentation/views/widgets/article_view_body.dart';
import 'package:flutter/material.dart';

class ArticleView extends StatelessWidget {
  const ArticleView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: ArticleViewBody(),
      ),
    );
  }
}
