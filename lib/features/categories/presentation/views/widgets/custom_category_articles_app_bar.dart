import 'package:daily_digest/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomCategoryArticlesAppBar extends StatelessWidget {
  const CustomCategoryArticlesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          const Text(
            'Entertainmnet ',
            style: Styles.textStyle24,
          ),
        ],
      ),
    );
  }
}
