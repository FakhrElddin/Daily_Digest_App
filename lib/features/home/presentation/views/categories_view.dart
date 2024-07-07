import 'package:daily_digest/features/home/presentation/views/widgets/categories_view_body.dart';
import 'package:flutter/material.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CategoriesViewBody(),
    );
  }
}
