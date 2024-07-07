import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    this.onPressed,
    required this.text,
    this.backgroundColor,
    this.textStyle,
    this.foregroundColor, this.shape,
  });
  final void Function()? onPressed;
  final String text;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final TextStyle? textStyle;
  final OutlinedBorder? shape;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: foregroundColor,
        backgroundColor: backgroundColor,
        shape: shape,
      ),
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
