import 'package:daily_digest/constants.dart';
import 'package:daily_digest/core/utils/app_router.dart';
import 'package:daily_digest/core/utils/cache_helper.dart';
import 'package:daily_digest/features/onboarding/presesntation/views/widgets/custom_floating_action_button.dart';
import 'package:daily_digest/features/onboarding/presesntation/views/widgets/custom_smooth_page_indicator.dart';
import 'package:daily_digest/features/onboarding/presesntation/views/widgets/onboarding_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingNavigationSection extends StatelessWidget {
  const OnboardingNavigationSection({
    super.key,
    required this.onboardingController,
    required this.widget,
    required this.btn2Icon,
    required this.isLast,
  });

  final PageController onboardingController;
  final OnBoardingViewBody widget;
  final IconData btn2Icon;
  final bool isLast;

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
          controller: onboardingController,
          count: widget.onboardingItems.length,
        ),
        CustomFloatingActionButton(
          heroTag: 'btn2',
          icon: Icon(
            btn2Icon,
            color: Colors.white,
          ),
          onPressed: () {
            if (isLast) {
              CacheHelper.setData(key: onboardingCacheKey, value: true)
                  .then((value) {
                GoRouter.of(context).pushReplacement(AppRouter.kMainView);
              });
            }
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
