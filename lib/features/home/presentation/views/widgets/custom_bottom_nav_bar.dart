import 'package:daily_digest/features/home/presentation/manager/bottom_nav_cubit/bottom_nav_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, BottomNavState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.only(
            left: 50.0,
            right: 50.0,
            bottom: 30.0,
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
          ),
          child: NavigationBar(
            selectedIndex:
                BlocProvider.of<BottomNavCubit>(context).selectedIndex,
            onDestinationSelected: (value) {
              BlocProvider.of<BottomNavCubit>(context)
                  .changeSelectedItem(index: value);
            },
            destinations: const [
              NavigationDestination(
                icon: Icon(
                  Icons.newspaper_outlined,
                ),
                label: 'News',
              ),
              NavigationDestination(
                icon: Icon(
                  Icons.list,
                ),
                label: 'Categories',
              ),
            ],
          ),
        );
      },
    );
  }
}
