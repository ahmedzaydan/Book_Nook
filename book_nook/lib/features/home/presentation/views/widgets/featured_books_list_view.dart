import 'package:book_nook/core/utils/assets_manager.dart';
import 'package:book_nook/core/utils/functions.dart';
import 'package:book_nook/core/utils/routes_manager.dart';
import 'package:book_nook/core/utils/values_manager.dart';
import 'package:book_nook/core/widgets/custom_error_widget.dart';
import 'package:book_nook/core/widgets/custom_loading_indicator.dart';
import 'package:book_nook/features/home/presentation/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:book_nook/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccessState) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.3,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    navigateTo(
                      context: context,
                      dest: RoutesManager.bookDetailsView,
                      extra: state.books[index],
                    );
                  },
                  child: CustomBookImage(
                    image: state
                            .books[index].volumeInfo.imageLinks?.smallThumbnail ??
                        AssetsManager.testImage,
                  ),
                );
              },
              separatorBuilder: (context, index) =>
                  const SizedBox(width: AppValues.v14),
              itemCount: state.books.length,
            ),
          );
        } else if (state is FeaturedBooksFailureState) {
          return CustomErrorWidget(errorMessage: state.message);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
