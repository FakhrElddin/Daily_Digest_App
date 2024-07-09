import 'package:carousel_slider/carousel_slider.dart';
import 'package:daily_digest/features/home/data/models/news/news_model.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/breaking_news_slider_list_item.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/custom_dots_indicator.dart';
import 'package:flutter/material.dart';

class CustomCarouselSlider extends StatefulWidget {
  const CustomCarouselSlider({
    super.key,
    required this.newsModel,
  });
  final NewsModel newsModel;

  @override
  State<CustomCarouselSlider> createState() => _CustomCarouselSliderState();
}

class _CustomCarouselSliderState extends State<CustomCarouselSlider> {
  int currentPosition = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: List.generate(
            widget.newsModel.articles!.length,
            (index) => BreakingNewsSliderListItem(
              articleModel: widget.newsModel.articles![index],
            ),
          ),
          options: CarouselOptions(
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: false,
            reverse: false,
            autoPlay: false,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            onPageChanged: (index, reason) {
              currentPosition = index;
              setState(() {});
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        CustomDotsIndicator(
          widget: widget,
          currentPosition: currentPosition,
        ),
      ],
    );
  }
}
