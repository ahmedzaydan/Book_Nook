import 'package:book_nook/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void navigateTo({
  required BuildContext context,
  required String dest,
  int durationInSeconds = Constants.splashScreenDelayInSeconds,
}) {
  Future.delayed(
    Duration(seconds: durationInSeconds),
    () => GoRouter.of(context).push(dest),
  );
}
