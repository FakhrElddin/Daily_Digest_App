import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
    this.onPressed,
    required this.heroTag,
    required this.iconData,
  });
  final void Function()? onPressed;
  final String heroTag;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      heroTag: heroTag,
      child: Icon(
        iconData,
      ),
    );
  }
}