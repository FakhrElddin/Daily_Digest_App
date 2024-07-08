import 'package:daily_digest/features/home/data/models/news/article_model.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/breaking_news_list_view_item_data.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/slider_image.dart';
import 'package:flutter/material.dart';

class BreakingNewsSliderListItem extends StatelessWidget {
  const BreakingNewsSliderListItem({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Sliderimage(
          image: articleModel.urlToImage ??
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqFCoRXJUYOf5KOJxf69wQ_VM4bKsPW-itNyUel0ZwiXN0AnP7Vx0yDZK7soCYQbScUvU&usqp=CAU',
        ),
        BreakingNewsListViewItemData(
          articleModel: articleModel,
        ),
      ],
    );
  }
}
