import 'package:book_nook/core/utils/values_manager.dart';
import 'package:book_nook/features/home/presentation/views/widgets/books_list_view_item.dart';
import 'package:flutter/material.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppValues.v20, bottom: AppValues.v50),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.3,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const BooksListViewItem();
          },
          separatorBuilder: (context, index) =>
              const SizedBox(width: AppValues.v14),
          itemCount: 10,
        ),
      ),
    );
  }
}
