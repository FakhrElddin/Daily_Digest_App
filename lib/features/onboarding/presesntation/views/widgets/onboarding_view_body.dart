import 'package:daily_digest/constants.dart';
import 'package:daily_digest/core/utils/assets.dart';
import 'package:daily_digest/core/widgets/custom_text_button.dart';
import 'package:daily_digest/features/onboarding/data/models/onboarding_model.dart';
import 'package:daily_digest/features/onboarding/presesntation/views/widgets/custom_floating_action_button.dart';
import 'package:daily_digest/features/onboarding/presesntation/views/widgets/custom_onboarding_app_bar.dart';
import 'package:daily_digest/features/onboarding/presesntation/views/widgets/custom_smooth_page_indicator.dart';
import 'package:daily_digest/features/onboarding/presesntation/views/widgets/onboarding_item.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  final List<OnboardingModel> onboardingItems = const [
    OnboardingModel(
      svgImage: Assets.onboarding1,
      bodyText: 'The App is for all important or top headlines news in USA',
    ),
    OnboardingModel(
      svgImage: Assets.onboarding2,
      bodyText:
          'Explore a virtual haven for news with our app—browse anytime, anywhere',
    ),
    OnboardingModel(
      svgImage: Assets.onboarding3,
      bodyText: 'We will keep you informed of positive news and events',
    ),
  ];

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController onboardingController = PageController();
  bool isLast = false;
  bool isFirst = true;
  IconData btn2Icon = Icons.arrow_forward_ios;
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
          const CustomOnboardingAppBar(),
          Expanded(
            child: PageView.builder(
              controller: onboardingController,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => OnboardingItem(
                image: widget.onboardingItems[index].svgImage,
                bodyText: widget.onboardingItems[index].bodyText,
              ),
              onPageChanged: (value) {
                if (value == widget.onboardingItems.length - 1) {
                  isLast = true;
                } else if (value == 0) {
                  isFirst = true;
                } else {
                  isFirst = false;
                  isLast = false;
                }
                isLast
                    ? btn2Icon = Icons.check
                    : btn2Icon = Icons.arrow_forward_ios;

                setState(() {});
              },
              itemCount: widget.onboardingItems.length,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.14,
          ),
          Row(
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
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}


