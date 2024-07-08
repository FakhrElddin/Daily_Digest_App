import 'package:daily_digest/core/utils/styles.dart';
import 'package:daily_digest/features/home/data/models/news/article_model.dart';
import 'package:flutter/material.dart';

class BreakingNewsListViewItemData extends StatelessWidget {
  const BreakingNewsListViewItemData({
    super.key, required this.articleModel,
  });
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        bottom: 16.0,
        top: 32,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [
            Colors.transparent,
            Colors.black,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              articleModel.title ?? '',
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
              style: Styles.textStyle20.copyWith(
                color: Colors.white,
              ),
            ),
            Text(
              articleModel.author ?? '',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: Styles.textStyle16.copyWith(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
