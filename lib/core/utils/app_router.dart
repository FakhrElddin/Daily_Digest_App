import 'package:daily_digest/constants.dart';
import 'package:daily_digest/core/utils/cache_helper.dart';
import 'package:daily_digest/features/onboarding/presesntation/views/onboarding_view.dart';
import 'package:daily_digest/features/home/presentation/views/Home_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kSplashView = '/splashView';
  static final bool _isOnboarding =
      CacheHelper.getData(key: onboardingCacheKey) ?? false;
  static final router = GoRouter(
    initialLocation: _isOnboarding ? kSplashView : '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: kSplashView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
