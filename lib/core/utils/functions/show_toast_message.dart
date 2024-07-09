import 'package:daily_digest/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToastMessage(
  context, {
  required String message,
  required ToastStates state,
  Widget Function(BuildContext, Widget)? positionedToastBuilder,
}) {
  FToast fToast = FToast();
  fToast.init(context);

  fToast.showToast(
    isDismissable: true,
    gravity: ToastGravity.BOTTOM,
    toastDuration: const Duration(seconds: 5),
    child: Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12.0,
        horizontal: 20.0,
      ),
      decoration: BoxDecoration(
        color: chooseToastColor(state),
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Text(
        message,
        textAlign: TextAlign.center,
        style: Styles.textStyle16.copyWith(
          color: Colors.white,
        ),
      ),
    ),
    positionedToastBuilder: positionedToastBuilder,
  );
}

enum ToastStates { success, error, warning }

Color chooseToastColor(ToastStates state) {
  Color color;
  switch (state) {
    case ToastStates.success:
      color = Colors.green;
      break;
    case ToastStates.error:
      color = Colors.red;
      break;
    case ToastStates.warning:
      color = Colors.amber;
      break;
  }
  return color;
}
