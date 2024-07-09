import 'package:daily_digest/features/home/presentation/views/widgets/breaking_news_shimmer_item.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/custom_carousel_slider.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/custom_dots_indicator.dart';
import 'package:flutter/material.dart';

class BreakingNewsShimmerSliderList extends StatefulWidget {
  const BreakingNewsShimmerSliderList({
    super.key,
  });

  @override
  State<BreakingNewsShimmerSliderList> createState() =>
      _BreakingNewsShimmerSliderListState();
}

class _BreakingNewsShimmerSliderListState
    extends State<BreakingNewsShimmerSliderList> {
  int currentPosition = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCarouselSlider(
          items: List.generate(
            10,
            (index) => const BreakingNewsShimmerItem(),
          ),
          onPageChanged: (index, reason) {
            currentPosition = index;
            setState(() {});
          },
        ),
        const SizedBox(
          height: 8,
        ),
        CustomDotsIndicator(
          position: currentPosition,
          dotsCount: 10,
        ),
      ],
    );
  }
}

