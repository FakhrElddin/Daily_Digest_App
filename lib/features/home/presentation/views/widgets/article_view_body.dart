import 'package:daily_digest/constants.dart';
import 'package:daily_digest/core/utils/functions/format_date_time.dart';
import 'package:daily_digest/core/utils/functions/launch_cutom_url.dart';
import 'package:daily_digest/core/utils/styles.dart';
import 'package:daily_digest/features/home/data/models/news/article_model.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/article_link_widget.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/custom_article_view_app_bar.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/custom_image.dart';
import 'package:flutter/material.dart';

class ArticleViewBody extends StatelessWidget {
  const ArticleViewBody({super.key, required this.articleModel});

  final ArticleModel articleModel;

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
                    articleModel.title ?? '',
                    style: Styles.textStyle24.copyWith(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    articleModel.author ?? '',
                    style: Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  if (articleModel.publishedAt != null)
                    Text(
                      'Published At: ${getFormatedDateTime(articleModel.publishedAt!)}',
                      style: Styles.textStyle18.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomImage(
                    image: articleModel.urlToImage ?? defaultArticleImage,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    '${articleModel.discription ?? ''} ${articleModel.content ?? ''}',
                    style: Styles.textStyle24.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
        if (articleModel.url != null)
          ArticleLinkWidget(
            onPressed: () {
              launchCustomUrl(
                context,
                url: articleModel.url!,
              );
            },
          ),
      ],
    );
  }
}
