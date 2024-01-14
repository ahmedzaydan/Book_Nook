import 'package:book_nook/core/utils/color_manager.dart';
import 'package:book_nook/core/utils/styles.dart';
import 'package:book_nook/core/utils/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final int rating;
  final int ratingsCount;

  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
    required this.ratingsCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // star
        const Icon(
          FontAwesomeIcons.solidStar,
          color: ColorManager.yellow,
          size: AppValues.v14,
        ),

        const SizedBox(width: AppValues.v6_3),

        // rating
        Text(
          '$rating',
          style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(width: AppValues.v5),

        // number of ratings
        Opacity(
          opacity: AppValues.v0_5,
          child: Text(
            '($ratingsCount)',
            style: Styles.textStyle16,
          ),
        ),
      ],
    );
  }
}
