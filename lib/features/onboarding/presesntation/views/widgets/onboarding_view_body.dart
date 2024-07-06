import 'package:daily_digest/features/onboarding/presesntation/views/widgets/custom_floating_action_button.dart';
import 'package:daily_digest/features/onboarding/presesntation/views/widgets/onboarding_item.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
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
                iconData: Icons.arrow_forward_ios,
                onPressed: () {},
              ),
              CustomFloatingActionButton(
                heroTag: 'btn2',
                iconData: Icons.arrow_back_ios,
                onPressed: () {},
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


