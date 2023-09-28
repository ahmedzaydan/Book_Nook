import 'package:book_nook/core/utils/assets_manager.dart';
import 'package:book_nook/core/utils/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppValues.v40),
      child: Row(
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
              // TODO: implement onPressed
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: AppValues.v22,
            ),
          ),
        ],
      ),
    );
  }
}
