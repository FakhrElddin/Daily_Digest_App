import 'package:daily_digest/core/utils/assets.dart';
import 'package:daily_digest/features/onboarding/data/models/onboarding_model.dart';
import 'package:daily_digest/features/onboarding/presesntation/views/widgets/custom_onboarding_app_bar.dart';
import 'package:daily_digest/features/onboarding/presesntation/views/widgets/onboarding_item.dart';
import 'package:daily_digest/features/onboarding/presesntation/views/widgets/onboarding_navigation_section.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  final List<OnboardingModel> onboardingItems = const [
    OnboardingModel(
      image: Assets.onboarding1,
      bodyText: 'The App is for all important or top headlines news in USA',
    ),
    OnboardingModel(
      image: Assets.onboarding2,
      bodyText:
          'Explore a virtual haven for news with our app—browse anytime, anywhere',
    ),
    OnboardingModel(
      image: Assets.onboarding3,
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
                image: widget.onboardingItems[index].image,
                bodyText: widget.onboardingItems[index].bodyText,
              ),
              onPageChanged: (value) {
                handlePageChange(value);
                setState(() {});
              },
              itemCount: widget.onboardingItems.length,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.14,
          ),
          OnboardingNavigationSection(
            onboardingController: onboardingController,
            widget: widget,
            btn2Icon: btn2Icon,
            isLast: isLast,
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }

  void handlePageChange(int value) {
    if (value == widget.onboardingItems.length - 1) {
      isLast = true;
    } else if (value == 0) {
      isFirst = true;
    } else {
      isFirst = false;
      isLast = false;
    }
    isLast ? btn2Icon = Icons.check : btn2Icon = Icons.arrow_forward_ios;
  }
}
