import 'package:book_nook/core/utils/assets_manager.dart';
import 'package:book_nook/core/utils/color_manager.dart';
import 'package:book_nook/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

class BooksListViewItem extends StatelessWidget {
  const BooksListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
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
    );
  }
}
