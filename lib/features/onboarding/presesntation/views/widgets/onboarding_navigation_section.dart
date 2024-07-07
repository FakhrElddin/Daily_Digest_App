import 'package:daily_digest/features/onboarding/presesntation/views/widgets/custom_floating_action_button.dart';
import 'package:daily_digest/features/onboarding/presesntation/views/widgets/custom_smooth_page_indicator.dart';
import 'package:daily_digest/features/onboarding/presesntation/views/widgets/onboarding_view_body.dart';
import 'package:flutter/material.dart';

class OnboardingNavigationSection extends StatelessWidget {
  const OnboardingNavigationSection({
    super.key,
    required this.onboardingController,
    required this.widget,
    required this.btn2Icon,
  });

  final PageController onboardingController;
  final OnBoardingViewBody widget;
  final IconData btn2Icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomFloatingActionButton(
          heroTag: 'btn1',
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            onboardingController.previousPage(
              duration: const Duration(
                microseconds: 750,
              ),
              curve: Curves.fastLinearToSlowEaseIn,
            );
          },
        ),
        CustomSmoothPageIndicator(
          onboardingController: onboardingController,
          count: widget.onboardingItems.length,
        ),
        CustomFloatingActionButton(
          heroTag: 'btn2',
          icon: Icon(
            btn2Icon,
            color: Colors.white,
          ),
          onPressed: () {
            onboardingController.nextPage(
              duration: const Duration(
                microseconds: 750,
              ),
              curve: Curves.fastLinearToSlowEaseIn,
            );
          },
        ),
      ],
    );
  }
}
