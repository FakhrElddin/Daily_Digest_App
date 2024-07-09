import 'package:daily_digest/core/utils/styles.dart';
import 'package:daily_digest/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:daily_digest/features/search/presentation/view/widgets/custom_text_form_field.dart';
import 'package:daily_digest/features/search/presentation/view/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  TextEditingController searchConroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  controller: searchConroller,
                  onFieldSubmitted: (value) {
                    if (searchConroller.text.trim().isNotEmpty) {
                      BlocProvider.of<SearchCubit>(context).fetchSearchResult(
                        text: searchConroller.text,
                      );
                    }
                  },
                  onPressedSearchIcon: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                    if (searchConroller.text.trim().isNotEmpty) {
                      BlocProvider.of<SearchCubit>(context).fetchSearchResult(
                        text: searchConroller.text,
                      );
                    }
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  'Result',
                  style: Styles.textStyle24.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        ),
        const SearchResultListView(),
      ],
    );
  }
}
