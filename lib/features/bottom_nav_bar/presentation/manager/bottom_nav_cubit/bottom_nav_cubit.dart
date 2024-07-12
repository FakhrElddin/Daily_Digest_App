import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'bottom_nav_state.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(BottomNavInitial());

  int selectedIndex = 0;
  void changeSelectedView({required int index}) {
    selectedIndex = index;
    emit(BottomNavChangeSelectedView());
  }
}
