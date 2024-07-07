import 'package:bloc/bloc.dart';
import 'package:daily_digest/features/home/presentation/views/categories_view.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/news_view_body.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'bottom_nav_state.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(BottomNavInitial());

  final List<Widget> views = const [
    NewsViewBody(),
    CategoriesView(),
  ];
  int selectedIndex = 0;
  void changeSelectedItem({required int index}) {
    selectedIndex = index;
    emit(BottomNavChangeSelectedItem());
  }
}
