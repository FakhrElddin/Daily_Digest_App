import 'package:daily_digest/features/home/presentation/views/widgets/custom_image.dart';
import 'package:flutter/material.dart';

class BreakingNewsListView extends StatelessWidget {
  const BreakingNewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => const CustomImage(),
        separatorBuilder: (context, index) => const SizedBox(
          width: 24,
        ),
        itemCount: 5,
      ),
    );
  }
}
