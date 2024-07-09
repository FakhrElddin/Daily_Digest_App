import 'package:daily_digest/features/home/data/models/news/news_model.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/breaking_news_slider_list_item.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/custom_carousel_slider.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/custom_dots_indicator.dart';
import 'package:flutter/material.dart';

class CarouselSliderList extends StatefulWidget {
  const CarouselSliderList({
    super.key,
    required this.newsModel,
  });
  final NewsModel newsModel;

  @override
  State<CarouselSliderList> createState() => _CarouselSliderListState();
}

class _CarouselSliderListState extends State<CarouselSliderList> {
  int currentPosition = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCarouselSlider(
          items: List.generate(
            widget.newsModel.articles!.length,
            (index) => BreakingNewsSliderListItem(
              articleModel: widget.newsModel.articles![index],
            ),
          ),
          onPageChanged: (index, reason) {
            currentPosition = index;
            setState(() {});
          },
        ),
        const SizedBox(
          height: 8,
        ),
        CustomDotsIndicator(
          dotsCount: widget.newsModel.articles?.length ?? 0,
          position: currentPosition,
        ),
      ],
    );
  }
}
