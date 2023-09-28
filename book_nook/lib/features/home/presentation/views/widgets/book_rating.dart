import 'package:book_nook/core/utils/color_manager.dart';
import 'package:book_nook/core/utils/styles.dart';
import 'package:book_nook/core/utils/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // star
        const Icon(
          // TODO: get rating from api
          FontAwesomeIcons.solidStar,
          color: ColorManager.yellow,
          size: AppValues.v14,
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
        Opacity(
          opacity: AppValues.v0_5,
          child: Text(
            // TODO: get number of ratings from api
            ' (2390)',
            style: Styles.textStyle16,
          ),
        ),
      ],
    );
  }
}
