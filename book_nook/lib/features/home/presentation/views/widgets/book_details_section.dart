import 'package:book_nook/core/utils/styles.dart';
import 'package:book_nook/core/utils/values_manager.dart';
import 'package:book_nook/features/home/presentation/views/widgets/book_actions.dart';
import 'package:book_nook/features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_nook/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        // book cover image
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * AppValues.v0_2),
          child: const CustomBookImage(),
        ),
        
        const SizedBox(height: AppValues.v43),
        
        // book title
        // TODO: Add book title from the book model
        Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        
        const SizedBox(height: AppValues.v6),
        
        // book subtitle
        // TODO: Add book subtitle from the book model
        Opacity(
          opacity: AppValues.v0_7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        
        const SizedBox(height: AppValues.v37),
        const BookActions(),
      ],
    );
  }
}