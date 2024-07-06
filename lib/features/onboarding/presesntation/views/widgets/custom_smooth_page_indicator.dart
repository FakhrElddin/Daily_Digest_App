import 'package:daily_digest/constants.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothPageIndicator extends StatelessWidget {
  const CustomSmoothPageIndicator({
    super.key,
    required this.onboardingController,
    required this.count,
  });

  final PageController onboardingController;
  final int count;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: onboardingController,
      count: count,
      effect: const ExpandingDotsEffect(
        activeDotColor: kPrimaryColor,
        expansionFactor: 2,
      ),
    );
  }
}