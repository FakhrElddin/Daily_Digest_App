import 'package:daily_digest/features/onboarding/presesntation/views/widgets/custom_floating_action_button.dart';
import 'package:daily_digest/features/onboarding/presesntation/views/widgets/custom_smooth_page_indicator.dart';
import 'package:daily_digest/features/onboarding/presesntation/views/widgets/onboarding_item.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController onboardingController = PageController();
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
              itemBuilder: (context, index) => const OnboardingItem(),
              onPageChanged: (value) {},
              itemCount: 2,
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
                count: 2,
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


