import 'package:daily_digest/core/utils/service_locator.dart';
import 'package:daily_digest/features/categories/category_articles_view.dart';
import 'package:daily_digest/features/categories/data/repos/category_repo_impl.dart';
import 'package:daily_digest/features/categories/presentation/manager/category_articles_cubit/category_articles_cubit.dart';
import 'package:daily_digest/features/home/data/models/news/article_model.dart';
import 'package:daily_digest/features/bottom_nav_bar/presentation/manager/bottom_nav_cubit/bottom_nav_cubit.dart';
import 'package:daily_digest/features/home/presentation/views/article_view.dart';
import 'package:daily_digest/features/home/presentation/views/home_view.dart';
import 'package:daily_digest/features/onboarding/presesntation/views/onboarding_view.dart';
import 'package:daily_digest/features/bottom_nav_bar/presentation/views/main_view.dart';
import 'package:daily_digest/features/search/data/repos/search_repo_impl.dart';
import 'package:daily_digest/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:daily_digest/features/search/presentation/view/search_view.dart';
import 'package:daily_digest/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kSplashView = '/splashView';
  static const kOnboardingView = '/onboaringView';
  static const kMainView = '/mainView';
  static const kHomeView = '/homeView';
  static const kArticleView = '/articleView';
  static const kCategoryArticlesView = '/categoryArticlesView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kOnboardingView,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: kMainView,
        builder: (context, state) => BlocProvider(
          create: (context) => BottomNavCubit(),
          child: const MainView(),
        ),
      ),
      GoRoute(
        path: kArticleView,
        builder: (context, state) => ArticleView(
          articleModel: state.extra as ArticleModel,
        ),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kCategoryArticlesView,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              CategoryArticlesCubit(getIt.get<CategoryRepoImpl>()),
          child: CategoryArticlesView(
            category: state.extra as String,
          ),
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => BlocProvider(
          create: (context) => SearchCubit(getIt.get<SearchRepoImpl>()),
          child: const SearchView(),
        ),
      ),
    ],
  );
}
