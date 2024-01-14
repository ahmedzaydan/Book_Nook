import 'package:book_nook/core/utils/strings_manager.dart';
import 'package:book_nook/core/utils/values_manager.dart';
import 'package:book_nook/core/widgets/custom_error_widget.dart';
import 'package:book_nook/core/widgets/custom_loading_indicator.dart';
import 'package:book_nook/features/home/presentation/view_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:book_nook/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccessState) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.15,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CustomBookImage(
                  // when we put empty string in the image parameter
                  // error widget will be shown as the image is not found
                  image: state.books[index].volumeInfo.imageLinks?.thumbnail ??
                      StringsManager.empty,
                );
              },
              separatorBuilder: (context, index) =>
                  const SizedBox(width: AppValues.v14),
              itemCount: state.books.length,
            ),
          );
        } else if (state is SimilarBooksErrorState) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
