import 'package:bloc/bloc.dart';
import 'package:daily_digest/features/categories/presentation/views/categories_view.dart';
import 'package:daily_digest/features/home/presentation/views/news_view.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'bottom_nav_state.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(BottomNavInitial());

  final List<Widget> views = const [
    NewsView(),
    CategoriesView(),
  ];
  int selectedIndex = 0;
  void changeSelectedItem({required int index}) {
    selectedIndex = index;
    emit(BottomNavChangeSelectedItem());
  }
}
