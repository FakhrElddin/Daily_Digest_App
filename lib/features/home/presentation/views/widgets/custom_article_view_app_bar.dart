import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomArticleViewAppBar extends StatelessWidget {
  const CustomArticleViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
      ],
    );
  }
}
