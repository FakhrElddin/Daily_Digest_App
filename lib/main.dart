import 'package:daily_digest/constants.dart';
import 'package:daily_digest/core/utils/app_router.dart';
import 'package:daily_digest/core/utils/cache_helper.dart';
import 'package:daily_digest/core/utils/service_locator.dart';
import 'package:daily_digest/core/utils/styles.dart';
import 'package:daily_digest/features/home/data/repos/home_repo_impl.dart';
import 'package:daily_digest/features/home/presentation/manager/breaking_news_cubit/breaking_news_cubit.dart';
import 'package:daily_digest/features/home/presentation/manager/recommendation_news_cubit/recommendation_news_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  setupServiceLocator();
  runApp(const DailyDigest());
}

class DailyDigest extends StatelessWidget {
  const DailyDigest({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              BreakingNewsCubit(getIt.get<HomeRepoImpl>())..fetchBreakingNews(),
        ),
        BlocProvider(
          create: (context) =>
              RecommendationNewsCubit(getIt.get<HomeRepoImpl>())
                ..fetchRecommendationNews(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kBackgroundColor,
          navigationBarTheme: customNavigationBarTheme(),
          textSelectionTheme: customTextSelectionTheme(),
        ),
      ),
    );
  }

  TextSelectionThemeData customTextSelectionTheme() {
    return TextSelectionThemeData(
      cursorColor: kPrimaryColor,
      selectionColor: kPrimaryColor.withOpacity(0.5),
      selectionHandleColor: kPrimaryColor,
    );
  }

  NavigationBarThemeData customNavigationBarTheme() {
    return NavigationBarThemeData(
      backgroundColor: kPrimaryColor,
      indicatorColor: Colors.black,
      iconTheme: WidgetStateProperty.resolveWith<IconThemeData>(
        (states) => const IconThemeData(
          size: 30,
          color: Colors.white,
        ),
      ),
      labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
        (states) => Styles.textStyle16.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
