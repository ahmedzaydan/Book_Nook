import 'package:book_nook/core/utils/strings_manager.dart';
import 'package:book_nook/core/utils/styles.dart';
import 'package:book_nook/core/utils/values_manager.dart';
import 'package:book_nook/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // similar books
        Text(
          StringsManager.similarBooksTitle,
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: AppValues.v16),
        const SimilarBooksListView(),
      ],
    );
  }
}