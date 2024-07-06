import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({
    super.key, required this.image, required this.bodyText,
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
        const SizedBox(
          height: 30,
        ),
        Text(
          bodyText,
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ],
    );
  }
}
