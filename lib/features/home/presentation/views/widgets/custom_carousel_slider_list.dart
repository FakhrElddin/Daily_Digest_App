import 'package:carousel_slider/carousel_slider.dart';
import 'package:daily_digest/features/home/data/models/news/news_model.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/breaking_news_slider_list_item.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/custom_carousel_slider.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/custom_dots_indicator.dart';
import 'package:flutter/material.dart';

class CustomCarouselSliderList extends StatefulWidget {
  const CustomCarouselSliderList({
    super.key,
    required this.newsModel,
  });
  final NewsModel newsModel;

  @override
  State<CustomCarouselSliderList> createState() =>
      _CustomCarouselSliderListState();
}

class _CustomCarouselSliderListState extends State<CustomCarouselSliderList> {
  int currentPosition = 0;

  final CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCarouselSlider(
          carouselController: carouselController,
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
          onTap: (position) {
            if (position != currentPosition) {
              currentPosition = position;
              carouselController.jumpToPage(
                position,
              );
              setState(() {});
            }
          },
        ),
      ],
    );
  }
}
