import 'package:daily_digest/constants.dart';
import 'package:daily_digest/core/utils/cache_helper.dart';
import 'package:daily_digest/features/categories/category_articles_view.dart';
import 'package:daily_digest/features/home/presentation/views/article_view.dart';
import 'package:daily_digest/features/onboarding/presesntation/views/onboarding_view.dart';
import 'package:daily_digest/features/home/presentation/views/Home_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kArticleView = '/articleView';
  static const kCategoryArticlesView = '/CategoryArticlesView';
  static final bool _isOnboarding =
      CacheHelper.getData(key: onboardingCacheKey) ?? false;
  static final router = GoRouter(
    initialLocation: _isOnboarding ? kHomeView : '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kArticleView,
        builder: (context, state) => const ArticleView(),
      ),
      GoRoute(
        path: kCategoryArticlesView,
        builder: (context, state) => const CategoryArticlesView(),
      ),
    ],
  );
}
