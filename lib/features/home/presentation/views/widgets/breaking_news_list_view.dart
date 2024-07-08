import 'package:carousel_slider/carousel_slider.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/breaking_news_list_view_item.dart';
import 'package:flutter/material.dart';

class BreakingNewsListView extends StatelessWidget {
  const BreakingNewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: CarouselSlider(
        items: List.generate(
          10,
          (index) => const BreakingNewsListViewItem(),
        ),
        options: CarouselOptions(
          height: 400,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: false,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          onPageChanged: (index, reason) {},
          scrollDirection: Axis.horizontal,
        ),
      ),
      // child: ListView.separated(
      //   scrollDirection: Axis.horizontal,
      //   physics: const BouncingScrollPhysics(),
      //   itemBuilder: (context, index) => const BreakingNewsListViewItem(),
      //   separatorBuilder: (context, index) => const SizedBox(
      //     width: 24,
      //   ),
      //   itemCount: 5,
      // ),
    );
  }
}
