import 'package:carousel_slider/carousel_slider.dart';
import 'package:daily_digest/core/utils/styles.dart';
import 'package:daily_digest/core/widgets/custom_progress_indicator.dart';
import 'package:daily_digest/features/home/presentation/manager/breaking_news_cubit/breaking_news_cubit.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/breaking_news_slider_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BreakingNewsSliderList extends StatelessWidget {
  const BreakingNewsSliderList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: BlocBuilder<BreakingNewsCubit, BreakingNewsState>(
        builder: (context, state) {
          if (state is BreakingNewsScuccess) {
            return CarouselSlider(
              items: List.generate(
                state.news.articles!.length,
                (index) => BreakingNewsSliderListItem(
                  articleModel: state.news.articles![index],
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
                onPageChanged: (index, reason) {},
                scrollDirection: Axis.horizontal,
              ),
            );
          } else if (state is BreakingNewsFailure) {
            return Center(
              child: Text(
                state.errorMessage,
                textAlign: TextAlign.center,
                style: Styles.textStyle18,
              ),
            );
          } else {
            return const CustomProgressIndicator();
          }
        },
      ),
    );
  }
}


