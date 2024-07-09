import 'package:daily_digest/core/widgets/custom_error_widget.dart';
import 'package:daily_digest/features/home/presentation/manager/breaking_news_cubit/breaking_news_cubit.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/breaking_news_shimmer_slider_list.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/carousel_slider_list.dart';
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
            return CarouselSliderList(newsModel: state.news);
          } else if (state is BreakingNewsFailure) {
            return CustomErrorWidget(
              text: state.errorMessage,
            );
          } else {
            return const BreakingNewsShimmerSliderList();
          }
        },
      ),
    );
  }
}


