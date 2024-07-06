import 'package:daily_digest/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: SvgPicture.asset(
              Assets.onboarding1,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'Body of onboarding',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ],
    );
  }
}
