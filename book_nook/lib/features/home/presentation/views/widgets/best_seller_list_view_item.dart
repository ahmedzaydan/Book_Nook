import 'package:book_nook/core/utils/assets_manager.dart';
import 'package:book_nook/core/utils/color_manager.dart';
import 'package:book_nook/core/utils/constants.dart';
import 'package:book_nook/core/utils/functions.dart';
import 'package:book_nook/core/utils/routes_manager.dart';
import 'package:book_nook/core/utils/styles.dart';
import 'package:book_nook/core/utils/values_manager.dart';
import 'package:book_nook/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

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
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppValues.v10),
                  color: ColorManager.white,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(AssetsManager.testImage),
                  ),
                ),
              ),
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
                      // TODO: get title from api
                      'Harry Potter and the Goblet of Fire',
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
                    // TODO: get author from api
                    'J.K. Rowling',
                    style: Styles.textStyle14,
                  ),

                  const SizedBox(height: AppValues.v3),

                  // price + rating
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // price
                      Text(
                        // TODO: get price from api
                        '19.99 \$',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const BookRating(),
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
