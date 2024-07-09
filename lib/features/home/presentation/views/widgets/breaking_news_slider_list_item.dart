import 'package:daily_digest/constants.dart';
import 'package:daily_digest/core/utils/app_router.dart';
import 'package:daily_digest/features/home/data/models/news/article_model.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/breaking_news_list_view_item_data.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/breaking_news_slider_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BreakingNewsSliderListItem extends StatelessWidget {
  const BreakingNewsSliderListItem({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.kArticleView,
          extra: articleModel,
        );
      },
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          BreakingNewsSliderImage(
            image: articleModel.urlToImage ?? defaultArticleImage,
          ),
          BreakingNewsListViewItemData(
            articleModel: articleModel,
          ),
        ],
      ),
    );
  }
}
