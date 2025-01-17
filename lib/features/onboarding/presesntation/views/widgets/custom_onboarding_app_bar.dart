import 'package:daily_digest/constants.dart';
import 'package:daily_digest/core/utils/app_router.dart';
import 'package:daily_digest/core/utils/cache_helper.dart';
import 'package:daily_digest/core/utils/styles.dart';
import 'package:daily_digest/core/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomOnboardingAppBar extends StatelessWidget {
  const CustomOnboardingAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomTextButton(
          text: 'SKIP',
          foregroundColor: Colors.orange.shade900,
          textStyle: Styles.textStyle16.copyWith(
            color: kPrimaryColor,
          ),
          onPressed: () {
            CacheHelper.setData(
              key: onboardingCacheKey,
              value: true,
            ).then(
              (value) {
                if (value) {
                  GoRouter.of(context).pushReplacement(AppRouter.kMainView);
                }
              },
            );
          },
        )
      ],
    );
  }
}
