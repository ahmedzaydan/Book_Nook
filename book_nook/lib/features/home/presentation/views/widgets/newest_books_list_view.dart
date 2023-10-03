import 'package:book_nook/core/utils/values_manager.dart';
import 'package:book_nook/core/widgets/custom_error_widget.dart';
import 'package:book_nook/core/widgets/custom_loading_indicator.dart';
import 'package:book_nook/features/home/presentation/view_models/newest_books_cubit/newest_books_cubit.dart';
import 'package:book_nook/features/home/presentation/views/widgets/books_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccessState) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: AppValues.v10),
              child: BooksListViewItem(book: state.books[index]),
            ),
          );
        } else if (state is NewestBooksFailureState) {
          return CustomErrorWidget(errorMessage: state.message);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
