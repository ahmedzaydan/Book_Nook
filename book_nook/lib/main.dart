import 'package:book_nook/core/utils/routes_manager.dart';
import 'package:book_nook/core/utils/theme_manager.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BookNook());
}

class BookNook extends StatelessWidget {
  const BookNook({super.key});

  @override
  Widget build(BuildContext context) {
    // we used GetMaterialApp for navigation
    return MaterialApp.router(
      routerConfig: RoutesManager.router,
      debugShowCheckedModeBanner: false,
      theme: appDarkTheme,
    );
  }
}
