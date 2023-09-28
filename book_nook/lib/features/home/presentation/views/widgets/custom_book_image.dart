import 'package:book_nook/core/utils/assets_manager.dart';
import 'package:book_nook/core/utils/color_manager.dart';
import 'package:book_nook/core/utils/constants.dart';
import 'package:book_nook/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Constants.customBookImageAspectRatio,
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
