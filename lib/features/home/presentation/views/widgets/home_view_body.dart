import 'package:cached_network_image/cached_network_image.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/custom_image.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

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
          BreakingNewsListViewItem(),
        ],
      ),
    );
  }
}

class BreakingNewsListViewItem extends StatelessWidget {
  const BreakingNewsListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Breaking News',
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          child: const CustomImage(),
        ),
      ],
    );
  }
}


