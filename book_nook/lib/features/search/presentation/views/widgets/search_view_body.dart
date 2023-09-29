import 'package:book_nook/core/utils/strings_manager.dart';
import 'package:book_nook/core/utils/styles.dart';
import 'package:book_nook/core/utils/values_manager.dart';
import 'package:book_nook/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:book_nook/features/search/presentation/views/widgets/search_results_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppValues.v30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSearchTextField(),
          const SizedBox(height: AppValues.v20),
          Text(
            StringsManager.saerchResults,
            style: Styles.textStyle18,
          ),
          const SizedBox(height: AppValues.v10),
          // serach results
          const Expanded(child: SearchResultsListView()),
        ],
      ),
    );
  }
}
