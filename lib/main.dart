import 'package:daily_digest/constants.dart';
import 'package:daily_digest/core/utils/app_router.dart';
import 'package:daily_digest/core/utils/cache_helper.dart';
import 'package:daily_digest/core/utils/styles.dart';
import 'package:daily_digest/features/home/presentation/manager/bottom_nav_cubit/bottom_nav_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();

  runApp(const DailyDigest());
}

class DailyDigest extends StatelessWidget {
  const DailyDigest({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BottomNavCubit(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: kBackgroundColor,
          navigationBarTheme: customNavigationBarTheme(),
        ),
      ),
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
