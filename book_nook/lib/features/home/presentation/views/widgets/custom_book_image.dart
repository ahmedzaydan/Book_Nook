import 'package:book_nook/core/utils/constants.dart';
import 'package:book_nook/core/utils/values_manager.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  final String image;
  const CustomBookImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppValues.v16),
      child: AspectRatio(
        aspectRatio: Constants.customBookImageAspectRatio,
        child: CachedNetworkImage(
          imageUrl: image,
          fit: BoxFit.cover,
          errorWidget: (context, url, error) {
            return const Icon(
              Icons.error,
              size: AppValues.v40,
            );
          },
        ),
      ),
    );
  }
}
