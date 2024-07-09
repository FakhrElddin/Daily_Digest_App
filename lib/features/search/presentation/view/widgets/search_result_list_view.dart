import 'package:daily_digest/constants.dart';
import 'package:daily_digest/core/widgets/custom_error_widget.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/custom_article_item.dart';
import 'package:daily_digest/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:daily_digest/features/search/presentation/view/widgets/no_search_result_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          if (state.news.articles!.isNotEmpty) {
            return SliverList.separated(
              itemBuilder: (context, index) => CustomArticleItem(
                articleModel: state.news.articles![index],
              ),
              separatorBuilder: (context, index) => const SizedBox(
                height: 24,
              ),
              itemCount: state.news.articles!.length,
            );
          } else {
            return const SliverFillRemaining(
              hasScrollBody: false,
              child: NoSearchResultWidget(),
            );
          }
        } else if (state is SearchFailure) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(
              text: state.errorMessage,
            ),
          );
        } else if (state is SearchLoading) {
          return const SliverToBoxAdapter(
            child: LinearProgressIndicator(
              backgroundColor: Colors.black,
              color: kPrimaryColor,
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: SizedBox.shrink(),
          );
        }
      },
    );
  }
}
