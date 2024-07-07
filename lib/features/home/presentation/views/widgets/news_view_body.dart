import 'package:daily_digest/features/home/presentation/views/widgets/breaking_news_section.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewsViewBody extends StatelessWidget {
  const NewsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(
            height: 8,
          ),
          CustomAppBar(),
          SizedBox(
            height: 30,
          ),
          BreakingNewsSection(),
        ],
      ),
    );
  }
}
