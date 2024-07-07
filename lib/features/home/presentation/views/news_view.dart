import 'package:daily_digest/features/home/presentation/views/widgets/news_view_body.dart';
import 'package:flutter/material.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NewsViewBody(),
    );
  }
}
