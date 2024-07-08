import 'package:daily_digest/core/utils/assets.dart';
import 'package:daily_digest/features/categories/data/models/category_model.dart';
import 'package:daily_digest/features/categories/presentation/views/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoriesViewBody extends StatelessWidget {
  const CategoriesViewBody({super.key});

  final List<CategoryModel> categoreis = const [
    CategoryModel(
      icon: Assets.generalCategory,
      name: 'General',
    ),
    CategoryModel(
      icon: Assets.bussinessCategory,
      name: 'Bussiness',
    ),
    CategoryModel(
      icon: Assets.sprotsCategory,
      name: 'Sprots',
    ),
    CategoryModel(
      icon: Assets.healthCategory,
      name: 'Health',
    ),
    CategoryModel(
      icon: Assets.entertainmentCategory,
      name: 'Entertainment',
    ),
    CategoryModel(
      icon: Assets.scienceCategory,
      name: 'Science',
    ),
    CategoryModel(
      icon: Assets.technologyCategory,
      name: 'Technology',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverGrid.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          itemBuilder: (context, index) =>
              CategoryCard(categoreis: categoreis[index]),
          itemCount: categoreis.length,
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 120,
          ),
        ),
      ],
    );
  }
}
