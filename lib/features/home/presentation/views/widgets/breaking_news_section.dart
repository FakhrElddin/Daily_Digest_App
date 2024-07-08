import 'package:daily_digest/core/utils/styles.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/breaking_news_list_view.dart';
import 'package:flutter/material.dart';

class BreakingNewsSection extends StatelessWidget {
  const BreakingNewsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            'Breaking News',
            style: Styles.textStyle24.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const BreakingNewsListView(),
      ],
    );
  }
}
