import 'package:book_nook/core/utils/color_manager.dart';
import 'package:book_nook/core/utils/styles.dart';
import 'package:book_nook/core/utils/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // - There is a problem in base line
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        // star
        const Icon(
          // TODO: get rating from api
          FontAwesomeIcons.solidStar,
          color: ColorManager.yellow,
          size: AppValues.v18,
        ),

        const SizedBox(width: AppValues.v6_3),

        // rating
        Text(
          // TODO: get rating from api
          '4.8',
          style: Styles.textStyle16.copyWith(
              fontWeight: FontWeight.bold,
              ),
        ),

        const SizedBox(width: AppValues.v5),

        // number of ratings
        Text(
          // TODO: get number of ratings from api
          ' (2390)',
          style: Styles.textStyle16.copyWith(
              color: ColorManager.grey,
              ),
        ),
      ],
    );
  }
}
