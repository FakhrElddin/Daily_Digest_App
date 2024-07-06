import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
    this.onPressed,
    required this.heroTag,
    required this.icon,
  });
  final void Function()? onPressed;
  final String heroTag;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      heroTag: heroTag,
      backgroundColor: Colors.orange,
      child: icon,
    );
  }
}
