import 'package:daily_digest/constants.dart';
import 'package:daily_digest/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, this.onPressed, required this.text});
  final void Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: Colors.orange.shade900,
      ),
      child: Text(
        text,
        style: Styles.textStyle16.copyWith(
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
