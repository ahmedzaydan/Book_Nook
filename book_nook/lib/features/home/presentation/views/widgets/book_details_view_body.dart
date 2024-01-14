import 'package:book_nook/core/utils/values_manager.dart';
import 'package:book_nook/features/home/data/models/book_kind/book_model.dart';
import 'package:book_nook/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:book_nook/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:book_nook/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  final BookModel bookModel;
  const BookDetailsViewBody({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppValues.v30),
            child: Column(
              children: [
                const BookDetailsViewAppBar(),
                BookDetailsSection(bookModel: bookModel),
                const Expanded(child: SizedBox(height: AppValues.v50)),
                const SimilarBooksSection(),
                const SizedBox(height: AppValues.v40),
              ],
            ),
          ),
        )
      ],
    );
  }
}
