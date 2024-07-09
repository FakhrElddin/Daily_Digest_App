import 'package:daily_digest/core/utils/app_router.dart';
import 'package:daily_digest/core/utils/styles.dart';
import 'package:daily_digest/features/categories/data/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
  });

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context)
            .push(AppRouter.kCategoryArticlesView, extra: category.name);
      },
      child: Card(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.height * 0.09,
              child: AspectRatio(
                aspectRatio: 1,
                child: SvgPicture.asset(
                  fit: BoxFit.fill,
                  category.icon,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              category.name,
              style: Styles.textStyle24.copyWith(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
