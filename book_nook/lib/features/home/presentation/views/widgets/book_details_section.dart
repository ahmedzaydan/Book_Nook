import 'package:book_nook/core/utils/constants.dart';
import 'package:book_nook/core/utils/strings_manager.dart';
import 'package:book_nook/core/utils/styles.dart';
import 'package:book_nook/core/utils/values_manager.dart';
import 'package:book_nook/features/home/data/models/book_kind/book_model.dart';
import 'package:book_nook/features/home/presentation/views/widgets/book_actions.dart';
import 'package:book_nook/features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_nook/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  final BookModel bookModel;
  const BookDetailsSection({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        // book cover image
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * AppValues.v0_2),
          child: CustomBookImage(
            image: bookModel.volumeInfo.imageLinks?.thumbnail ??
                StringsManager.empty,
          ),
        ),

        const SizedBox(height: AppValues.v43),

        // book title
        Text(
          bookModel.volumeInfo.title ?? StringsManager.empty,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),

        const SizedBox(height: AppValues.v6),

        // book author
        Opacity(
          opacity: AppValues.v0_7,
          child: Text(
            bookModel.volumeInfo.authors![0],
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),

        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: bookModel.volumeInfo.averageRating ?? Constants.zero,
          ratingsCount: bookModel.volumeInfo.ratingsCount ?? Constants.zero,
        ),

        const SizedBox(height: AppValues.v37),
        BookActions(bookModel: bookModel),
      ],
    );
  }
}
