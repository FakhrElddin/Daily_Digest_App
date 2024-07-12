import 'package:daily_digest/features/bottom_nav_bar/presentation/manager/bottom_nav_cubit/bottom_nav_cubit.dart';
import 'package:daily_digest/features/categories/presentation/views/categories_view.dart';
import 'package:daily_digest/features/home/presentation/views/news_view.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  final List<Widget> views = const [
    NewsView(),
    CategoriesView(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, BottomNavState>(
      builder: (context, state) {
        return Scaffold(
          floatingActionButton: const CustomBottomNavBar(),
          body: SafeArea(
            child:
                views[BlocProvider.of<BottomNavCubit>(context).selectedIndex],
          ),
        );
      },
    );
  }
}
