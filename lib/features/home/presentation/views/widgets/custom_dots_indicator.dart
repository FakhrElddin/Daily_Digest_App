import 'package:daily_digest/constants.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/custom_carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({
    super.key,
    required this.widget,
    required this.currentPosition,
  });

  final CustomCarouselSlider widget;
  final int currentPosition;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DotsIndicator(
        decorator: DotsDecorator(
          activeColor: kPrimaryColor,
          size: const Size.square(10),
          activeSize: const Size(20, 10),
          spacing: const EdgeInsets.all(2),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        dotsCount: widget.newsModel.articles?.length ?? 0,
        position: currentPosition,
      ),
    );
  }
}