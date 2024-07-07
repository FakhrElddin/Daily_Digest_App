import 'package:daily_digest/core/utils/styles.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/article_link_widget.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/article_view_image.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/custom_article_view_app_bar.dart';
import 'package:flutter/material.dart';

class ArticleViewBody extends StatelessWidget {
  const ArticleViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomArticleViewAppBar(),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Every thing is free try to visit this country Every thing is free try to visit this country Every thing is free try to visit this country',
                    style: Styles.textStyle24.copyWith(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        'Author Name',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'Published At: 3:15 AM',
                        style: Styles.textStyle18.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const ArticleViewImage(),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Every thing is free try to visit this country Every thing is free try to visit this country Every thing is free try to visit this country',
                    style: Styles.textStyle24.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const ArticleLinkWidget()
      ],
    );
  }
}
