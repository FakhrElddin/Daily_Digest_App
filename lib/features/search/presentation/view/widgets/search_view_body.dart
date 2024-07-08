import 'package:daily_digest/core/utils/styles.dart';
import 'package:daily_digest/features/search/presentation/view/widgets/custom_text_form_field.dart';
import 'package:daily_digest/features/search/presentation/view/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

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
                CustomTextFormField(
                  onPressedSearchIcon: () {},
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
