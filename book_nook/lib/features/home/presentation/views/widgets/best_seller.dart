import 'package:book_nook/core/utils/strings_manager.dart';
import 'package:book_nook/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      StringsManager.bestSeller,
      style: Styles.textStyle18,
    );
  }
}
