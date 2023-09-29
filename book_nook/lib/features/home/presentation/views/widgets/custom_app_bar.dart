import 'package:book_nook/core/utils/assets_manager.dart';
import 'package:book_nook/core/utils/functions.dart';
import 'package:book_nook/core/utils/routes_manager.dart';
import 'package:book_nook/core/utils/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // logo
        Image.asset(
          AssetsManager.logo,
          height: 18,
        ),

        // search icon
        IconButton(
          onPressed: () {
            navigateTo(
              context: context,
              dest: RoutesManager.searchView,
            );
          },
          icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: AppValues.v22,
          ),
        ),
      ],
    );
  }
}
