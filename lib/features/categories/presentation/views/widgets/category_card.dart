import 'package:daily_digest/core/utils/styles.dart';
import 'package:daily_digest/features/categories/data/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.categoreis,
  });

  final CategoryModel categoreis;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            fit: BoxFit.fill,
            categoreis.icon,
            height: 100,
            width: 100,
          ),
          Text(
            categoreis.name,
            style: Styles.textStyle24.copyWith(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
