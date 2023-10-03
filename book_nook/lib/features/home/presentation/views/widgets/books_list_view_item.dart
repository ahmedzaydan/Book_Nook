import 'package:book_nook/core/utils/constants.dart';
import 'package:book_nook/core/utils/functions.dart';
import 'package:book_nook/core/utils/routes_manager.dart';
import 'package:book_nook/core/utils/strings_manager.dart';
import 'package:book_nook/core/utils/styles.dart';
import 'package:book_nook/core/utils/values_manager.dart';
import 'package:book_nook/features/home/data/models/book_kind/book_model.dart';
import 'package:book_nook/features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_nook/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BooksListViewItem extends StatelessWidget {
  final BookModel book;
  const BooksListViewItem({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateTo(
          context: context,
          dest: RoutesManager.bookDetailsView,
        );
      },
      child: SizedBox(
        // there is no problem with fixed height as the list view is vertical
        height: 125,
        child: Row(
          children: [
            // book cover image
            ClipRRect(
              borderRadius: BorderRadius.circular(AppValues.v16),
              child:
                  CustomBookImage(image: book.volumeInfo.imageLinks.thumbnail),
            ),

            const SizedBox(width: AppValues.v30),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // book title
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.5,
                    child: Text(
                      book.volumeInfo.title!,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: Constants.gtSectraFine,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),

                  const SizedBox(height: AppValues.v3),

                  // book author
                  Text(
                    // fetch first author only
                    book.volumeInfo.authors![0],
                    style: Styles.textStyle14,
                  ),

                  const SizedBox(height: AppValues.v3),

                  // price + rating
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // price
                      Text(
                        StringsManager.free,
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      BookRating(
                        rating: book.volumeInfo.averageRating ?? Constants.zero,
                        ratingsCount: book.volumeInfo.ratingsCount ?? Constants.zero,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
