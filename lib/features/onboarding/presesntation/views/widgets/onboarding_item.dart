import 'package:daily_digest/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({
    super.key,
    required this.image,
    required this.bodyText,
  });

  final String image;
  final String bodyText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: SvgPicture.asset(
              image,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            bodyText,
            textAlign: TextAlign.center,
            style: Styles.textStyle24,
          ),
        ),
      ],
    );
  }
}
