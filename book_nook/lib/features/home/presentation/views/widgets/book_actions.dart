import 'package:book_nook/core/utils/color_manager.dart';
import 'package:book_nook/core/utils/functions.dart';
import 'package:book_nook/core/utils/strings_manager.dart';
import 'package:book_nook/core/utils/values_manager.dart';
import 'package:book_nook/core/widgets/custom_button.dart';
import 'package:book_nook/features/home/data/models/book_kind/book_model.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppValues.v10),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              text: StringsManager.free,
              textColor: ColorManager.black,
              backgroundColor: ColorManager.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppValues.v16),
                bottomLeft: Radius.circular(AppValues.v16),
              ),
            ),
          ),

          // preview button
          Expanded(
            child: CustomButton(
              onPressed: () async {
                openUrl(
                  url: bookModel.volumeInfo.previewLink!,
                  context: context,
                );
              },
              text: StringsManager.preview,
              textColor: ColorManager.white,
              backgroundColor: ColorManager.orange,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(AppValues.v16),
                bottomRight: Radius.circular(AppValues.v16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
