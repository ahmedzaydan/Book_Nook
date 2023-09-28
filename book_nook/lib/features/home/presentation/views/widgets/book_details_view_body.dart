import 'package:book_nook/core/utils/values_manager.dart';
import 'package:book_nook/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:book_nook/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:book_nook/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppValues.v30),
            child: Column(
              children: [
                BookDetailsViewAppBar(),
                BookDetailsSection(),
                Expanded(child: SizedBox(height: AppValues.v50)),
                SimilarBooksSection(),
                SizedBox(height: AppValues.v40),
              ],
            ),
          ),
        )
      ],
    );
  }
}
