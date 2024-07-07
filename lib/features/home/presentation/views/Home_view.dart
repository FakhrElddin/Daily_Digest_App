import 'dart:ffi';

import 'package:daily_digest/constants.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
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
          selectedIndex: 1,
          onDestinationSelected: (value) {
            print(value);
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.white,
              ),
              label: 'Home',
              selectedIcon: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            NavigationDestination(
              icon: Icon(
                Icons.category,
              ),
              label: 'Categories',
            ),
          ],
        ),
      ),
      body: const SafeArea(
        child: HomeViewBody(),
      ),
    );
  }
}
