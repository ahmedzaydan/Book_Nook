import 'package:book_nook/core/utils/color_manager.dart';
import 'package:book_nook/core/utils/strings_manager.dart';
import 'package:book_nook/core/utils/styles.dart';
import 'package:book_nook/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: buildOutlinedInputBorder(),
        focusedBorder: buildOutlinedInputBorder(),
        hintText: StringsManager.search,
        hintStyle: Styles.textStyle18,
        suffixIcon: const Icon(Icons.search),
      ),
    );
  }

  OutlineInputBorder buildOutlinedInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppValues.v18),
      borderSide: const BorderSide(
        color: ColorManager.white,
        width: 2,
      ),
    );
  }
}
