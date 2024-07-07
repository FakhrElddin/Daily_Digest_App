import 'package:daily_digest/features/home/presentation/manager/bottom_nav_cubit/bottom_nav_cubit.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, BottomNavState>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: const CustomBottomNavBar(),
          body: SafeArea(
            child: BlocProvider.of<BottomNavCubit>(context)
                .views[BlocProvider.of<BottomNavCubit>(context).selectedIndex],
          ),
        );
      },
    );
  }
}
