import 'package:daily_digest/core/utils/assets.dart';
import 'package:daily_digest/features/onboarding/data/models/onboarding_model.dart';
import 'package:daily_digest/features/onboarding/presesntation/views/widgets/custom_floating_action_button.dart';
import 'package:daily_digest/features/onboarding/presesntation/views/widgets/custom_smooth_page_indicator.dart';
import 'package:daily_digest/features/onboarding/presesntation/views/widgets/onboarding_item.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  final List<OnboardingModel> onboardingItems = const [
    OnboardingModel(
      svgImage: Assets.onboarding1,
      bodyText: 'bodyText1',
    ),
    OnboardingModel(
      svgImage: Assets.onboarding2,
      bodyText: 'bodyText2',
    ),
  ];

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController onboardingController = PageController();
  bool isLast = false;
  bool isFirst = true;
  @override
  void dispose() {
    onboardingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: onboardingController,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => OnboardingItem(
                image: widget.onboardingItems[index].svgImage,
                bodyText: widget.onboardingItems[index].bodyText,
              ),
              onPageChanged: (value) {},
              itemCount: widget.onboardingItems.length,
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomFloatingActionButton(
                heroTag: 'btn1',
                icon: const Icon(
                  Icons.arrow_forward_ios,
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
              CustomSmoothPageIndicator(
                onboardingController: onboardingController,
                count: widget.onboardingItems.length,
              ),
              CustomFloatingActionButton(
                heroTag: 'btn2',
                icon: const Padding(
                  padding: EdgeInsets.only(left: 9.0),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
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
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
