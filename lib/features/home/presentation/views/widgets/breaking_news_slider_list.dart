import 'package:daily_digest/core/utils/styles.dart';
import 'package:daily_digest/core/widgets/custom_progress_indicator.dart';
import 'package:daily_digest/features/home/presentation/manager/breaking_news_cubit/breaking_news_cubit.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/custom_carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BreakingNewsSliderList extends StatelessWidget {
  const BreakingNewsSliderList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.29,
      child: BlocBuilder<BreakingNewsCubit, BreakingNewsState>(
        builder: (context, state) {
          if (state is BreakingNewsScuccess) {
            return CustomCarouselSlider(newsModel: state.news);
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
