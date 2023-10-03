import 'package:book_nook/core/utils/constants.dart';
import 'package:book_nook/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  final String image;
  const CustomBookImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Constants.customBookImageAspectRatio,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppValues.v10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(image),
          ),
        ),
      ),
    );
  }
}
