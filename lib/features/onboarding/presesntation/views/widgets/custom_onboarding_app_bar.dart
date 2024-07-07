import 'package:daily_digest/core/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class CustomOnboardingAppBar extends StatelessWidget {
  const CustomOnboardingAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomTextButton(
          text: 'SKIP',
        )
      ],
    );
  }
}