import 'package:daily_digest/constants.dart';
import 'package:daily_digest/core/utils/app_router.dart';
import 'package:daily_digest/core/utils/styles.dart';
import 'package:daily_digest/features/home/data/models/news/article_model.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class CustomRecommendationItem extends StatelessWidget {
  const CustomRecommendationItem({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kArticleView);
      },
      child: SizedBox(
        height: 160,
        child: Card(
          color: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CustomImage(
                  image: articleModel.urlToImage ?? defaultArticleImage,
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        articleModel.title ?? '',
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle18.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        articleModel.discription ?? '',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle16.copyWith(
                          color: Colors.grey.shade300,
                        ),
                      ),
                      const Spacer(),
                      if(articleModel.publishedAt != null)
                      Text(
                        'published at: ${getFormatedDateTime()}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle14.copyWith(
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String getFormatedDateTime() {
    DateTime dateTime = DateTime.parse(articleModel.publishedAt!);
    String format = DateFormat('MMMM d, h:mm a').format(dateTime);

    return format;
  }
}
