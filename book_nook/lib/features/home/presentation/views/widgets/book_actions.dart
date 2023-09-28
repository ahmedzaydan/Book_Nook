import 'package:book_nook/core/utils/color_manager.dart';
import 'package:book_nook/core/utils/values_manager.dart';
import 'package:book_nook/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: AppValues.v10),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: '19.99 \$',
              textColor: ColorManager.black,
              backgroundColor: ColorManager.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppValues.v16),
                bottomLeft: Radius.circular(AppValues.v16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Free Preview',
              textColor: ColorManager.white,
              backgroundColor: ColorManager.orange,
              borderRadius: BorderRadius.only(
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
