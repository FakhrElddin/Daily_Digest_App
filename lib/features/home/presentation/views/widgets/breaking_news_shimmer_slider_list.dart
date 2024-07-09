import 'package:daily_digest/features/home/presentation/views/widgets/custom_carousel_slider.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/custom_dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

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
            (index) => Shimmer.fromColors(
              baseColor: Colors.grey.withOpacity(0.4),
              highlightColor: Colors.grey.withOpacity(0.1),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
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