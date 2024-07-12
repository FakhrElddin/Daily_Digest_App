import 'package:daily_digest/constants.dart';
import 'package:daily_digest/core/utils/app_router.dart';
import 'package:daily_digest/core/utils/assets.dart';
import 'package:daily_digest/core/utils/cache_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    navigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.logo,
              width: MediaQuery.of(context).size.width * 0.8,
            )
                .animate()
                .fadeIn(
                  begin: 0.8,
                  delay: 500.ms,
                )
                .slide(
                  delay: 500.ms,
                )
                .then()
                .shake(
                  delay: 500.ms,
                ),
          ],
        ),
      ],
    );
  }

  void navigation() {
    Future.delayed(
      const Duration(
        seconds: 2,
      ),
      () {
        if (CacheHelper.getData(key: onboardingCacheKey) ?? false) {
          GoRouter.of(context).pushReplacement(AppRouter.kMainView);
        } else {
          GoRouter.of(context).pushReplacement(AppRouter.kOnboardingView);
        }
      },
    );
  }
}
