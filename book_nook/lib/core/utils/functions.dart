import 'package:book_nook/core/utils/constants.dart';
import 'package:book_nook/core/utils/custom_snack_bar.dart';
import 'package:book_nook/core/utils/strings_manager.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

void navigateTo({
  required BuildContext context,
  required String dest,
  int durationInSeconds = Constants.splashScreenDelayInSeconds,
  Object? extra,
}) {
  Future.delayed(
    Duration(seconds: durationInSeconds),
    () => GoRouter.of(context).push(dest, extra: extra),
  );
}

Future<void> openUrl({
  required String? url,
  required BuildContext context,
}) async {
  // TODO: ensure that it is work successfully
  if (url != null) {
    Uri uri = Uri.parse(url);
    if (!await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      customSnackBar(
        context: context,
        message: '${StringsManager.cannotLaunchUrl} $url',
      );
    }
    // await FlutterWebBrowser.openWebPage(
    //     url: url,
    //     // androidToolbarColor: Colors.blue, // Customize toolbar color (Android)
    //     // safariToolbarColor: Colors.blue, // Customize toolbar color (iOS)
    //   );
  }
}
